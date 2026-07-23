import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:package_info_plus/package_info_plus.dart';

class WelcomeGraphic extends StatefulWidget {
  const WelcomeGraphic({super.key});

  @override
  State<WelcomeGraphic> createState() => _WelcomeGraphicState();
}

class _WelcomeGraphicState extends State<WelcomeGraphic> {
  final Future<PackageInfo> _getPackageInfo = PackageInfo.fromPlatform();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _getPackageInfo,
      builder: (BuildContext context, AsyncSnapshot<PackageInfo> snapshot) {
        if (snapshot.hasData) {
          return Material(
            elevation: 12,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
              ),
              child: Column(
                children: <Widget>[
                  const Spacer(),
                  SizedBox(
                    width: 200,
                    child: SvgPicture.asset(
                      width: 200,
                      'assets/logo/oppra.tech.mono.black.v.svg',
                      alignment: Alignment.topLeft,
                      package: 'emr_one_core',
                      colorFilter: ColorFilter.mode(
                        Theme.of(context).colorScheme.onPrimary,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(Insets.gutter),
                    child: Text(
                      '${snapshot.data?.version} '
                      '(${snapshot.data?.buildNumber})',
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }

        return Container();
      },
    );
  }
}
