import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_yard_logistics/services/yard_logistics_service.dart';

class LotsViewController {
  LotsViewController({required this.ylService});

  final YardLogisticsService ylService;

  List<Input$TicketSortInput> order = [];
}
