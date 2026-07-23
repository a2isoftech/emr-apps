import 'package:emr_one_forms_engine/core/store/components/submit_form_component.dart';
import 'package:emr_one_forms_engine/core/store/store.dart';
import 'package:emr_one_forms_engine/emr_one_forms_engine.dart';
import 'package:emr_one_forms_engine/views/components/section.dart';
import 'package:flutter/material.dart';

class FormRenderer extends StatefulWidget {
  const FormRenderer({super.key});

  @override
  State<FormRenderer> createState() => _FormRendererState();
}

class _FormRendererState extends State<FormRenderer>
    with TickerProviderStateMixin {
  TabController? _tabController;
  Color? tabIndicatorColor;

  final List<Widget> sections = [];
  final List<Tab> tabs = [];
  String title = 'Loading...';
  late Future<void> loading;

  @override
  void initState() {
    super.initState();
    loading = initLoadedTemplateInfo();
  }

  Future<void> initLoadedTemplateInfo() async {
    await FormsEngine().loadingTemplate;
    final store = ServiceContainer().get<IFormStore>();

    setState(() => title = store.title ?? '');

    for (var i = 0; i < store.formSections.length; ++i) {
      final section = store.formSections.elementAt(i);
      if (i == store.formSections.length - 1) {
        section.components.add(SubmitFormComponent());
      }
      tabs.add(Tab(text: section.header ?? '${i + 1}'));
      sections.add(
        FormSectionWidget(
          section,
          onSubmit: (value) {
            setState(() {
              _tabController!.index = value;
              debugPrint('error tab : $value');
              tabIndicatorColor = FormColors.error;
            });
          },
        ),
      );
    }

    _tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  Widget get _formsWidget => Column(
    children: [
      TabBar(
        controller: _tabController,
        indicatorColor: tabIndicatorColor,
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorWeight: 5.0,
        isScrollable: true,
        tabs: tabs,
      ),
      Expanded(
        child: TabBarView(controller: _tabController, children: sections),
      ),
    ],
  );

  Widget get _loadingWidget => const Center(child: CircularProgressIndicator());

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: loading,
      builder: (context, snapshot) {
        return (snapshot.connectionState == ConnectionState.done)
            ? _formsWidget
            : _loadingWidget;
      },
    );
  }
}
