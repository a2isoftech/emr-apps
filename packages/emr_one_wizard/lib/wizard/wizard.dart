// import 'package:emr_one_core/extensions/extensions.dart';
import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:flutter/material.dart';

import '../controller/wizard_controller.dart';

class EOWizard<T extends EOWizardController> extends StatefulWidget {
  const EOWizard({
    super.key,
    required this.controller,
    required this.contentBuilder,
    this.headerBuilder,
    this.baseContainerBuilder,
    this.sheetContainerBuilder,
    this.sheetHeaderBuilder,
    this.fadeDuration = const Duration(milliseconds: 300),
    this.sheetGap = 70,
  });

  final Widget Function(BuildContext context, T controller)? headerBuilder;
  final Widget Function(BuildContext context, T controller, Widget child)?
      baseContainerBuilder;
  final Widget Function(BuildContext context, T controller, Widget child)?
      sheetContainerBuilder;
  final Widget Function(BuildContext context, T controller)? sheetHeaderBuilder;
  final Widget Function(BuildContext context, T controller) contentBuilder;

  final T controller;
  final Duration fadeDuration;
  final double sheetGap;

  @override
  State<EOWizard<T>> createState() => _EOWizardState<T>();
}

class _EOWizardState<T extends EOWizardController> extends State<EOWizard<T>>
    with TickerProviderStateMixin {
  bool showingSheet = false;
  late Widget _mainLayerWidget;
  late Widget? _sheetWidget;
  late AnimationController sheetAnimController;
  late Animation<Offset> offset;
  final GlobalKey baseLayerKey = GlobalKey();
  bool runOnce = true;

  @override
  void initState() {
    super.initState();
    sheetAnimController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );

    offset = Tween<Offset>(
      begin: const Offset(0.0, 1.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
        parent: sheetAnimController, curve: Curves.easeInOutCubic))
      ..addStatusListener(
        (AnimationStatus status) {
          if (status == AnimationStatus.dismissed) {
            setState(() {
              showingSheet = false;
            });
          }
        },
      );

    _mainLayerWidget = widget.contentBuilder(context, widget.controller);
    widget.controller.addListener(pageListener);
  }

  @override
  void dispose() {
    super.dispose();
    widget.controller.removeListener(pageListener);
  }

  void pageListener() {
    if (widget.controller.currentStep.isPage) {
      setState(() {
        runOnce = false;

        _sheetWidget = widget.contentBuilder(context, widget.controller);

        if (!showingSheet) {
          sheetAnimController.forward();
          showingSheet = true;
        }
        _mainLayerWidget = Column(
          key: ValueKey<int>(widget.controller.getStepNumber),
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                      top: Insets.gutter, bottom: Insets.gutter),
              child: widget.sheetHeaderBuilder == null
                  ? _defaultStepHeaderBuilder(context, widget.controller)
                  : widget.sheetHeaderBuilder!(context, widget.controller),
            ),
          ],
        );
      });
    } else {
      setState(() {
        runOnce = false;

        sheetAnimController.reverse();
        _mainLayerWidget = widget.contentBuilder(context, widget.controller);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (runOnce) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        pageListener();
      });
    }

    final baseContainerWidget = AnimatedSwitcher(
      duration: widget.fadeDuration,
      child: runOnce
          ? const Center(child: CircularProgressIndicator.adaptive())
          : _mainLayerWidget,
    );

    double sheetStartY = 0;
    final baseLayer = baseLayerKey.currentContext?.findRenderObject();
    final viewportHeight = MediaQuery.of(context).size.height;
    if (baseLayer != null) {
      RenderBox box = baseLayer as RenderBox;
      sheetStartY = box.localToGlobal(Offset.zero).dy + widget.sheetGap;
    }

    return Column(
      children: [
        if (widget.headerBuilder != null)
          widget.headerBuilder!(context, widget.controller),
        Expanded(
          child: Stack(
            children: [
              Positioned.fill(
                key: baseLayerKey,
                child: widget.baseContainerBuilder != null
                    ? widget.baseContainerBuilder!(
                        context, widget.controller, baseContainerWidget)
                    : _defaultContainerBuilder(
                        context, widget.controller, baseContainerWidget),
              ),
              if (showingSheet)
                Align(
                  alignment: Alignment.bottomLeft,
                  child: SlideTransition(
                    position: offset,
                    child: SizedBox(
                      height: viewportHeight - sheetStartY,
                      child: widget.sheetContainerBuilder != null
                          ? widget.sheetContainerBuilder!(
                              context, widget.controller, _sheetWidget!)
                          : _defaultSheetBuilder(
                              context, widget.controller, _sheetWidget!),
                    ),
                  ),
                )
            ],
          ),
        ),
      ],
    );
  }

  Widget _defaultContainerBuilder(
      BuildContext context, T controller, Widget child) {
    return Container(color: Colors.blue[900], child: child);
  }

  Widget _defaultSheetBuilder(
      BuildContext context, T controller, Widget child) {
    return Container(color: Colors.blue[900], child: child);
  }

  Widget _defaultStepHeaderBuilder(BuildContext context, T controller) {
    final brandColours = Theme.of(context).extension<EOBrandTheme>()!;
    final smallTextStyle = TextStyle(
      color: brandColours.onBrandColour,
      fontSize: 14,
    );
    final smallTextStyleBold = TextStyle(
        color: brandColours.onBrandColour,
        fontSize: 14,
        fontWeight: FontWeight.bold);

    return Row(
      children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: brandColours.onBrandColour,
          child: CircleAvatar(
            radius: 18,
            backgroundColor: Theme.of(context).colorScheme.tertiary,
            child: Text(
              controller.getCustomStepNumber() ??
                  '${controller.getStepNumber + 1}',
              style: TextStyle(
                color: brandColours.onBrandColour,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              controller.getCustomStepNumberHeading() ??
                  // '${context.l10n.step.toUpperCase()} '
                  //     '${context.l10n.noOfNo(
                  //   controller.getStepNumber.toString(),
                  //   controller.steps
                  //       .where((element) => element.isPage)
                  //       .length
                  //       .toString(),
                  // )}',
                  'STEP ${controller.getStepNumber} of ${controller.steps.where((element) => element.isPage).length}',
              style: smallTextStyle,
            ),
            Text(controller.currentStep.title, style: smallTextStyleBold),
          ],
        ),
      ],
    );
  }
}
