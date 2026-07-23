import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

class VersionRow extends StatelessWidget {
  VersionRow({super.key});

  final Future<PackageInfo> _getPackageInfo = PackageInfo.fromPlatform();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _getPackageInfo,
      builder: (BuildContext context, AsyncSnapshot<PackageInfo> snapshot) {
        if (snapshot.hasData) {
          return Center(
            child: Text(
              '${snapshot.data?.version} '
              '(${snapshot.data?.buildNumber})',
              style: const TextStyle(fontSize: 10),
            ),
          );
        }

        return const Text('---');
      },
    );
  }
}
