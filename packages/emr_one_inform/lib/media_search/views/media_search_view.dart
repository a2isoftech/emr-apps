import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/constants/constants_export.dart';
import 'package:emr_one_inform/media_search/controllers/media_search_controller.dart';
import 'package:emr_one_inform/screens/base/base_page.dart';
import 'package:flutter/material.dart';

class MediaSearchView extends BasePage<MediaSearchController> {
  MediaSearchView({super.key});

  late final TextEditingController _cmpCodeController;

  @override
  FloatingActionButton? getActionButton(BuildContext context) => null;

  @override
  PreferredSizeWidget? getAppBar(BuildContext context) => null;

  @override
  String getTitle(BuildContext context) => context.l10n.mediaLookup;

  @override
  void initState(BuildContext context) {
    _cmpCodeController = TextEditingController.fromValue(
      TextEditingValue(text: controller.cmpCode),
    );
  }

  @override
  void dispose() {
    _cmpCodeController.dispose();
    super.dispose();
  }

  @override
  Widget widgetBuilder(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: TextField(
            decoration: const InputDecoration(
              labelText: 'Company Code',
              hintText:
                  'Enter a company code to search for the Maintenance Request',
              border: UnderlineInputBorder(),
            ),
            onChanged: controller.setCompanyCode,
            controller: _cmpCodeController,
          ),
        ),
        ListTile(
          title: TextField(
            decoration: const InputDecoration(
              labelText: 'Maintenance Request / Work Order Number',
              hintText:
                  'Enter a Maintenance Request Id / Work Order number from D365 (eg: WO000000001 or WR000000001 or SI000000001)',
              border: UnderlineInputBorder(),
            ),
            onChanged: controller.setrequestId,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: ElevatedButton(
            onPressed: controller.searchDisabled
                ? null
                : () => context.pushNamed(
                      FormsRoutingName.mediaItems,
                      params: {
                        'workRequestId': controller.requestId,
                        'cmpCode': controller.cmpCode,
                      },
                    ),
            child: const Text('Search'),
          ),
        ),
      ],
    );
  }
}
