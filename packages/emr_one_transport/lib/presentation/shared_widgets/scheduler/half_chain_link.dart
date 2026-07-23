import 'package:emr_one_transport/core/constants/colors.dart';
import 'package:emr_one_transport/core/constants/constants.dart';
import 'package:flutter/material.dart';

class HalfChainLink extends StatelessWidget {
  const HalfChainLink({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 12,
      height: Constants.schedulerCellHeight - Constants.progressBarHeight,
      child: Stack(
        children: [
          Positioned(
            top: 12,
            child: Container(
              height: 14,
              width: 12,
              decoration: const BoxDecoration(
                color: TransportAppColors.calypso,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(
                    10,
                  ),
                ),
              ),
            ),
          ),
          const Positioned(
            top: 9,
            left: -10,
            child: Icon(
              Icons.link,
              size: Constants.iconSizeM,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
