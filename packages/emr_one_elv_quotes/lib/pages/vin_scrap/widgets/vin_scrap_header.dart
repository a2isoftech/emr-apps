import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_quotes/extensions/extensions.dart';
import 'package:emr_one_elv_quotes/pages/vin_scrap/vin_scrap_quote_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class VinScrapHeader extends StatelessWidget {
  const VinScrapHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<VINScrapController>(context);
    return Container(
      height: 70,
      color: EmrColours.primaryBlue,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  weight: 30,
                ),
                onPressed: context.pop,
              ),
              Padding(
                padding: const EdgeInsets.only(left: Insets.gutter),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    controller.activeTerritory.getScrapText(context),
                    style: EmrOneConstants.kLargeHeadingTextStyle
                        .copyWith(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
