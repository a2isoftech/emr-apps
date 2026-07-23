enum CollectionStatusEnum {
  pendingAllocation('Pending Allocation'),
  allocated('Allocated');

  const CollectionStatusEnum(this.label);

  final String label;

  static String getLabel(String value) => switch (value) {
        'pendingallocation' => pendingAllocation.label,
        'allocated' => allocated.label,
        _ => value,
      };
}

CollectionStatusEnum collectionStatusFromJson(String? value) {
  switch (value) {
    case 'PENDING_ALLOCATION':
      return CollectionStatusEnum.pendingAllocation;
    case 'ALLOCATED':
      return CollectionStatusEnum.allocated;
    default:
      return CollectionStatusEnum.pendingAllocation;
  }
}

String collectionStatusToJson(CollectionStatusEnum? status) {
  switch (status) {
    case CollectionStatusEnum.pendingAllocation:
      return 'PENDING_ALLOCATION';
    case CollectionStatusEnum.allocated:
      return 'ALLOCATED';
    case null:
      return 'PENDING_ALLOCATION';
  }
}
