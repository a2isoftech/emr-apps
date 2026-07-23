import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/stepper/emr_steps.dart';
import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

enum EmrStepperType {
  vertical,
  horizontal,
}

@immutable
class ControlsDetails {
  const ControlsDetails({
    this.currentStep,
    this.stepIndex,
    this.onStepCancel,
    this.onStepContinue,
  });

  final int? currentStep;

  final int? stepIndex;
  final VoidCallback? onStepContinue;

  final VoidCallback? onStepCancel;

  bool get isActive => currentStep == stepIndex;
}

typedef ControlsWidgetBuilder = Widget Function(
  BuildContext context,
  ControlsDetails details,
);

const TextStyle _kStepStyle = TextStyle(
  fontSize: 12,
  color: Colors.white,
);
const Color _kErrorLight = Colors.red;
final Color _kErrorDark = Colors.red.shade400;
const Color _kCircleActiveLight = Colors.white;
const Color _kCircleActiveDark = Colors.black87;
const Color _kDisabledLight = Colors.black38;
const Color _kDisabledDark = Colors.white38;
const double _kStepSize = 24;
// Height of 24dp-long-sided equilateral triangle.
const double _kTriangleHeight =
    _kStepSize * 0.866025; // Triangle height. sqrt(3.0) / 2.0

class EmrStepper extends StatefulWidget {
  const EmrStepper({
    required this.steps,
    super.key,
    this.physics,
    this.type = EmrStepperType.vertical,
    this.currentStep = 0,
    this.onStepTapped,
    this.onStepContinue,
    this.onStepCancel,
    this.controlsBuilder,
    this.elevation,
    this.margin,
    this.maintainState = false,
    this.scrollController,
    this.padding = const EdgeInsets.all(24),
    this.header = const SizedBox(
      height: 120,
      child: Center(
        child: Text('Header'),
      ),
    ),
    this.onPressed,
    this.showStepSuffixWidget = true,
  }) : assert(0 <= currentStep && currentStep < steps.length);

  final List<EmrStep> steps;
  final ScrollPhysics? physics;
  final EmrStepperType type;
  final int currentStep;
  final ValueChanged<int>? onStepTapped;
  final VoidCallback? onStepContinue;
  final VoidCallback? onStepCancel;
  final ControlsWidgetBuilder? controlsBuilder;
  final double? elevation;
  final EdgeInsetsGeometry? margin;
  final bool maintainState;
  final ScrollController? scrollController;
  final EdgeInsets padding;
  final Widget header;
  final void Function()? onPressed;
  final bool showStepSuffixWidget;

  @override
  State<EmrStepper> createState() => _EmrStepperState();
}

class _EmrStepperState extends State<EmrStepper> with TickerProviderStateMixin {
  late List<GlobalKey> _keys;
  final Map<int, StepState> _oldStates = <int, StepState>{};

  @override
  void initState() {
    super.initState();
    _keys = List<GlobalKey>.generate(
      widget.steps.length,
      (int i) => GlobalKey(),
    );

    for (var i = 0; i < widget.steps.length; i += 1) {
      _oldStates[i] = widget.steps[i].state;
    }
  }

  @override
  void didUpdateWidget(EmrStepper oldWidget) {
    super.didUpdateWidget(oldWidget);
    assert(widget.steps.length == oldWidget.steps.length);

    for (var i = 0; i < oldWidget.steps.length; i += 1) {
      _oldStates[i] = oldWidget.steps[i].state;
    }
  }

  bool _isLast(int index) {
    return widget.steps.length - 1 == index;
  }

  bool _isDark() {
    return Theme.of(context).brightness == Brightness.dark;
  }

