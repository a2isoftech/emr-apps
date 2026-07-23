import 'package:emr_one_door_access/emr_one_door_access.dart';

class ManageSiteController extends DoorAccessBaseController {
  ManageSiteController({required this.doorAccessService});

  final DoorAccessService doorAccessService;

  EditSiteFormData? _formData;

  Site? site;

  EditSiteFormData get data => _formData ?? EditSiteFormData();

  @override
  void reset() {
    _formData = null;
    processing = false;
  }

  void init(Site? site) {
    this.site = site;
    _formData = EditSiteFormData(name: site?.name, yardCode: site?.yardCode);
  }

  @override
  Future<(bool, String)> update() async {
    if ((data.name.value ?? '').isEmpty ||
        (data.yardCode.value ?? '').isEmpty) {
      toggleProcessing();
      return (false, 'Invalid name or yard code');
    }

    StaticData.ignoreCache = true;
    final allSites = await doorAccessService.sitesService.getAllSites();

    if (allSites.any(
      (s) =>
          s.name.toLowerCase() == data.name.value?.toLowerCase() &&
          (site == null || s.id != site?.id),
    )) {
      toggleProcessing();
      return (false, 'Site with name (${data.name.value}) already exists.');
    }

    final response = await doorAccessService.sitesService.upsertSite(
      id: site?.id,
      name: data.name.value!,
      yardCode: data.yardCode.value!,
    );
    if (response.id.isNotEmpty) {
      return (true, '');
    }
    return (false, 'Site could not be saved.');
  }
}
