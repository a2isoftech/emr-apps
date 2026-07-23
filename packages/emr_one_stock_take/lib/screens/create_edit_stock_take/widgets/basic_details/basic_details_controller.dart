import 'package:collection/collection.dart';
import 'package:emr_core_api/graphql/schema.graphql.dart';
import 'package:emr_core_api/services/user_access_service.dart';
import 'package:emr_one_core/controllers/settings_controller.dart';
import 'package:emr_one_core/services/user_info/user_info_service.dart';
import 'package:emr_one_stock_take/models/select_option.dart';
import 'package:emr_one_stock_take/services/stocktake_service.dart';
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

class BasicDetailsController {
  BasicDetailsController({
    required this.userAccessService,
    required this.stocktakeService,
    required this.settingsController,
    this.isClone = false,
  }) {
    territoryCode = settingsController.territory;
    selectedUom = settingsController.uomName() == null
        ? Enum$Uom.MT
        : Enum$Uom.fromJson(settingsController.uomName()!);
  }

  final UserAccessService userAccessService;
  final StocktakeService stocktakeService;
  final SettingsController settingsController;

  String? stockTakeId;
  final ValueNotifier<String> nameInputValue = ValueNotifier('');
  final ValueNotifier<SelectOption?> selectedYard = ValueNotifier(null);
  final ValueNotifier<SelectOption?> selectedUser = ValueNotifier(null);
  late Enum$Uom selectedUom;
  final ValueNotifier<SelectOption?> selectedProductFamily =
      ValueNotifier(null);
  final ValueNotifier<bool> routineCheck = ValueNotifier(true);
  String originator = '';
  late final String territoryCode;
  final formKey = GlobalKey<FormState>();
  final bool isClone;
  final isLoading = signal(false);
  void init(
    String name,
    String yard,
    String conducter,
    String conductedBy,
    String? id,
    String? productFamily, {
    bool isRoutineCheck = true,
    String? originator,
  }) {
    nameInputValue.value = name;
    selectedYard.value = SelectOption(key: yard, name: '');
    selectedUser.value = SelectOption(
      key: conductedBy,
      name: conducter,
    );
    stockTakeId = id;
    selectedProductFamily.value =
        SelectOption(key: productFamily ?? '', name: productFamily ?? '');
    routineCheck.value = !isRoutineCheck;
    this.originator = originator ?? '';
  }

  void reset() {
    final yardCode = settingsController.yardCode();
    selectedYard.value = yardCode == null
        ? null
        : SelectOption(
            key: yardCode,
            name: yardCode,
          );
    nameInputValue.value = '';
    selectedUser.value = null;
    stockTakeId = null;
    selectedProductFamily.value = null;
    routineCheck.value = true;
    originator = '';
  }

  Future<List<SelectOption>> loadYards() async {
    final userInfo = UserInfoService.instance?.userInfo;
    final territory = (userInfo?.territories ?? [])
        .firstWhereOrNull((t) => t.code == territoryCode);
    final current =
        territory?.depots!.map((e) => e.yardCode).toSet().toList() ?? [];

    final yards = (userInfo?.yards ?? [])
        .where((e) => current.contains(e.yardCode))
        .toSet()
        .toList();

    final options =
        yards.map((y) => SelectOption(key: y.yardCode, name: y.name)).toList();
    return options;
  }

  Future<List<SelectOption>> loadUsers(
    String? query,
    String territoryCode,
  ) async {
    final users = await userAccessService.searchUsers(query: query);

    return users.data?.$1
            .where(
              (u) =>
                  u.territories?.any((t) => t.code == territoryCode) ?? false,
            )
            .map(
              (u) => SelectOption(
                key: u.id,
                name: '${u.firstName} ${u.lastName}',
                subTitle: u.emailAddress,
              ),
            )
            .toList() ??
        [];
  }

  Future<List<SelectOption>> loadProductFamilies(String query) async {
    final productFamilies =
        await stocktakeService.searchProductFamilies(query: query);

    return productFamilies
        .map(
          (u) => SelectOption(
            key: u,
            name: u,
            subTitle: u,
          ),
        )
        .toList();
  }
}
