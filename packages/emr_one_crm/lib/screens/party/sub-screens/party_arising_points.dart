import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/screens/party/party_controller.dart';
import 'package:emr_one_crm/screens/party/sub-screens/party_arisingpoint_individual.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class PartyArisingPoints extends StatefulWidget {
  const PartyArisingPoints({
    required this.partyController,
    super.key,
  });

  final PartyController partyController;

  @override
  State<PartyArisingPoints> createState() => _PartyArisingPointsState();
}

class _PartyArisingPointsState extends State<PartyArisingPoints> {
  List<bool> _isChecked = [];

  bool showArisingPointDetail = false;
  Location? selectedArisingPoint;

  @override
  void initState() {
    super.initState();

    _isChecked = List<bool>.filled(
      widget.partyController.partyInfo.locations.length,
      false,
    );
  }

  @override
  Widget build(BuildContext context) {
    final allArisingPoints = widget.partyController.partyInfo.locations;
    final colorScheme = Theme.of(context).colorScheme;

    if (allArisingPoints.isEmpty) {
      return const GenericMessage(
        subTitle: '',
        title: 'This party does not have any arising points',
      );
    }

    if (showArisingPointDetail) {
      return PartyArisingPointIndividual(
        selectedArisingPoint: selectedArisingPoint!,
        onBackButtonPressed: () {
          setState(() {
            selectedArisingPoint = null;
            showArisingPointDetail = false;
          });
        },
      );
    }

    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: RichText(
            text: TextSpan(
              style: EmrOneConstants.kMediumHeadingTextStyle.copyWith(
                fontWeight: FontWeight.normal,
                color: colorScheme.onSurface,
              ),
              children: [
                TextSpan(
                  text: '${allArisingPoints.length} ',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(text: context.l10n.arisingPoints),
              ],
            ),
          ),
        ),
        const SizedBox(height: Insets.gutter),
        ListView.separated(
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          itemCount: widget.partyController.partyInfo.locations.length,
          separatorBuilder: (context, index) => const Divider(
            height: 1,
          ),
          itemBuilder: (BuildContext ctx, index) {
            final arisingPoint = allArisingPoints[index];
            return Column(
              children: [
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  onTap: () {
                    setState(() {
                      _isChecked[index] = !_isChecked[index];
                      showArisingPointDetail = true;
                      selectedArisingPoint = arisingPoint;
                    });
                  },
                  title: Text(
                    arisingPoint.name ?? '',
                  ),
                  subtitle: Text(
                    arisingPoint.code ?? '',
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}
