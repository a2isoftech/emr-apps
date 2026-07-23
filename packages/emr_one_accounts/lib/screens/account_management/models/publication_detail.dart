import 'package:emr_sharedtypes/emr_sharedtypes.dart';

class PublicationDetail {
  PublicationDetail({required this.priority, required this.accountPublication});

  int priority;
  final AccountPublication accountPublication;
}
