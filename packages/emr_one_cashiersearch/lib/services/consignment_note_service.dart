import 'dart:typed_data';

import 'package:cross_file/cross_file.dart';
import 'package:emr_core_api/emr_core_api.dart' hide Ticket;
import 'package:emr_core_api/graphql/queries/ticket/get_hazardous_waste_products_by_products.graphql.dart';
import 'package:emr_one_cashiersearch/base/base_service.dart';
import 'package:emr_one_cashiersearch/models/consignment_note_request_data.dart';
import 'package:emr_one_cashiersearch/models/ticket.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/models/consignment/hazardous_waste_product.dart';
import 'package:emr_sharedtypes/models/yard.dart';

abstract class IConsignmentNoteService extends BaseService {
  IConsignmentNoteService({required super.httpClient});
  Future<ApiResponse<Ticket>> getTicketById(String ticketId);
  Future<List<HazardousWasteProduct>> getHazardousWasteProducts(
    List<String> products,
  );

  Future<ApiResponse<Yard>> getYardById(String id);
  Future<ApiResponse<bool>> createNewConsignment(
    ConsignmentNoteRequestData data,
    Uint8List signature,
  );
  Future<ApiResponse<bool>> scanConsignmentNote(
    String ticketId,
    String consignmentNoteCode,
    Uint8List consignmentImage,
  );
  Future<ApiResponse<String>> generateNewConsignmentNumber(String partyName);
}

class ConsignmentNoteService extends IConsignmentNoteService {
  ConsignmentNoteService({required super.httpClient});

  @override
  Future<ApiResponse<Yard>> getYardById(String id) async {
    try {
      final results = await documentNodeQueryGetYardById.execute(
        httpClient,
        Query$GetYardById.fromJson,
        variables: Variables$Query$GetYardById(yardId: 'yards/$id'),
      );
      if (results.hasErrors()) {
        return ApiResponse(
          success: false,
          message: results.errors?.map((x) => x.message).firstOrNull ?? '',
        );
      }
      return ApiResponse(
        data: Yard.fromJson(results.data!.yard.toJson()),
      );
    } on Exception catch (ex) {
      return ApiResponse(
        success: false,
        message: ex.toString(),
      );
    }
  }

  @override
  Future<ApiResponse<Ticket>> getTicketById(String ticketId) async {
    try {
      final response = await documentNodeQuerygetTicketById.execute(
        httpClient,
        Query$getTicketById.fromJson,
        variables: Variables$Query$getTicketById(id: ticketId),
      );

      if (response.hasErrors()) {
        return ApiResponse(
          success: false,
          message: response.errors?.map((x) => x.message).join(',') ?? '',
        );
      }

      if (response.data?.ticket == null) {
        return ApiResponse(success: false, message: 'Ticket not found');
      }
      return ApiResponse(data: Ticket.fromJson(response.data!.ticket.toJson()));
    } on Exception catch (ex) {
      return ApiResponse(
        success: false,
        message: ex.toString(),
      );
    }
  }

  @override
  Future<List<HazardousWasteProduct>> getHazardousWasteProducts(
    List<String> products,
  ) async {
    final response =
        await documentNodeQueryGetHazardousWasteProductsByProducts.execute(
      httpClient,
      Query$GetHazardousWasteProductsByProducts.fromJson,
      variables: Variables$Query$GetHazardousWasteProductsByProducts(
        products: products,
      ),
    );

    if (response.hasErrors()) {
      return [];
    }
    return response.data?.hazardousWasteProducts
            .map((x) => HazardousWasteProduct.fromJson(x.toJson()))
            .toList() ??
        [];
  }

  @override
  Future<ApiResponse<bool>> createNewConsignment(
    ConsignmentNoteRequestData data,
    Uint8List signature,
  ) async {
    try {
      final response =
          await documentNodeMutationcreateNewConsignmentNote.execute(
        httpClient,
        Mutation$createNewConsignmentNote.fromJson,
        variables: Variables$Mutation$createNewConsignmentNote(
          signatureImage: '',
          request:
              Input$ConsignmentNoteCreateRequestInput.fromJson(data.toJson()),
        ),
        files: {
          'signatureImage': XFile.fromData(
            signature,
            name: 'signatureImage',
            mimeType: 'application/png',
          ),
        },
      );
      if (response.hasErrors()) {
        return ApiResponse(
          success: false,
          message:
              response.errors
                  ?.map(
                    (x) =>
                        x.message != '' ? x.message : x.extensions?['message'],
                  )
                  .join(',') ??
              '',
        );
      }
      return ApiResponse(
        data: response.data?.createNewConsignmentNote,
      );
    } on Exception catch (ex) {
      return ApiResponse(
        success: false,
        message: ex.toString(),
      );
    }
  }

  @override
  Future<ApiResponse<String>> generateNewConsignmentNumber(
    String partyName,
  ) async {
    try {
      final response =
          await documentNodeMutationcreateNewConsignmentNumber.execute(
        httpClient,
        Mutation$createNewConsignmentNumber.fromJson,
        variables: Variables$Mutation$createNewConsignmentNumber(
          partyName: partyName,
        ),
      );
      if (response.hasErrors()) {
        return ApiResponse(
          success: false,
          message: response.errors?.map((x) => x.message).join(',') ?? '',
        );
      }

      if (response.data?.createNewConsignmentNumber == null) {
        return ApiResponse(
          success: false,
          message: 'Unable to generate consignment number',
        );
      }

      return ApiResponse(
        data: response.data!.createNewConsignmentNumber,
      );
    } on Exception catch (ex) {
      return ApiResponse(
        success: false,
        message: ex.toString(),
      );
    }
  }

  @override
  Future<ApiResponse<bool>> scanConsignmentNote(
    String ticketId,
    String consignmentNoteCode,
    Uint8List consignmentImage,
  ) async {
    try {
      final response = await documentNodeMutationscanConsignmentNote.execute(
        httpClient,
        Mutation$scanConsignmentNote.fromJson,
        variables: Variables$Mutation$scanConsignmentNote(
          consignmentImage: '',
          request: Input$ScanConsignmentNoteRequestInput(
            ticketId: ticketId,
            consignmentNoteCode: consignmentNoteCode,
          ),
        ),
        files: {
          'consignmentImage': XFile.fromData(
            consignmentImage,
            name: 'consignmentImage',
            mimeType: 'application/png',
          ),
        },
      );
      if (response.hasErrors()) {
        return ApiResponse(
          success: false,
          message:
              response.errors?.map((x) => x.extensions?['message']).join(',') ??
                  '',
        );
      }
      return ApiResponse(
        data: response.data?.scanConsignmentNote,
      );
    } on Exception catch (ex) {
      return ApiResponse(
        success: false,
        message: ex.toString(),
      );
    }
  }
}
