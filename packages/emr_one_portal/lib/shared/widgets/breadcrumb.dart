import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/eo_constants.dart';
import 'package:flutter/material.dart';

class BreadCrumb extends StatelessWidget {
  const BreadCrumb({
    required this.paths,
    required this.currentPage,
    super.key,
  });

  final List<String> paths;
  final String currentPage;

  @override
  Widget build(BuildContext context) {
    final fullPath = paths.join('  /  ');

    return SizedBox(
      height: 40,
      child: ColoredBox(
        color: Theme.of(context).colorScheme.surface,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(
                  Insets.gutter / 2,
                  Insets.gutter / 8,
                  0,
                  Insets.gutter / 8,
                ),
                child: Row(
                  children: [
                    Text(
                      fullPath,
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    const Text(
                      '  /  ',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      currentPage,
                      style: const TextStyle(
                        color: EmrColours.secondaryLightBlue,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
