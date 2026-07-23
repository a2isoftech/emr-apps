import 'package:collection/collection.dart';
import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_accounts/emr_one_accounts.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class ManageResponsibilitiesController extends AccountManagementBaseController {
  ManageResponsibilitiesController({required this.coreApiService});

  static const String kManagerAlreadyExistsInServiceType =
      'MANAGER_ALREADY_EXISTS_IN_SERVICE_TYPE';

  Account? account;

  AccountManager? accountManager;

  final CoreApiService coreApiService;

  static const int defaultPriority = 0;

  final ValueNotifier<bool> canAddManager = ValueNotifier(false);

  EditResponsibilitiesFormData? _formData;

  ValueNotifier<String> showErrorMessage = ValueNotifier('');

  EditResponsibilitiesFormData get data {
    _formData ??= EditResponsibilitiesFormData(_nextPriority);
    return _formData!;
  }

  int get _nextPriority {
    final managers = allManagers;
    if (managers.isEmpty) return 0;
    final maxPriority = managers
        .map((m) => m.priority ?? 0)
        .reduce((a, b) => a > b ? a : b);
    return maxPriority + 1;
  }

  @override
  void reset() {
    processing = false;
    _formData = null;
    notifyListeners();
  }

  Future<(Account?, String?, String?)> getAccountInfo(
    String accountCode,
  ) async {
    return coreApiService.accountService.getAccountInfo(accountCode);
  }

  @override
  void setAccount(Account? a) {
    account = a;
  }

  /// Returns a single unified list of all managers with the primary manager
  /// at index 0. Prefers the managers list entry (has real serviceType) over
  /// the primaryManager object (whose serviceType is hardcoded to 'None').
  List<AccountManager> get allManagers {
    final primary = account?.primaryManager;
    final others = [...?account?.managers];

    // Sort by priority so the list reflects saved order
    others.sort((a, b) => (a.priority ?? 0).compareTo(b.priority ?? 0));

    if (primary != null) {
      bool matchesPrimary(AccountManager m) {
        if (primary.userId.isNotEmpty) return m.userId == primary.userId;
        return m.name == primary.name &&
            m.accountManagerTypeId == primary.accountManagerTypeId;
      }

      final existsInList = others.any(matchesPrimary);
      if (existsInList) {
        final existing = others.firstWhere(matchesPrimary);
        others
          ..remove(existing)
          ..insert(0, existing);
      } else {
        others.insert(0, primary);
      }
    }
    return others;
  }

  bool isPrimaryManager(AccountManager manager) {
    final primary = account?.primaryManager;
    if (primary == null) return false;
    if (primary.userId.isNotEmpty && manager.userId.isNotEmpty) {
      return primary.userId == manager.userId &&
      primary.priority == manager.priority;
    }
    return primary.name == manager.name &&
        primary.accountManagerTypeId == manager.accountManagerTypeId &&
        primary.priority == manager.priority;
  }

  void setAccountManager(
    String? userId,
    String? serviceType, {
    int? displayPriority,
    AccountManager? manager,
  }) {
    final serviceTypeAsEnum = AccountService.mapToAccountManagerType(
      serviceType ?? '',
    );

    final all = allManagers;

    if (manager != null) {
      // Use the exact manager passed by the caller – avoids the ambiguous
      // lookup that can pick the wrong entry when multiple managers share
      // the same userId.
      accountManager = manager;
    } else {
      accountManager = all.firstWhereOrNull(
        (c) =>
            c.userId == userId &&
            AccountService.mapToAccountManagerType(c.accountManagerTypeId) ==
                serviceTypeAsEnum,
      );

      // Fallback: match by userId only (primary manager may have 'None' type)
      accountManager ??= all.firstWhereOrNull((m) => m.userId == userId);
    }

    final resolvedServiceType = accountManager != null
        ? AccountService.mapToAccountManagerType(
            accountManager!.accountManagerTypeId,
          )
        : serviceTypeAsEnum;

    final isPrimary = accountManager != null &&
    isPrimaryManager(accountManager!);

    _formData = EditResponsibilitiesFormData(
      displayPriority ?? accountManager?.priority ?? _nextPriority,
    );
    _formData?.originalManagerId = accountManager?.userId ?? userId;
    _formData?.originalServiceType =
        accountManager?.accountManagerTypeId ?? serviceType;
    _formData?.newManager.value = (
      key: accountManager?.userId ?? '',
      value: accountManager?.name ?? '',
    );
    _formData?.serviceType.value =
        EnumExtensions.getEnumValueNotifier<Enum$ServiceType>(
          resolvedServiceType.toString().split('.').last,
          Enum$ServiceType.values,
        ).value;
    _formData?.isPrimaryManager.value = isPrimary;

    _formData!.managers.addAll(
      all.map(
        (m) => UpdateManagerInput(
          id: m.userId,
          serviceType: m.accountManagerTypeId,
          priority: defaultPriority,
          name: m.name,
        ),
      ),
    );
  }

  bool _addManager() {
    final all = allManagers;
    final isFirstManager = all.isEmpty;

    final newManager = AccountManager(
      data.newManager.value.key,
      data.serviceType.value!.value,
      0,
      data.newManager.value.value,
      null,
      null,
      '',
      [],
      active: true,
      priority: data.priority.value ?? _nextPriority,
    );

    final exists = all.any(
      (m) =>
          m.userId == data.newManager.value.key &&
          AccountService.mapToAccountManagerType(m.accountManagerTypeId) ==
              data.serviceType.value!.key,
    );

    if (exists) return false;

    if (isFirstManager) {
      account!.primaryManager = newManager;
    }

    account!.managers ??= [];
    account!.managers!.add(newManager);

    notifyListeners();
    return true;
  }

  @override
  void dispose() {
    // Clean up listeners
    isFormValid.dispose();
    canAddManager.dispose();
    super.dispose();
  }

  Future<List<KeyValuePair<String, String>>> managers(String query) async {
    final results = await coreApiService.accountService
        .getListValuesForAccountManagers(query);
    return results
        .map((v) => (key: v.value ?? '', value: v.text ?? ''))
        .toList();
  }

  Future<List<KeyValuePair<Enum$ServiceType, String>>> serviceTypes(
    String _,
  ) async {
    return Enum$ServiceType.values
        .where(
          (v) => v != Enum$ServiceType.$unknown && v != Enum$ServiceType.NONE,
        )
        .map((v) => (key: v, value: v.toJson()))
        .toList();
  }

  Future<List<KeyValuePair<Enum$ManagementType, String>>> managementTypes(
    String _,
  ) async {
    return Enum$ManagementType.values
        .map((v) => (key: v, value: v.toString().split('.').last))
        .toList();
  }

  @override
  Future<(bool success, String error)> delete() async {
    if (account?.code?.isEmpty ?? true) {
      toggleProcessing();
      return (false, 'Account not found');
    }

    final managerInput = Input$DeleteAccountManagerInput(
      accountId: account?.id ?? '',
      serviceType: data.serviceType.value!.key,
      managerId: data.newManager.value.key,
    );
    //Call the service
    final (success, error) = await coreApiService.accountService
        .deleteAccountManager(managerInput);
    accountManager = null;
    reset();
    toggleProcessing();

    return (success, error ?? '');
  }

  @override
  Future<(bool, String)> add() async {
    if (account?.code?.isEmpty ?? true) {
      toggleProcessing();
      return (false, 'Account not found');
    }

    // Check for duplicate manager in same service type before calling API
    final existingManagers = allManagers;
    final selectedServiceType = data.serviceType.value!.key;
    final duplicateExists = existingManagers.any(
      (m) =>
          m.userId == data.newManager.value.key &&
          AccountService.mapToAccountManagerType(m.accountManagerTypeId) ==
              selectedServiceType,
    );
    if (duplicateExists) {
      toggleProcessing();
      return (false, kManagerAlreadyExistsInServiceType);
    }

    final isFirstManager = existingManagers.isEmpty;

    final managerInput = Input$CreateAccountManagerInput(
      accountId: account?.id ?? '',
      serviceType: data.serviceType.value!.key,
      managementType: data.managementType.value.key,
      managerId: data.newManager.value.key,
      managerName: data.newManager.value.value,
      isPrimaryManager: isFirstManager,
      priority: data.priority.value ?? _nextPriority,
    );
    //Call the service
    final (success, error) = await coreApiService.accountService
        .addAccoutManagers(managerInput);

    if (success) {
      _addManager();
      reset();
    }
    toggleProcessing();

    return (success, error ?? '');
  }

  @override
  Future<(bool, String)> update() async {
    if (account?.code?.isEmpty ?? true) {
      toggleProcessing();
      return (false, 'Account not found');
    }

    if ((data.originalManagerId == null || data.originalManagerId!.isEmpty) &&
        data.originalServiceType == null) {
      return (false, 'Manager not found');
    }

    final oldManagerId = (data.originalManagerId?.isNotEmpty ?? false)
        ? data.originalManagerId!
        : accountManager?.name ?? '';
    final oldServiceType = data.originalServiceType ?? '';

    final newManagerId = data.newManager.value.key;
    final newManagerName = data.newManager.value.value;
    final isPrimary = data.isPrimaryManager.value;

    final oldServiceTypeEnum = AccountService.mapToAccountManagerType(
      oldServiceType,
    );
    final newServiceTypeEnum = data.serviceType.value!.key;

    if (oldServiceTypeEnum == newServiceTypeEnum &&
        oldManagerId == newManagerId) {
      return (true, '');
    }

    // Block the update when the target manager + service type combination
    // already exists (e.g. same user is already assigned under the new
    // service type via a different entry).
    final duplicateExists = allManagers.any((m) {
      final mServiceType =
          AccountService.mapToAccountManagerType(m.accountManagerTypeId);
      final isSameManager = m.userId.isNotEmpty
          ? m.userId == newManagerId
          : m.name == newManagerName;
      final isOldEntry = m.userId.isNotEmpty
          ? m.userId == oldManagerId &&
                mServiceType == oldServiceTypeEnum
          : m.name == accountManager?.name &&
                mServiceType == oldServiceTypeEnum;
      if (isOldEntry) return false;
      if (!isSameManager) return false;
      return mServiceType == newServiceTypeEnum;
    });
    if (duplicateExists) {
      toggleProcessing();
      return (false, kManagerAlreadyExistsInServiceType);
    }

    late final bool success;
    late final String? error;

    final managerInput = Input$UpdateAccountManagerInput(
      accountId: account?.id ?? '',
      oldManagerId: oldManagerId,
      newManagerId: newManagerId,
      isPrimaryManager: isPrimary,
      newManagerName: newManagerName,
      fromServiceType: oldServiceTypeEnum,
      toServiceType: newServiceTypeEnum,
    );
    (success, error) = await coreApiService.accountService.updateAccoutManagers(
      managerInput,
    );
    reset();
    toggleProcessing();

    return (success, error ?? '');
  }

  void refreshScreen() {
    notifyListeners();
  }

  /// Promotes the manager at [newPrimaryIndex] in [managers] to primary.
  /// Updates priorities for all managers based on their new positions.
  Future<(bool, String)> savePrimaryManager(
    List<AccountManager> managers,
    int newPrimaryIndex,
  ) async {
    if (account?.id?.isEmpty ?? true) {
      return (false, 'Account not found');
    }

    final managerEntries = <Input$ManagerPriorityEntryInput>[];
    for (var i = 0; i < managers.length; i++) {
      final manager = managers[i];
      managerEntries.add(
        Input$ManagerPriorityEntryInput(
          managerId: manager.userId,
          managerName: manager.name ?? '',
          managementType: manager.managementType == 'POOL'
              ? Enum$ManagementType.POOL
              : Enum$ManagementType.USER,
          serviceType: AccountService.mapToAccountManagerType(
            manager.accountManagerTypeId,
          ),
          priority: i,
        ),
      );
    }

    final input = Input$ReorderAccountManagersInput(
      accountId: account!.id!,
      managers: managerEntries,
    );

    final (success, error) = await coreApiService.accountService
        .reorderAccountManagers(input);

    if (success) {
      account!.primaryManager = managers[newPrimaryIndex];
    }
    return (success, error ?? '');
  }
}
