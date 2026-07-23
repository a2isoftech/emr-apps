import 'package:equatable/equatable.dart';

class GplDataSourceGroup extends Equatable {
  const GplDataSourceGroup(
    this.partyAccountNo,
    this.partyName,
  );
  final String partyAccountNo;
  final String partyName;

  @override
  List<Object?> get props => [partyAccountNo, partyName];
}
