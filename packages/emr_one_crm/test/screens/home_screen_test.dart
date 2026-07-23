import 'package:emr_one_crm/emr_one_crm.dart';
import 'package:flutter_test/flutter_test.dart';

// There may be a way we can reference this without going outside this package.
import '../../../emr_one_core/test/eo_test_helper.dart';

void main() {
  eoPatrolTest(
    'home screen should show CRM tiles',
    registerRoutes: CrmRouteRegistry.register,
    test: ($, httpResponses) async {
      await $('TRADER').waitUntilVisible();

      expect($('TRADER'), findsOneWidget);
    },
  );
}
