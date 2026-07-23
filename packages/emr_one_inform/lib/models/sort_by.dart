import 'package:equatable/equatable.dart';

class SortBy extends Equatable {
  const SortBy({required this.fieldName, required this.sortDirection});
  final String fieldName;
  final SortDirection sortDirection;

  @override
  List<dynamic> get props => [fieldName, sortDirection];
}

enum SortDirection { ascending, descending }
