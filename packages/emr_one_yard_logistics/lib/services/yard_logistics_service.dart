import 'dart:convert';
import 'dart:io';

import 'package:async/async.dart';
import 'package:emr_one_core/controllers/settings_controller.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/models/media_file.dart';
import 'package:emr_one_core/models/scales/weight_taken.dart';
import 'package:emr_one_yard_logistics/models/models.dart';
import 'package:emr_one_yard_logistics/services/yl_photostorage.dart';
import 'package:emr_one_yard_logistics/yl_api_response.dart';
import 'package:emr_sharedtypes/constants.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

class YardLogisticsService {
  YardLogisticsService({
    required this.httpClient,
    required this.apiUrl,
    required this.ticketsApiUrl,
    required this.defaultYardCode,
    required this.mediaApiUrl,
    required this.defaultTerritoryCode,
    required this.settingsController,
    this.cacheTtl = const Duration(minutes: 1),
  }) {
    uomForView = Uom.fromCode(settingsController.uomName() ?? Uom.mt.name);
    lotProductCompositions = AsyncMemoizer<List<LotProductCompositionMap>>();
    lotCompositionAcronyms = AsyncMemoizer<List<LotCompositionAcronym>>();
  }

  final BaseClient httpClient;
  final Duration cacheTtl;
  final String apiUrl;
  final String ticketsApiUrl;
  final String defaultYardCode;
  final String mediaApiUrl;
  final String defaultTerritoryCode;
  final SettingsController settingsController;
  late Uom uomForView;
  late AsyncMemoizer<List<LotProductCompositionMap>> lotProductCompositions;
  late AsyncMemoizer<List<LotCompositionAcronym>> lotCompositionAcronyms;

  static const String lotsPath = 'lots';
  static const String codesPath = 'codes';
  static const String palletsPath = 'pallet';
  static const String ticketsPath = 'tickets';
  static const String packingListPath = 'packinglist';
  static const String referenceDataPath = 'referenceData';
  static const defaultErrorMsg = 'Unknown error occurred. Please try again.';

  Future<YlApiResponse<List<TicketInfo>>> fetchTicketsByYardCode(
    String yardCode,
    String? query,
  ) async {
    try {
      var path = '$apiUrl/$ticketsPath/find?yardId=$yardCode&skip=0&take=50';
      if (query != null && query.isNotEmpty) {
        path += '&query=$query*';
      }
      final response = await httpClient.get(
        Uri.parse(path),
      );

      if (response.statusCode != 200) {
        return YlApiResponse(
          success: false,
          message:
              'Failed to fetch T2 tickets, status code: ${response.statusCode}',
        );
      }

      final parsed = jsonDecode(response.body) as List<dynamic>;

      final tickets = parsed
          .map((e) => TicketInfo.fromJson(e as Map<String, dynamic>))
          .toList();

      return YlApiResponse(data: tickets);
    } catch (e) {
      return YlApiResponse(success: false, message: e.toString());
    }
  }

  Future<YlApiResponse<Lot?>> fetchLotByCode(
    String code, {
    bool includeDestDetails = false,
  }) async {
    try {
      final response = await httpClient.get(
        Uri.parse(
          '$apiUrl/$lotsPath/findByCode?code=$code&includeDestDetails=$includeDestDetails',
        ),
      );

      // 404 means no lot found - this is a valid response
      if (response.statusCode == 404) {
        return YlApiResponse();
      }

      if (response.statusCode >= 300) {
        return YlApiResponse(
          success: false,
          message: 'Failed lookup, status code: ${response.statusCode}',
        );
      }

      final decoded = jsonDecode(response.body) as Map<String, dynamic>;
      final lot = Lot.fromJson(decoded['entity'] as Map<String, dynamic>)
        ..changeVector = decoded['changeVector'] as String?;

      return YlApiResponse(data: lot);
    } catch (e) {
      return YlApiResponse(success: false, message: e.toString());
    }
  }

