import 'package:equatable/equatable.dart';

class GplQuerySearchFilters extends Equatable {
  const GplQuerySearchFilters({
    required this.managedBuyerId,
    required this.partyAccountNos,
    required this.publicationId,
    required this.gradeTypes,
    required this.gradeCodes,
    required this.yardCode,
    required this.tag,
    required this.expirationDate,
  });

  const GplQuerySearchFilters.empty()
      : managedBuyerId = '',
        publicationId = null,
        partyAccountNos = null,
        gradeCodes = null,
        gradeTypes = null,
        yardCode = null,
        tag = null,
        expirationDate = null;

  final String? managedBuyerId;
  final int? publicationId;
  final List<String>? partyAccountNos;
  final List<String>? gradeCodes;
  final List<String>? yardCode;
  final List<String>? tag;
  final DateTime? expirationDate;
  final List<String>? gradeTypes;

  @override
  List<Object?> get props {
    return [
      managedBuyerId,
      partyAccountNos,
      gradeCodes,
      yardCode,
      tag,
      expirationDate,
    ];
  }
}
