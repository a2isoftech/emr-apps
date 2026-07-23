import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:flutter/material.dart';

Widget showSpinner() {
  return const Center(
    child: CircularProgressIndicator(
      color: EmrColours.primaryBlue,
    ),
  );
}

Widget headerText({required String title, required String text}) => Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Text(
            title,
            style:
                const TextStyle(fontSize: 12, color: EmrColours.primaryWhite),
          ),
          Text(
            text,
            style:
                const TextStyle(fontSize: 20, color: EmrColours.primaryWhite),
          ),
        ],
      ),
    );