  Future<YlApiResponse<Lot?>> validateLotAvailabilityByCode(String code) async {
    try {
      final lotResponse = await fetchLotByCode(code, includeDestDetails: true);

      if (lotResponse.success) {
        if (lotResponse.data != null) {
          switch (lotResponse.data!.state) {
            case LotState.newLot:
              return YlApiResponse(
                success: false,
                message: 'Lot does not exist in Trade2',
              );
            case LotState.createdInTrade:
              if (lotResponse.data!.palletId != null) {
                return YlApiResponse(
                  success: false,
                  message: 'Lot is on the Pallet: '
                      '${lotResponse.data!.palletDetails?.code}',
                );
              }

              if (lotResponse.data!.packingListId != null) {
                return YlApiResponse(
                  success: false,
                  message: 'Lot is on the Packing List: '
                      '${lotResponse.data!.packingListDetails?.packingListRef}',
                );
              }

              return lotResponse;
            case LotState.deleted:
              return YlApiResponse(success: false, message: 'Lot is deleted');
          }
        } else {
          return YlApiResponse(
            success: false,
            message: 'Lot not found',
          );
        }
      }

      return lotResponse;
    } catch (e) {
      return YlApiResponse(success: false, message: e.toString());
    }
  }

  Future<YlApiResponse<Pallet?>> validatePalletAvailabilityByCode(
    String code,
  ) async {
    try {
      final palletResponse = await fetchPalletByCode(
        code,
        includeLotDetails: true,
        includeDestDetails: true,
      );

      if (palletResponse.success) {
        if (palletResponse.data != null) {
          if (palletResponse.data!.state == PalletState.onPackingList) {
            return YlApiResponse(
              success: false,
              message: 'Pallet is on the PackingList: '
                  '${palletResponse.data!.packingListDetails?.packingListRef}',
            );
          } else if ((palletResponse.data!.type == PalletType.leadJointBag ||
                  palletResponse.data!.type == PalletType.polyJointBag) &&
              palletResponse.data!.state == PalletState.inProgress) {
            return YlApiResponse(
              success: false,
              message: 'Open Bags cannot be added ',
            );
          }
        } else {
          return YlApiResponse(
            success: false,
            message: 'Pallet not found',
          );
        }
      }

      return palletResponse;
    } catch (e) {
      return YlApiResponse(success: false, message: e.toString());
    }
  }

  Future<YlApiResponse<Lot?>> fetchLotById(String id) async {
    try {
      final response =
          await httpClient.get(Uri.parse('$apiUrl/$lotsPath?id=$id'));

      // 404 means no lot found - this is a valid response
      if (response.statusCode == 404) {
        return YlApiResponse();
      }

      if (response.statusCode >= 300) {
        return YlApiResponse(
          success: false,
          message: 'Failed lookup, status code: ${response.statusCode}',
        );
      }

      final decoded = jsonDecode(response.body) as Map<String, dynamic>;
      final lot = Lot.fromJson(decoded['entity'] as Map<String, dynamic>)
        ..changeVector = decoded['changeVector'] as String?;

      return YlApiResponse(data: lot);
    } catch (e) {
      return YlApiResponse(success: false, message: e.toString());
    }
  }

