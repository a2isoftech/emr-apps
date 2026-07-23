import 'package:emr_one_core/extensions/extensions.dart';
import 'package:emr_one_core/widgets/filter/emr_filter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('graphQlWhereValueContains for supported type', () {
    final model = EmrFilterModel<String>(
      key: 'KEY',
      name: 'NAME',
      value: 'VALUE',
    );

    final result = model.graphQlWhereValueContains()!;
    expect(result.containsKey('KEY'), true);

    final value = result['KEY'] as Map<String, dynamic>?;
    expect(value?.containsKey('contains'), true);
    expect(value?['contains'], 'VALUE');
  });

  test('graphQlWhereValueContains for unsupported type', () {
    final model = EmrFilterModel<int>(
      key: 'KEY',
      name: 'NAME',
    );

    expect(model.graphQlWhereValueContains, throwsException);
  });
}
