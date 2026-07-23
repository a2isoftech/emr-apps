import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/screens/example_editable_grid/editable_fruit.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';

class EditableFruitDataSource extends EmrQueryDataSource<EditableFruit> {
  @override
  bool get autoPopulate => true;

  @override
  bool get supportsPaging => false;

  @override
  Future<void> refresh() async {
    loading.value = true;

    final results = <EditableFruit>[
      EditableFruit(
        id: 'editableFruit/1',
        weight: UomValue.fromValue(1.2, Uom.kg),
      ),
      EditableFruit(
        id: 'editableFruit/2',
        name: 'Banana',
        purchaseDate: DateTime.now(),
      ),
      EditableFruit(
        id: 'editableFruit/3',
        name: 'Cherry',
        purchaseTime: DateTime.now(),
      ),
      EditableFruit(id: 'editableFruit/4', name: 'Date'),
      EditableFruit(id: 'editableFruit/5', name: 'Elderberry'),
      EditableFruit(id: 'editableFruit/6', name: 'Fig'),
      EditableFruit(id: 'editableFruit/7', name: 'Grape'),
    ];

    data.value = results;

    loading.value = false;
  }
}
