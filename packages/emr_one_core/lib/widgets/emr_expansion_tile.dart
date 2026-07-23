import 'package:flutter/material.dart';

const Duration _kExpand = Duration(milliseconds: 200);

class EmrExpansionTile extends StatefulWidget {
  const EmrExpansionTile({
    required this.title,
    required this.child,
    super.key,
    this.leading,
    this.onExpansionChanged,
    this.trailing,
    this.initiallyExpanded = false,
    this.maintainState = false,
    this.tilePadding,
    this.expandedCrossAxisAlignment,
    this.expandedAlignment,
    this.childrenPadding,
    this.backgroundColor,
    this.collapsedBackgroundColor,
    this.textColor,
    this.collapsedTextColor,
    this.iconColor,
    this.collapsedIconColor,
    this.controlAffinity,
    this.header,
  }) : assert(
          expandedCrossAxisAlignment != CrossAxisAlignment.baseline,
          'CrossAxisAlignment.baseline is not supported since the expanded'
          ' children are aligned in a column, not a row. Try to use '
          'another constant.',
        );
  final Widget? leading;
  final Widget title;
  final ValueChanged<bool>? onExpansionChanged;
  final Widget child;
  final Color? backgroundColor;
  final Color? collapsedBackgroundColor;
  final Widget? trailing;
  final bool initiallyExpanded;
  final bool maintainState;
  final EdgeInsetsGeometry? tilePadding;
  final Alignment? expandedAlignment;
  final CrossAxisAlignment? expandedCrossAxisAlignment;
  final EdgeInsetsGeometry? childrenPadding;
  final Color? iconColor;
  final Color? collapsedIconColor;
  final Color? textColor;
  final Color? collapsedTextColor;
  final ListTileControlAffinity? controlAffinity;
  final Widget? header;

  @override
  State<EmrExpansionTile> createState() => _EmrExpansionTileState();
}