  Widget _buildCircleChild(int index, bool oldState, BuildContext context) {
    final state = oldState ? _oldStates[index]! : widget.steps[index].state;
    final isDarkActive = _isDark() && widget.steps[index].isActive;
    switch (state) {
      case StepState.indexed:
      case StepState.disabled:
        return Container(
          width: 18,
          height: 18,
          decoration: BoxDecoration(
            color: _isDark()
                ? Theme.of(context).colorScheme.primary
                : Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
          child: Center(
            child: Text(
              '${index + 1}',
              style: isDarkActive
                  ? _kStepStyle.copyWith(
                      color: _isDark() ? Colors.white : EmrColours.primaryBlue,
                      fontWeight: FontWeight.bold,
                    )
                  : _kStepStyle.copyWith(
                      color: _isDark() ? Colors.white : EmrColours.primaryBlue,
                      fontWeight: FontWeight.bold,
                    ),
            ),
          ),
        );
      case StepState.editing:
        return Icon(
          Icons.edit,
          color: isDarkActive ? _kCircleActiveDark : _kCircleActiveLight,
          size: 18,
        );
      case StepState.complete:
        return Icon(
          Icons.check,
          color: isDarkActive ? _kCircleActiveDark : _kCircleActiveLight,
          size: 18,
        );
      case StepState.error:
        return const Text('!', style: _kStepStyle);
    }
  }

  Widget _buildCircle(int index, bool oldState, BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      width: _kStepSize,
      height: _kStepSize,
      child: AnimatedContainer(
        curve: Curves.fastOutSlowIn,
        duration: kThemeAnimationDuration,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: _buildCircleChild(
            index,
            oldState && widget.steps[index].state == StepState.error,
            context,
          ),
        ),
      ),
    );
  }

  Widget _buildTriangle(int index, bool oldState) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      width: _kStepSize,
      height: _kStepSize,
      child: Center(
        child: SizedBox(
          width: _kStepSize,
          height: _kTriangleHeight,
          child: CustomPaint(
            painter: _TrianglePainter(
              color: _isDark() ? _kErrorDark : _kErrorLight,
            ),
            child: Align(
              alignment: const Alignment(
                0,
                0.8,
              ), // 0.8 looks better than the geometrical 0.33.
              child: _buildCircleChild(
                index,
                oldState && widget.steps[index].state != StepState.error,
                context,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildIcon(int index, BuildContext context) {
    if (widget.steps[index].state != _oldStates[index]) {
      return AnimatedCrossFade(
        firstChild: _buildCircle(index, true, context),
        secondChild: _buildTriangle(index, true),
        firstCurve: const Interval(0, 0.6, curve: Curves.fastOutSlowIn),
        secondCurve: const Interval(0.4, 1, curve: Curves.fastOutSlowIn),
        sizeCurve: Curves.fastOutSlowIn,
        crossFadeState: widget.steps[index].state == StepState.error
            ? CrossFadeState.showSecond
            : CrossFadeState.showFirst,
        duration: kThemeAnimationDuration,
      );
    } else {
      if (widget.steps[index].state != StepState.error) {
        return _buildCircle(index, false, context);
      } else {
        return _buildTriangle(index, false);
      }
    }
  }

  Widget _buildVerticalControls(int stepIndex) {
    if (widget.controlsBuilder != null) {
      return widget.controlsBuilder!(
        context,
        ControlsDetails(
          currentStep: widget.currentStep,
          onStepContinue: widget.onStepContinue,
          onStepCancel: widget.onStepCancel,
        ),
      );
    }

    final Color cancelColor;
    switch (Theme.of(context).brightness) {
      case Brightness.light:
        cancelColor = Colors.black54;
      case Brightness.dark:
        cancelColor = Colors.white70;
    }

    final themeData = Theme.of(context);
    final colorScheme = themeData.colorScheme;
    final localizations = MaterialLocalizations.of(context);

    const OutlinedBorder buttonShape = RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2)),
    );
    const buttonPadding = EdgeInsets.symmetric(horizontal: 16);

    return Container(
      margin: const EdgeInsets.only(top: 16),
      child: ConstrainedBox(
        constraints: const BoxConstraints.tightFor(height: 48),
        child: Row(
          children: <Widget>[
            TextButton(
              onPressed: widget.onStepContinue,
              style: ButtonStyle(
                foregroundColor: WidgetStateProperty.resolveWith<Color?>(
                    (Set<WidgetState> states) {
                  return states.contains(WidgetState.disabled)
                      ? null
                      : (_isDark()
                          ? colorScheme.onSurface
                          : colorScheme.onPrimary);
                }),
                backgroundColor: WidgetStateProperty.resolveWith<Color?>(
                    (Set<WidgetState> states) {
                  return _isDark() || states.contains(WidgetState.disabled)
                      ? null
                      : colorScheme.primary;
                }),
                padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
                  buttonPadding,
                ),
                shape: WidgetStateProperty.all<OutlinedBorder>(buttonShape),
              ),
              child: Text(localizations.continueButtonLabel),
            ),
            Container(
              margin: const EdgeInsetsDirectional.only(start: 8),
              child: TextButton(
                onPressed: widget.onStepCancel,
                style: TextButton.styleFrom(
                  foregroundColor: cancelColor,
                  padding: buttonPadding,
                  shape: buttonShape,
                ),
                child: Text(localizations.cancelButtonLabel),
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextStyle _titleStyle(int index) {
    final themeData = Theme.of(context);
    final textTheme = themeData.textTheme;

    switch (widget.steps[index].state) {
      case StepState.indexed:
      case StepState.editing:
      case StepState.complete:
        return textTheme.bodyLarge!;
      case StepState.disabled:
        return textTheme.bodyLarge!.copyWith(
          color: _isDark() ? _kDisabledDark : _kDisabledLight,
        );
      case StepState.error:
        return textTheme.bodyLarge!.copyWith(
          color: _isDark() ? _kErrorDark : _kErrorLight,
        );
    }
  }

  TextStyle _subtitleStyle(int index) {
    final themeData = Theme.of(context);
    final textTheme = themeData.textTheme;

    switch (widget.steps[index].state) {
      case StepState.indexed:
      case StepState.editing:
      case StepState.complete:
        return textTheme.bodySmall!;
      case StepState.disabled:
        return textTheme.bodySmall!.copyWith(
          color: _isDark() ? _kDisabledDark : _kDisabledLight,
        );
      case StepState.error:
        return textTheme.bodySmall!.copyWith(
          color: _isDark() ? _kErrorDark : _kErrorLight,
        );
    }
  }

  Widget _buildHeaderText(int index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        AnimatedDefaultTextStyle(
          style: _titleStyle(index),
          duration: kThemeAnimationDuration,
          curve: Curves.fastOutSlowIn,
          child: widget.steps[index].title ?? const Text(''),
        ),
        if (widget.steps[index].subtitle != null)
          Container(
            margin: const EdgeInsets.only(top: 2),
            child: AnimatedDefaultTextStyle(
              style: _subtitleStyle(index),
              duration: kThemeAnimationDuration,
              curve: Curves.fastOutSlowIn,
              child: widget.steps[index].subtitle!,
            ),
          ),
      ],
    );
  }

  Widget _buildVerticalHeader(int index, BuildContext context) {
    final brandColours = Theme.of(context).extension<EOBrandTheme>()!;
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final backgroundColor = isDark
        ? Theme.of(context).colorScheme.tertiary
        : Theme.of(context).colorScheme.secondary;
    final appConfig = Provider.of<AppConfig>(context, listen: false);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: appConfig.isWeb || widget.steps[index].stepIcon == null
                    ? 20
                    : 27,
                backgroundColor: Theme.of(context).colorScheme.primary,
                child: widget.steps[index].stepIcon == null
                    ? CircleAvatar(
                        radius: 18,
                        backgroundColor: Theme.of(context).colorScheme.tertiary,
                        child: Text(
                          '${index + 1}',
                          style: TextStyle(
                            color: brandColours.onBrandColour,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    : CircleAvatar(
                        radius: 27,
                        backgroundColor: backgroundColor,
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: isDark
                              ? Theme.of(context)
                                  .colorScheme
                                  .surfaceContainerHighest
                              : Theme.of(context).colorScheme.surface,
                          child: CircleAvatar(
                            radius: 18,
                            backgroundColor: backgroundColor,
                            child: widget.steps[index].stepIcon,
                          ),
                        ),
                      ),
              ),
              const SizedBox(
                width: Insets.gutter,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (appConfig.isWeb || widget.steps[index].stepIcon == null)
                    Text(
                      'Step ${index + 1}',
                    )
                  else
                    Text(
                      'STEP ${index + 1}',
                    ),
                  widget.steps[index].title ?? const SizedBox(),
                ],
              ),
            ],
          ),
          if (widget.showStepSuffixWidget)
            verticalStepperButton(
              widget.steps[index].state,
              widget.steps[index].onPressed,
              index,
              context,
            ),
        ],
      ),
    );
  }

  Widget _buildVertical(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: widget.physics,
      children: <Widget>[
        for (int i = 0; i < widget.steps.length; i += 1)
          Column(
            key: _keys[i],
            children: [
              InkWell(
                onTap: widget.steps[i].state != StepState.disabled
                    ? () {
                        Scrollable.ensureVisible(
                          _keys[i].currentContext!,
                          curve: Curves.fastOutSlowIn,
                          duration: kThemeAnimationDuration,
                        );

                        widget.onStepTapped?.call(i);
                      }
                    : null,
                canRequestFocus: widget.steps[i].state != StepState.disabled,
                child: _buildVerticalHeader(i, context),
              ),
              //_buildVerticalBody(i),
            ],
          ),
      ],
    );
  }

  Widget _buildHorizontal(BuildContext context) {
    final isSmall =
        MediaQuery.of(context).size.width < EmrOneConstants.kBreakPointStepper;
    final children = <Widget>[
      for (int i = 0; i < widget.steps.length; i += 1) ...<Widget>[
        InkResponse(
          onTap: widget.steps[i].state != StepState.disabled
              ? () {
                  widget.onStepTapped?.call(i);
                }
              : null,
          canRequestFocus: widget.steps[i].state != StepState.disabled,
          child: Row(
            children: <Widget>[
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: isSmall ? 0 : 72 - 48,
                  ), //Aligns to center of row
                  SizedBox(
                    height: isSmall ? 72 : 48.0,
                    child: Center(
                      child: _buildIcon(i, context),
                    ),
                  ),
                  Container(
                    child: isSmall ? const SizedBox() : _buildHeaderText(i),
                  ),
                ],
              ),
            ],
          ),
        ),
        if (!_isLast(i))
          Expanded(
            child: AnimatedContainer(
              height: 4,
              decoration: BoxDecoration(
                color: i < widget.currentStep
                    ? Theme.of(context).colorScheme.primary
                    : Colors.grey,
              ),
              duration: const Duration(milliseconds: 1300),
              curve: Curves.decelerate,
            ),
          ),
      ],
    ];

    final stepPanels = <Widget>[];
    for (var i = 0; i < widget.steps.length; i += 1) {
      stepPanels.add(
        Visibility(
          maintainState: widget.maintainState,
          visible: i == widget.currentStep,
          child: widget.steps[i].content,
        ),
      );
    }

    return Column(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            children: children,
          ),
        ),
        const Divider(),
        Expanded(
          child: ListView(
            controller: widget.scrollController,
            physics: widget.physics,
            padding: widget.padding,
            children: <Widget>[
              AnimatedSize(
                curve: Curves.fastOutSlowIn,
                duration: kThemeAnimationDuration,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: stepPanels,
                ),
              ),
              _buildVerticalControls(widget.currentStep),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    assert(debugCheckHasMaterial(context));
    assert(debugCheckHasMaterialLocalizations(context));
    assert(() {
      if (context.findAncestorWidgetOfExactType<EmrStepper>() != null) {
        throw FlutterError(
          'Steppers must not be nested.\n'
          'The material specification advises that one should avoid embedding '
          'steppers within steppers. '
          'https://material.io/archive/guidelines/components/steppers.html#steppers-usage',
        );
      }
      return true;
    }());
    switch (widget.type) {
      case EmrStepperType.vertical:
        return _buildVertical(context);
      case EmrStepperType.horizontal:
        return _buildHorizontal(context);
    }
  }
}

