import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/breadcrumb/emr_breadcrumb_segment.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart' as gr;

class EmrBreadCrumb extends StatefulWidget {
  const EmrBreadCrumb({super.key});

  @override
  State<EmrBreadCrumb> createState() => _EmrBreadCrumbState();
}

class _EmrBreadCrumbState extends State<EmrBreadCrumb> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();

    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final router = gr.GoRouter.of(context);
    final matches = router.routerDelegate.currentConfiguration.matches;

    final crumbs = matches
        .map(
          (e) => EmrBreadcrumbSegment(
            label: (e.route as EORoute).displayName(context),
            hasSeparator: matches.indexOf(e) < matches.length - 1,
            onPressed: matches.indexOf(e) < matches.length - 1
                ? () {
                    context.trackEvent(
                      EmrOneCoreTelemetry.kBreadcrumb,
                      params: {'segment': (e.route as EORoute).name!},
                    );

                    EoRouteHelper(context).go(e.matchedLocation);
                  }
                : null,
          ),
        )
        .toList();

    return SingleChildScrollView(
      controller: _scrollController,
      scrollDirection: Axis.horizontal,
      child: Row(
        children: crumbs,
      ),
    );
  }
}
