import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_app/models/enums.dart';
import 'package:emr_one_yard_app/services/load_out_service.dart';

class LoadOutSearchController {
  LoadOutSearchController({
    required LoadOutService loadOutService,
    required this.userInfoService,
  }) : _loadOutService = loadOutService;

  final LoadOutService _loadOutService;
  final UserInfoService userInfoService;

  Future<List<Query$SearchLoadOuts$loadOuts$nodes>> getLoadOuts(
    LoadOutMode mode, {
    int pageCount = 20,
  }) async {
    try {
      final yard = userInfoService.userInfo.defaultYard;
      final input = switch (mode) {
        LoadOutMode.all => Input$SearchLoadOutsInput(yardIds: [yard]),
        LoadOutMode.assignedToMe => Input$SearchLoadOutsInput(
          userId: userInfoService.userInfo.id,
          yardIds: [yard],
        ),
      };

      final data = await _loadOutService.searchLoadOuts(input);

      return data ?? [];
    } on Exception catch (ex, trace) {
      EmrLogger.error(
        'Error during Load Outs load',
        source: 'LoadOutsController.getLoadOuts()',
        error: ex,
        stackTrace: trace,
      );
      return [];
    }
  }
}