Widget verticalStepperButton(
  StepState state,
  void Function()? onPressed,
  int index,
  BuildContext context,
) {
  final brandColours = Theme.of(context).extension<EOBrandTheme>()!;

  switch (state) {
    case StepState.indexed:
      return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: brandColours.brandColour,
          padding: EdgeInsets.symmetric(
            vertical: EmrOneConstants.kStepperStatusButtonVertPadding,
            horizontal: EmrOneConstants.kStepperStatusButtonHorzPadding,
          ),
          side: BorderSide(width: 2, color: brandColours.onBrandColour!),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
        ),
        onPressed: index == 0 ? onPressed : () {},
        child: Text(
          'NOT STARTED',
          style: TextStyle(
            color: brandColours.onBrandColour,
            fontWeight: FontWeight.bold,
            fontSize: 10,
          ),
        ),
      );
    case StepState.editing:
      return ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(
            vertical: EmrOneConstants.kStepperStatusButtonVertPadding,
            horizontal: EmrOneConstants.kStepperStatusButtonHorzPadding,
          ),
          backgroundColor: Colors.white.withAlpha(179),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          'IN PROGRESS',
          style: TextStyle(
            color: brandColours.onBrandColour,
            fontWeight: FontWeight.bold,
            fontSize: 10,
          ),
        ),
      );
    case StepState.complete:
      return ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(
            vertical: EmrOneConstants.kStepperStatusButtonVertPadding,
            horizontal: EmrOneConstants.kStepperStatusButtonHorzPadding,
          ),
          backgroundColor: brandColours.brandColour,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          'COMPLETED',
          style: TextStyle(
            color: brandColours.onBrandColour,
            fontWeight: FontWeight.bold,
            fontSize: 10,
          ),
        ),
      );
    case StepState.disabled:
    case StepState.error:
      return const SizedBox();
  }
}

class _TrianglePainter extends CustomPainter {
  _TrianglePainter({
    required this.color,
  });

  final Color color;

  @override
  bool hitTest(Offset point) => true; // Hitting the rectangle is fine enough.

  @override
  bool shouldRepaint(_TrianglePainter oldPainter) {
    return oldPainter.color != color;
  }

  @override
  void paint(Canvas canvas, Size size) {
    final base = size.width;
    final halfBase = size.width / 2.0;
    final height = size.height;
    final points = <Offset>[
      Offset(0, height),
      Offset(base, height),
      Offset(halfBase, 0),
    ];

    canvas.drawPath(
      Path()..addPolygon(points, true),
      Paint()..color = color,
    );
  }
}
