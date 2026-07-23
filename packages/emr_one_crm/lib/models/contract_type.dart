class ContractType {
  const ContractType(
    this.id,
    this.name,
  );
  factory ContractType.sales() => const ContractType(2, 'Sales');

  factory ContractType.purchase() => const ContractType(1, 'Purchase');
  final int id;
  final String name;
}
