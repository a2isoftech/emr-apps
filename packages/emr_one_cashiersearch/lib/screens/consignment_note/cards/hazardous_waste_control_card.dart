import 'package:emr_one_cashiersearch/controllers/consignment_note_controller.dart';
import 'package:emr_one_cashiersearch/screens/consignment_note/hazardous_waste_widget.dart';
import 'package:emr_one_core/emr_one_core.dart';

class HazardousWasteControlCard extends EmrTabBarVerticalViewCard {
  HazardousWasteControlCard({
    required super.title,
    required ConsignmentNoteController controller,
    required bool isInwardTicket,
    super.key,
  }) : super(
          child: HazardousWasteWidget(
            controller: controller,
            isInwardTicket: isInwardTicket,
          ),
        );
}
