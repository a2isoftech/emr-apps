import 'dart:convert';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/constants/constants_export.dart';
import 'package:emr_one_inform/models/yard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InformBottomAppBar extends StatelessWidget {
  const InformBottomAppBar({
    required this.yard,
    this.filterForUser,
    this.screenName,
    super.key,
    this.startDate,
    this.endDate,
    this.assetCode,
  });

  final Yard yard;
  final bool? filterForUser;
  final String? screenName;
  final DateTime? startDate;
  final DateTime? endDate;
  final String? assetCode;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 65,
      color: FormAppColors.primaryBlue,
      shape: const CircularNotchedRectangle(),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () => context.goNamed(FormsRoutingName.inForms),
              child: Column(
                children: [
                  Icon(
                    Icons.home_filled,
                    color: FormAppColors.white,
                    size: 20,
                  ),
                  Text(
                    context.l10n.home,
                    style: TextStyle(color: FormAppColors.white, fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
          if (screenName == FormsRoutingName.completedJobs ||
              screenName == FormsRoutingName.viewWorkRequest) ...[
            Expanded(
              child: GestureDetector(
                onTap: () {
                  context.pushNamed(
                    FormsRoutingName.viewWorkRequest,
                    queryParams: {
                      'startDate': startDate == null
                          ? null
                          : jsonEncode(
                              startDate?.toIso8601String().substring(0, 19),
                            ),
                      'endDate': endDate == null
                          ? null
                          : jsonEncode(
                              endDate?.toIso8601String().substring(0, 19),
                            ),
                      'assetCode': assetCode,
                    },
                  );
                },
                child: Column(
                  children: [
                    SvgPicture.asset(
                      FormAppAssetsPath.workRequests,
                      package: FormAppStringLiteral.PackageName,
                      width: 20,
                      colorFilter: ColorFilter.mode(
                        FormAppColors.white,
                        BlendMode.srcIn,
                      ),
                    ),
                    Text(
                      context.l10n.requests,
                      style:
                          TextStyle(color: FormAppColors.white, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
            // const SizedBox(width: 50),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  context.pushNamed(
                    FormsRoutingName.completedJobs,
                    queryParams: {
                      'filterForUser': filterForUser ?? 'false',
                    },
                  );
                },
                child: Column(
                  children: [
                    SvgPicture.asset(
                      FormAppAssetsPath.completedJobs,
                      package: FormAppStringLiteral.PackageName,
                      width: 20,
                      colorFilter: ColorFilter.mode(
                        FormAppColors.white,
                        BlendMode.srcIn,
                      ),
                    ),
                    Text(
                      context.l10n.jobsLabel,
                      style:
                          TextStyle(color: FormAppColors.white, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
          ] else ...[
            Expanded(
              child: GestureDetector(
                onTap: () {
                  context.pushNamed(
                    FormsRoutingName.templateLibrary,
                    queryParams: {'returnSelectedTemplate': 'false'},
                  );
                },
                child: Column(
                  children: [
                    SvgPicture.asset(
                      FormAppAssetsPath.templateIcon,
                      package: FormAppStringLiteral.PackageName,
                      width: 20,
                      colorFilter: ColorFilter.mode(
                        FormAppColors.white,
                        BlendMode.srcIn,
                      ),
                    ),
                    Text(
                      context.l10n.templates,
                      style:
                          TextStyle(color: FormAppColors.white, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  context.pushNamed(
                    FormsRoutingName.allocateUserToWorkOrder,
                  );
                },
                child: Column(
                  children: [
                    SvgPicture.asset(
                      FormAppAssetsPath.allocateIcon,
                      package: FormAppStringLiteral.PackageName,
                      width: 20,
                      colorFilter: ColorFilter.mode(
                        FormAppColors.white,
                        BlendMode.srcIn,
                      ),
                    ),
                    Text(
                      context.l10n.allocate,
                      style:
                          TextStyle(color: FormAppColors.white, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
          ],
          Expanded(
            child: GestureDetector(
              onTap: () {
                context.pushNamed(
                  FormsRoutingName.menu,
                );
              },
              child: Column(
                children: [
                  Icon(
                    Icons.more_horiz_outlined,
                    color: FormAppColors.white,
                    size: 20,
                  ),
                  Text(
                    context.l10n.more,
                    style: TextStyle(color: FormAppColors.white, fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
