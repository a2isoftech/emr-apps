class AccountManager {
  const AccountManager(
    this.userId,
    this.accountManagerTypeId,
    this.tradeManagerId,
    this.name,
    this.emailAddress,
    this.defaultDepot,
    this.defaultTerritory,
    this.permissions, {
    this.active = false,
    this.priority,
    this.managementType,
  });

  factory AccountManager.empty() => const AccountManager(
        '',
        '',
        0,
        '',
        '',
        '',
        '',
        [],
      );

  final String userId;
  final String accountManagerTypeId;
  final int tradeManagerId;
  final bool active;
  final String? name;
  final String? emailAddress;
  final String? defaultDepot;
  final String defaultTerritory;
  final List<String>? permissions;
  final int? priority;
  final String? managementType;
}
