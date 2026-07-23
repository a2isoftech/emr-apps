import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_sharedtypes/models/userRoles/permission.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Permission Validation Tests', () {
    final allPermissions = <Permission>[
      Permission(
        name: 'permissions/contract/read',
        description: 'contract read permission',
      ),
      Permission(
        name: 'permissions/contracts/close/action',
        description: 'contract close permimssion',
      ),
      Permission(
        name: 'permissions/contracts/create/action',
        description: 'contract create permission',
      ),
      Permission(
        name: 'permissions/contracts/write',
        description: 'contract write permission',
      ),
      Permission(
        name: 'permissions/elv/viewt2link/action',
        description: 'elv view link permission',
      ),
      Permission(
        name: 'permissions/elv/vinscrap/action',
        description: 'elv vinscrap permission',
      ),
      Permission(
        name: 'permissions/elv/dismantling/view',
        description: 'elv dismantling view permission',
      ),
      Permission(
        name: 'permissions/elv/inspection/view',
        description: 'elv inspection view permission',
      ),
      Permission(
        name: 'permissions/elv/quotes/view',
        description: 'elv quotes view permission',
      ),
      Permission(
        name: 'permissions/pricelists/write',
        description: 'pricelists write permission',
      ),
      Permission(
        name: 'permissions/pricelists/read',
        description: 'pricelists read permission',
      ),
      Permission(
        name: 'permissions/tags/read',
        description: 'tags read permission',
      ),
      Permission(
        name: 'permissions/tags/write',
        description: 'tags write permission',
      ),
    ];

    test('Wildcard permission should be accepted', () {
      expect(
        UserAccessService.validateWildcardPermission(
          'permissions/elv/*',
          allPermissions,
        ).length,
        5,
      );

      expect(
        UserAccessService.validateWildcardPermission(
          'permissions/*/read',
          allPermissions,
        ).length,
        3,
      );

      expect(
        UserAccessService.validateWildcardPermission(
          'permissions/*',
          allPermissions,
        ).length,
        13,
      );
    });

    test(
        "Wildcard permission should not be allowed if the pattern doesn't "
        'match with existing permissions', () {
      expect(
        UserAccessService.validateWildcardPermission(
          'permissions/tags/read/*',
          allPermissions,
        ).length,
        0,
      );

      expect(
        UserAccessService.validateWildcardPermission(
          'permissions/*/reading',
          allPermissions,
        ).length,
        0,
      );

      expect(
        UserAccessService.validateWildcardPermission(
          'allpermissions/*',
          allPermissions,
        ).length,
        0,
      );
    });

    test('Permission match should be case insensitive', () {
      expect(
        UserAccessService.validateWildcardPermission(
          'permissions/ELV/*',
          allPermissions,
        ).length,
        5,
      );
    });
  });
}