class _EmrExpansionTileState extends State<EmrExpansionTile>
    with SingleTickerProviderStateMixin {
  static final Animatable<double> _easeInTween =
      CurveTween(curve: Curves.easeIn);
  static final Animatable<double> _halfTween =
      Tween<double>(begin: 0, end: 0.5);

  final ColorTween _borderColorTween = ColorTween();
  final ColorTween _headerColorTween = ColorTween();
  final ColorTween _iconColorTween = ColorTween();
  final ColorTween _backgroundColorTween = ColorTween();

  late AnimationController _controller;
  late Animation<double> _iconTurns;
  late Animation<double> _heightFactor;
  late Animation<Color?> _headerColor;
  late Animation<Color?> _iconColor;

  bool _isExpanded = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: _kExpand, vsync: this);
    _heightFactor = _controller.drive(_easeInTween);
    _iconTurns = _controller.drive(_halfTween.chain(_easeInTween));
    _headerColor = _controller.drive(_headerColorTween.chain(_easeInTween));
    _iconColor = _controller.drive(_iconColorTween.chain(_easeInTween));
    _isExpanded = PageStorage.of(context).readState(context) as bool? ??
        widget.initiallyExpanded;
    if (_isExpanded) {
      _controller.value = 1.0;
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _handleTap() {
    setState(() {
      _isExpanded = !_isExpanded;
      if (_isExpanded) {
        _controller.forward();
      } else {
        _controller.reverse().then<void>((void value) {
          if (!mounted) {
            return;
          }
          setState(() {
            // Rebuild without widget.children.
          });
        });
      }
      PageStorage.of(context).writeState(context, _isExpanded);
    });
    widget.onExpansionChanged?.call(_isExpanded);
  }

  // Platform or null affinity defaults to trailing.
  ListTileControlAffinity _effectiveAffinity(
    ListTileControlAffinity? affinity,
  ) {
    switch (affinity ?? ListTileControlAffinity.trailing) {
      case ListTileControlAffinity.leading:
        return ListTileControlAffinity.leading;
      case ListTileControlAffinity.trailing:
      case ListTileControlAffinity.platform:
        return ListTileControlAffinity.trailing;
    }
  }

  Widget? _buildIcon(BuildContext context) {
    final expansionTileTheme = ExpansionTileTheme.of(context);

    return RotationTransition(
      turns: _iconTurns,
      child: Icon(
        Icons.expand_more,
        color: expansionTileTheme.iconColor,
      ),
    );
  }

  Widget? _buildLeadingIcon(BuildContext context) {
    if (_effectiveAffinity(widget.controlAffinity) !=
        ListTileControlAffinity.leading) {
      return null;
    }
    return _buildIcon(context);
  }

  Widget? _buildTrailingIcon(BuildContext context) {
    if (_effectiveAffinity(widget.controlAffinity) !=
        ListTileControlAffinity.trailing) {
      return null;
    }
    return _buildIcon(context);
  }

  Widget? _buildTitle() {
    return widget.title;
  }

  Widget _buildBody() {
    return Column(
      children: [
        if (widget.header != null) widget.header!,
        widget.child,
      ],
    );
  }

  Widget _buildChildren(BuildContext context, Widget? child) {
    final expansionTileTheme = ExpansionTileTheme.of(context);

    return DecoratedBox(
      decoration: const BoxDecoration(),
      child: Column(
        children: [
          ColoredBox(
            color:
                widget.backgroundColor ?? expansionTileTheme.backgroundColor!,
            child: ListTileTheme.merge(
              iconColor: _iconColor.value ?? expansionTileTheme.iconColor,
              textColor: _headerColor.value,
              child: ListTile(
                onTap: _handleTap,
                contentPadding:
                    widget.tilePadding ?? expansionTileTheme.tilePadding,
                leading: widget.leading ?? _buildLeadingIcon(context),
                title: _buildTitle(),
                trailing: widget.trailing ?? _buildTrailingIcon(context),
              ),
            ),
          ),
          ClipRect(
            child: Align(
              alignment: widget.expandedAlignment ??
                  expansionTileTheme.expandedAlignment ??
                  Alignment.center,
              heightFactor: _heightFactor.value,
              child: _buildBody(),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final theme = Theme.of(context);
    final expansionTileTheme = ExpansionTileTheme.of(context);
    final colorScheme = theme.colorScheme;
    _borderColorTween.end = theme.dividerColor;
    _headerColorTween
      ..begin = widget.collapsedTextColor ??
          expansionTileTheme.collapsedTextColor ??
          theme.textTheme.titleMedium!.color
      ..end = widget.textColor ??
          expansionTileTheme.textColor ??
          colorScheme.primary;
    _iconColorTween
      ..begin = widget.collapsedIconColor ??
          expansionTileTheme.collapsedIconColor ??
          theme.unselectedWidgetColor
      ..end = widget.iconColor ??
          expansionTileTheme.iconColor ??
          colorScheme.primary;
    _backgroundColorTween
      ..begin = widget.collapsedBackgroundColor ??
          expansionTileTheme.collapsedBackgroundColor
      ..end = widget.backgroundColor ?? expansionTileTheme.backgroundColor;
  }

  @override
  Widget build(BuildContext context) {
    final expansionTileTheme = ExpansionTileTheme.of(context);
    final closed = !_isExpanded && _controller.isDismissed;
    final shouldRemoveChildren = closed && !widget.maintainState;

    final Widget result = Offstage(
      offstage: closed,
      child: TickerMode(
        enabled: !closed,
        child: Padding(
          padding: widget.childrenPadding ??
              expansionTileTheme.childrenPadding ??
              EdgeInsets.zero,
          child: Column(
            crossAxisAlignment:
                widget.expandedCrossAxisAlignment ?? CrossAxisAlignment.center,
            children: [widget.child],
          ),
        ),
      ),
    );

    return AnimatedBuilder(
      animation: _controller.view,
      builder: _buildChildren,
      child: shouldRemoveChildren ? null : result,
    );
  }
}
