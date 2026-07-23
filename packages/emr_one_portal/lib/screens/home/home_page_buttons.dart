import 'package:emr_one_portal/page_widget_config_loader.dart';
import 'package:emr_one_portal/portal.dart';
import 'package:flutter/material.dart';

class HomePageButtons extends StatefulWidget {
  const HomePageButtons({required this.model, super.key});
  final HomePageModel model;

  @override
  State<HomePageButtons> createState() => _HomePageButtonsState();
}

class _HomePageButtonsState extends State<HomePageButtons> {
  Map<String, List<String>>? pageConfig;
  late List<String>? widgetKeys;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _loadPageConfig();
    });
  }

  Future<void> _loadPageConfig() async {    
    final config = await PageWidgetConfigLoader.loadConfig();
    setState(() {
      pageConfig = config['HomePage'];
      widgetKeys = pageConfig?[widget.model.locatedAtCountry];
    });
  }

  @override
  Widget build(BuildContext context) {
    if (pageConfig == null) {
      return const Center(child: CircularProgressIndicator());
    }

    if (widgetKeys == null) {
      return const Center();
    }

    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: widgetKeys!
            .map(
              (key) => homepageWidgetRegistry[key]?.call(context, widget.model),
            )
            .where((widget) => widget != null)
            .cast<Widget>()
            .toList(),
      ),
    );
  }
}