  Future<YlApiResponse<(CreateLotResponseCondition, Lot?)>> createLot(
    CreateLot createLot,
  ) async {
    try {
      final response = await httpClient.post(
        Uri.parse('$apiUrl/$lotsPath/create'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(createLot.toJson()),
      );

      if (response.statusCode == 201) {
        final decoded = jsonDecode(response.body) as Map<String, dynamic>;

        return YlApiResponse(
          data: (
            CreateLotResponseCondition.created,
            Lot.fromJson(decoded['entity'] as Map<String, dynamic>)
              ..changeVector = decoded['changeVector'] as String?
          ),
        );
      }

      return switch (response.statusCode) {
        409 => YlApiResponse(
            data: (CreateLotResponseCondition.codeInUse, null),
          ),
        _ => YlApiResponse(
            success: false,
            message: '${response.statusCode}: $defaultErrorMsg',
          )
      };
    } catch (e) {
      return YlApiResponse(success: false, message: e.toString());
    }
  }

  Future<YlApiResponse<(UpdateLotResponseCondition, Lot?)>> updateLot(
    Lot updatedLot,
  ) async {
    try {
      final response = await httpClient.post(
        Uri.parse('$apiUrl/$lotsPath/update'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(updatedLot.toJson()),
      );

      if (response.statusCode == 200) {
        final decoded = jsonDecode(response.body) as Map<String, dynamic>;
        return YlApiResponse(
          data: (
            UpdateLotResponseCondition.updated,
            Lot.fromJson(decoded['entity'] as Map<String, dynamic>)
              ..changeVector = decoded['changeVector'] as String?
          ),
        );
      }

      return switch (response.statusCode) {
        _ => YlApiResponse(
            success: false,
            message: '${response.statusCode}: '
                '${response.body.isNotEmpty ? response.body : defaultErrorMsg}',
          ),
      };
    } catch (e) {
      return YlApiResponse(success: false, message: e.toString());
    }
  }

  Future<YlApiResponse<Lot?>> updateLotTicket(
    String lotId,
    TicketInfo ticketInfo,
  ) async {
    try {
      final response = await httpClient.post(
        Uri.parse('$apiUrl/$lotsPath/updateTicket?lotId=$lotId'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(ticketInfo.toJson()),
      );

      if (response.statusCode == 200) {
        final decoded = jsonDecode(response.body) as Map<String, dynamic>;
        return YlApiResponse(
          data: Lot.fromJson(decoded['entity'] as Map<String, dynamic>)
            ..changeVector = decoded['changeVector'] as String?,
        );
      }

      return switch (response.statusCode) {
        _ => YlApiResponse(
            success: false,
            message: '${response.statusCode}: '
                '${response.body.isNotEmpty ? response.body : defaultErrorMsg}',
          ),
      };
    } catch (e) {
      return YlApiResponse(success: false, message: e.toString());
    }
  }

  Future<YlApiResponse<(UpdateLotResponseCondition, Lot?)>> confirmLot(
    Lot updatedLot,
  ) async {
    try {
      final response = await httpClient.post(
        Uri.parse('$apiUrl/$lotsPath/confirm'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(ConfirmLot(id: updatedLot.id).toJson()),
      );

      if (response.statusCode == 200) {
        final decoded = jsonDecode(response.body) as Map<String, dynamic>;

        return YlApiResponse(
          data: (
            UpdateLotResponseCondition.updated,
            Lot.fromJson(decoded['entity'] as Map<String, dynamic>)
              ..changeVector = decoded['changeVector'] as String?
          ),
        );
      }

      return switch (response.statusCode) {
        _ => YlApiResponse(
            success: false,
            message: '${response.statusCode}: '
                '${response.body.isEmpty ? defaultErrorMsg : response.body}',
          ),
      };
    } catch (e) {
      return YlApiResponse(success: false, message: e.toString());
    }
  }

  Future<YlApiResponse<PackingList?>> confirmPackingList(
    ConfirmPackingList confirmPackingList,
  ) async {
    try {
      final response = await httpClient.post(
        Uri.parse('$apiUrl/$packingListPath/confirm'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(confirmPackingList.toJson()),
      );
      final decoded = jsonDecode(response.body) as Map<String, dynamic>;

      if (response.statusCode == 200) {
        final packingListResponse =
            decoded['packingList'] as Map<String, dynamic>;
        return YlApiResponse(
          data: PackingList.fromJson(
            packingListResponse['entity'] as Map<String, dynamic>,
          )..changeVector = packingListResponse['changeVector'] as String?,
        );
      }

      final errorMessage = decoded['errorMessage'] as String?;

      return switch (response.statusCode) {
        _ => YlApiResponse(
            success: false,
            message: '${response.statusCode}: $errorMessage',
          ),
      };
    } catch (e) {
      return YlApiResponse(success: false, message: e.toString());
    }
  }

  Future<YlApiResponse<PackingList?>> fetchPackingListByRef(
    int packingListRef,
  ) async {
    try {
      final response = await httpClient.get(
        Uri.parse(
          '$apiUrl/$packingListPath/$packingListRef',
        ),
      );

      // 404 means no lot found - this is a valid response
      if (response.statusCode == 404) {
        return YlApiResponse();
      }

      if (response.statusCode >= 300) {
        return YlApiResponse(
          success: false,
          message: 'Failed lookup, status code: ${response.statusCode}',
        );
      }

      final decoded = jsonDecode(response.body) as Map<String, dynamic>;
      final packingList =
          PackingList.fromJson(decoded['entity'] as Map<String, dynamic>)
            ..changeVector = decoded['changeVector'] as String?;

      return YlApiResponse(data: packingList);
    } catch (e) {
      return YlApiResponse(success: false, message: e.toString());
    }
  }

  Future<YlApiResponse<Pallet?>> fetchPalletByCode(
    String code, {
    bool includeLotDetails = false,
    bool includeDestDetails = false,
  }) async {
    try {
      final response = await httpClient.get(
        Uri.parse(
          '$apiUrl/$palletsPath/findByCode?code=$code&includeLotDetails=$includeLotDetails&includeDestDetails=$includeDestDetails',
        ),
      );

      // 404 means no lot found - this is a valid response
      if (response.statusCode == 404) {
        return YlApiResponse();
      }

      if (response.statusCode >= 300) {
        return YlApiResponse(
          success: false,
          message: 'Failed lookup, status code: ${response.statusCode}',
        );
      }

      final decoded = jsonDecode(response.body) as Map<String, dynamic>;
      final pallet = Pallet.fromJson(decoded['entity'] as Map<String, dynamic>)
        ..changeVector = decoded['changeVector'] as String?;

      return YlApiResponse(data: pallet);
    } catch (e) {
      return YlApiResponse(success: false, message: e.toString());
    }
  }

  Future<YlApiResponse<List<Pallet>?>> fetchPalletList(
    PalletListing palletListing,
  ) async {
    try {
      final response = await httpClient.post(
        Uri.parse('$apiUrl/$palletsPath/list'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(palletListing.toJson()),
      );

      // 404 means no lot found - this is a valid response
      if (response.statusCode == 404) {
        return YlApiResponse();
      }

      if (response.statusCode >= 300) {
        return YlApiResponse(
          success: false,
          message: 'Failed lookup, status code: ${response.statusCode}',
        );
      }

      final parsedResponse = jsonDecode(response.body) as List<dynamic>;

      final palletList = parsedResponse
          .map((e) => Pallet.fromJson(e as Map<String, dynamic>))
          .toList();

      return YlApiResponse(data: palletList);
    } catch (e) {
      return YlApiResponse(success: false, message: e.toString());
    }
  }

  Future<YlApiResponse<(CreatePalletResponseCondition, Pallet?)>> createPallet(
    CreatePallet createPallet,
  ) async {
    try {
      final response = await httpClient.post(
        Uri.parse('$apiUrl/$palletsPath/create'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(createPallet.toJson()),
      );

      if (response.statusCode == 201) {
        final decoded = jsonDecode(response.body) as Map<String, dynamic>;

        return YlApiResponse(
          data: (
            CreatePalletResponseCondition.created,
            Pallet.fromJson(decoded['entity'] as Map<String, dynamic>)
              ..changeVector = decoded['changeVector'] as String?
          ),
        );
      }

      return switch (response.statusCode) {
        409 => YlApiResponse(
            data: (CreatePalletResponseCondition.codeInUse, null),
          ),
        _ => YlApiResponse(
            success: false,
            message: '${response.statusCode}: $defaultErrorMsg',
          ),
      };
    } catch (e) {
      return YlApiResponse(success: false, message: e.toString());
    }
  }

  Future<YlApiResponse<List<PackingList>>> fetchAllPackingListByState(
    int? packingListState,
  ) async {
    try {
      final response = await httpClient.get(
        Uri.parse(
          '$apiUrl/$packingListPath${packingListState != null ? '?packingListState=$packingListState}' : ''}',
        ),
      );

      // 404 means no lot found - this is a valid response
      if (response.statusCode == 404) {
        return YlApiResponse();
      }

      if (response.statusCode >= 300) {
        return YlApiResponse(
          success: false,
          message: 'Failed lookup, status code: ${response.statusCode}',
        );
      }

      final parsedResponse = jsonDecode(response.body) as Map<String, dynamic>;

      // final count = parsedResponse['count'] as int;
      final items = parsedResponse['data'] as List<dynamic>;

      final packingList = items
          .map((e) => PackingList.fromJson(e as Map<String, dynamic>))
          .toList();

      return YlApiResponse(data: packingList);
    } catch (e) {
      return YlApiResponse(success: false, message: e.toString());
    }
  }

  Future<YlApiResponse<PackingList?>> createPackingList(
    CreatePackingList createPackinglist,
  ) async {
    try {
      final response = await httpClient.post(
        Uri.parse('$apiUrl/$packingListPath/create'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(createPackinglist.toJson()),
      );

      if (response.statusCode == 201) {
        final decoded = jsonDecode(response.body) as Map<String, dynamic>;

        return YlApiResponse(
          data: (PackingList.fromJson(decoded['entity'] as Map<String, dynamic>)
            ..changeVector = decoded['changeVector'] as String?),
        );
      }

      return switch (response.statusCode) {
        409 => YlApiResponse(
            success: false,
          ),
        _ => YlApiResponse(
            success: false,
            message: '${response.statusCode}: $defaultErrorMsg',
          ),
      };
    } catch (e) {
      return YlApiResponse(success: false, message: e.toString());
    }
  }

  Future<YlApiResponse<(UpdatePalletResponseCondition, Pallet?)>> updatePallet(
    Pallet updatedPallet,
  ) async {
    try {
      final response = await httpClient.post(
        Uri.parse('$apiUrl/$palletsPath/update'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(updatedPallet.toJson()),
      );

      if (response.statusCode == 200) {
        final decoded = jsonDecode(response.body) as Map<String, dynamic>;
        return YlApiResponse(
          data: (
            UpdatePalletResponseCondition.updated,
            Pallet.fromJson(decoded['entity'] as Map<String, dynamic>)
              ..changeVector = decoded['changeVector'] as String?
          ),
        );
      }

      return switch (response.statusCode) {
        _ => YlApiResponse(
            success: false,
            message: '${response.statusCode}: $defaultErrorMsg',
          ),
      };
    } catch (e) {
      return YlApiResponse(success: false, message: e.toString());
    }
  }

  Future<YlApiResponse<Pallet?>> removeLotFromPallet(
    RemoveLotFromPallet removeLotFromPallet,
  ) async {
    try {
      final response = await httpClient.delete(
        Uri.parse('$apiUrl/$palletsPath/removeLotFromPallet'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(removeLotFromPallet.toJson()),
      );

      if (response.statusCode == 200) {
        final decoded = jsonDecode(response.body) as Map<String, dynamic>;
        return YlApiResponse(
          data: (Pallet.fromJson(decoded['entity'] as Map<String, dynamic>)
            ..changeVector = decoded['changeVector'] as String?),
        );
      }

      return switch (response.statusCode) {
        _ => YlApiResponse(
            success: false,
            message: '${response.statusCode}: $defaultErrorMsg',
          ),
      };
    } catch (e) {
      return YlApiResponse(success: false, message: e.toString());
    }
  }

  Future<YlApiResponse<PackingList?>> removeItemsFromPackingList(
    RemoveItemsFromPackingList removeItemsFromPackingList,
  ) async {
    try {
      final response = await httpClient.delete(
        Uri.parse('$apiUrl/$packingListPath/removeItems'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(removeItemsFromPackingList.toJson()),
      );

      if (response.statusCode == 200) {
        final decoded = jsonDecode(response.body) as Map<String, dynamic>;
        return YlApiResponse(
          data: (PackingList.fromJson(decoded['entity'] as Map<String, dynamic>)
            ..changeVector = decoded['changeVector'] as String?),
        );
      }

      return switch (response.statusCode) {
        _ => YlApiResponse(
            success: false,
            message: '${response.statusCode}: $defaultErrorMsg',
          ),
      };
    } catch (e) {
      return YlApiResponse(success: false, message: e.toString());
    }
  }

  Future<YlApiResponse<PackingList>> updatePackingList(
    PackingList updatePackingList,
  ) async {
    try {
      final response = await httpClient.post(
        Uri.parse('$apiUrl/$packingListPath/update'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(updatePackingList.toJson()),
      );

      if (response.statusCode == 200) {
        final decoded = jsonDecode(response.body) as Map<String, dynamic>;
        return YlApiResponse(
          data: (PackingList.fromJson(decoded['entity'] as Map<String, dynamic>)
            ..changeVector = decoded['changeVector'] as String?),
        );
      }

      return switch (response.statusCode) {
        _ => YlApiResponse(
            success: false,
            message: '${response.statusCode}: $defaultErrorMsg',
          ),
      };
    } catch (e) {
      return YlApiResponse(success: false, message: e.toString());
    }
  }

  Future<YlApiResponse<bool>> checkCodeAvailable(String code) async {
    try {
      final response = await httpClient
          .get(Uri.parse('$apiUrl/$codesPath/codeAvailable?code=$code'));

      return switch (response.statusCode) {
        200 => YlApiResponse(data: true),
        409 => YlApiResponse(data: false),
        _ => YlApiResponse(
            success: false,
            message: '${response.statusCode}: $defaultErrorMsg',
          ),
      };
    } catch (e) {
      return YlApiResponse(success: false, message: e.toString());
    }
  }

  Future<List<String>> copyPhotos(AddedMedia photos) async {
    final remotes = <String>[];

    for (final change in photos.media) {
      final file = await YlPhotoStorage.copyFile(
        File(change.media.path),
        change.media.name,
      );

      final mediaApiPath = YlPhotoStorage.storageFileNameToCloud(
        '$mediaApiUrl/i/com.emrgroup.yardlogistics',
        file.path,
      );

      remotes.add(mediaApiPath);

      await EmrBackgroundService.instance.upload(change.media, mediaApiPath);
    }

    return remotes;
  }

  Future<YlApiResponse<(String?, List<ScaleInfo>)>> fetchScaleInfosByYardId(
    String yardId,
  ) async {
    final prefs = await SharedPreferences.getInstance();
    final defaultScaleAlias = prefs.getString('defaultScaleAlias');

    try {
      final response = await httpClient.get(
        Uri.parse('$apiUrl/ScaleInfo/byYard?yardId=$yardId'),
      );

      if (response.statusCode != 200) {
        return YlApiResponse(
          success: false,
          message: 'Failed to fetch scale infos, '
              'status code: ${response.statusCode}',
        );
      }

      final items = jsonDecode(response.body) as List<dynamic>;

      final scaleInfos = items
          .map((e) => ScaleInfo.fromJson(e as Map<String, dynamic>))
          .toList();

      return YlApiResponse(data: (defaultScaleAlias, scaleInfos));
    } catch (e) {
      return YlApiResponse(success: false, message: e.toString());
    }
  }

  Future<YlApiResponse<(int, List<Lot>)>> listLots(
    LotListing lotListing,
  ) async {
    try {
      final response = await httpClient.post(
        Uri.parse('$apiUrl/$lotsPath/list'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(lotListing.toJson()),
      );

      if (response.statusCode == 200) {
        final parsedResponse =
            jsonDecode(response.body) as Map<String, dynamic>;

        final count = parsedResponse['count'] as int;
        final items = parsedResponse['data'] as List<dynamic>;

        final lots =
            items.map((e) => Lot.fromJson(e as Map<String, dynamic>)).toList();

        return YlApiResponse(data: (count, lots));
      }

      return switch (response.statusCode) {
        409 => YlApiResponse(),
        _ => YlApiResponse(
            success: false,
            message: '${response.statusCode}: $defaultErrorMsg',
          ),
      };
    } catch (e) {
      return YlApiResponse(success: false, message: e.toString());
    }
  }

  Future<YlApiResponse<String>> exportLots(
    LotListing lotListing,
  ) async {
    try {
      final response = await httpClient.post(
        Uri.parse('$apiUrl/$lotsPath/export'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(lotListing.toJson()),
      );

      if (response.statusCode == 200) {
        return YlApiResponse(data: response.body);
      }

      return switch (response.statusCode) {
        409 => YlApiResponse(),
        _ => YlApiResponse(
            success: false,
            message: '${response.statusCode}: $defaultErrorMsg',
          ),
      };
    } catch (e) {
      return YlApiResponse(success: false, message: e.toString());
    }
  }

  Future<YlApiResponse<Map<String, FacetResponse>>> listLotFacets(
    LotListing lotListing,
  ) async {
    try {
      final response = await httpClient.post(
        Uri.parse('$apiUrl/$lotsPath/listFacets'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(lotListing.toJson()),
      );

      if (response.statusCode == 200) {
        final responseBody = jsonDecode(response.body) as Map<String, dynamic>;

        final responseData = responseBody.map(
          (k, v) =>
              MapEntry(k, FacetResponse.fromJson(v as Map<String, dynamic>)),
        );

        return YlApiResponse(data: responseData);
      }

      return switch (response.statusCode) {
        409 => YlApiResponse(),
        _ => YlApiResponse(
            success: false,
            message: '${response.statusCode}: $defaultErrorMsg',
          ),
      };
    } catch (e) {
      return YlApiResponse(success: false, message: e.toString());
    }
  }

  Future<YlApiResponse<WeightTaken>> getArchivedWeight(
    String url,
    String assetCode,
  ) async {
    try {
      var query = r'''
      {
          "operationName": "GetArchivedWeight",
          "query": "query GetArchivedWeight {  archivedWeight(scaleAssetCode: \"{assetCode}\") { scaleIdentifier value uomCode uomId errMsg isSteady isArchivedWeight serialNo isPersistentError hasSeenZero consecutiveWeighingNumber }}"          
      }
    ''';

      query = query.replaceFirst('{assetCode}', assetCode);

      final response = await httpClient.post(
        Uri.parse(url),
        headers: {'Content-Type': 'application/json'},
        body: query,
      );

      if (response.statusCode != 200) {
        throw Exception('Failed to fetch archived weight');
      }

      final json = jsonDecode(response.body) as Map<String, dynamic>;

      final parsedResponse = WeightTaken.fromJson(
        // ignore: avoid_dynamic_calls
        json['data']['archivedWeight'] as Map<String, dynamic>,
      );

      return YlApiResponse(data: parsedResponse);
    } catch (e) {
      return YlApiResponse(success: false, message: e.toString());
    }
  }

  Future<YlApiResponse<TicketWithLots>> splitTicketByLots(
    SplitTicketByLotPurityRequest splitTicket,
  ) async {
    try {
      final response = await httpClient.post(
        Uri.parse('$apiUrl/$ticketsPath/split'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(splitTicket.toJson()),
      );

      if (response.statusCode == 200) {
        final decoded = jsonDecode(response.body) as Map<String, dynamic>;
        return YlApiResponse(
          data: TicketWithLots.fromJson(
            decoded['lotByTicketResponse'] as Map<String, dynamic>,
          ),
        );
      }

      return switch (response.statusCode) {
        409 => YlApiResponse(),
        _ => YlApiResponse(
            success: false,
            message: response.body.isEmpty
                ? '${response.statusCode}: $defaultErrorMsg'
                : ((json.decode(response.body)
                        as Map<String, dynamic>)['errors'] as List<dynamic>)
                    .map((error) => error as String)
                    .toList()
                    .join('\n'),
          ),
      };
    } catch (e) {
      return YlApiResponse(success: false, message: e.toString());
    }
  }

  Future<YlApiResponse<List<LotProductCompositionMap>>>
      fetchLotCompositionMaterial({String? yardCode}) async {
    try {
      final response = await httpClient.get(
        Uri.parse(
          '$apiUrl/$referenceDataPath/compositionMaterial?yardCode=${yardCode ?? ''}',
        ),
      );

      if (response.statusCode != 200) {
        return YlApiResponse(
          success: false,
          message: 'Failed to fetch Lot Compositions, status code: '
              '${response.statusCode}',
        );
      }

      final items = jsonDecode(response.body) as List<dynamic>;

      final lotCompositions = items
          .map(
            (e) => LotProductCompositionMap.fromJson(e as Map<String, dynamic>),
          )
          .toList();

      return YlApiResponse(data: lotCompositions);
    } catch (e) {
      return YlApiResponse(success: false, message: e.toString());
    }
  }

  Future<YlApiResponse<List<LotCompositionAcronym>>>
      fetchLotCompositionAcronyms() async {
    try {
      final response = await httpClient.get(
        Uri.parse(
          '$apiUrl/$referenceDataPath/lotCompositionAcronym',
        ),
      );

      if (response.statusCode != 200) {
        return YlApiResponse(
          success: false,
          message: 'Failed to fetch Lot Compositions, status code: '
              '${response.statusCode}',
        );
      }

      final items = jsonDecode(response.body) as List<dynamic>;

      final lotCompositionAcronyms = items
          .map(
            (e) => LotCompositionAcronym.fromJson(e as Map<String, dynamic>),
          )
          .toList();

      return YlApiResponse(data: lotCompositionAcronyms);
    } catch (e) {
      return YlApiResponse(success: false, message: e.toString());
    }
  }

  Future<List<LotProductCompositionMap>> fetchLotCompositionsFromCache({
    String? yardCode,
  }) async {
    return lotProductCompositions.runOnce(() async {
      final result = await fetchLotCompositionMaterial(yardCode: yardCode);

      return result.data ?? [];
    });
  }

  Future<List<LotCompositionAcronym>> fetchLotCompositionAcronymsFromCache({
    String? yardCode,
  }) async {
    return lotCompositionAcronyms.runOnce(() async {
      final result = await fetchLotCompositionAcronyms();

      return result.data ?? [];
    });
  }

  Future<YlApiResponse<TicketWithLots>> fetchLotsByTicket(
    String ticketId,
  ) async {
    try {
      final response = await httpClient.get(
        Uri.parse(
          '$apiUrl/$lotsPath/byTicket?ticketId=$ticketId',
        ),
      );

      // 404 means no lot found - this is a valid response
      if (response.statusCode == 404) {
        return YlApiResponse();
      }

      if (response.statusCode >= 300) {
        return YlApiResponse(
          success: false,
          message: 'Failed lookup, status code: ${response.statusCode}',
        );
      }

      final decoded = jsonDecode(response.body) as Map<String, dynamic>;
      final lotsByTicket = TicketWithLots.fromJson(decoded);

      return YlApiResponse(data: lotsByTicket);
    } catch (e) {
      return YlApiResponse(success: false, message: e.toString());
    }
  }

  Future<YlApiResponse<Pallet?>> closePalletBag(
    String palletId,
  ) async {
    try {
      final response = await httpClient.post(
        Uri.parse('$apiUrl/$palletsPath/close'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(palletId),
      );
      final decoded = jsonDecode(response.body) as Map<String, dynamic>;

      if (response.statusCode == 200) {
        return YlApiResponse(
          data: Pallet.fromJson(
            decoded['entity'] as Map<String, dynamic>,
          )..changeVector = decoded['changeVector'] as String?,
        );
      }

      final errorMessage = decoded['errorMessage'] as String?;

      return switch (response.statusCode) {
        _ => YlApiResponse(
            success: false,
            message: '${response.statusCode}: $errorMessage',
          ),
      };
    } catch (e) {
      return YlApiResponse(success: false, message: e.toString());
    }
  }
}
