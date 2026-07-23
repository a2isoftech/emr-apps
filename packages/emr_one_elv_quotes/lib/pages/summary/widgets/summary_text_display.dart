import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';

class SummaryTextDisplay extends StatelessWidget {
  const SummaryTextDisplay({
    required this.label,
    required this.text,
    super.key,
    this.constraints,
  });
  final String label;
  final String text;
  final BoxConstraints? constraints;

  @override
  Widget build(BuildContext context) {
    return SummaryLabelChildWidget(
      constraints: constraints,
      text: label,
      crossAxisAlignment: CrossAxisAlignment.start,
      child: Text(
        text,
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }
}

class SummaryLabelChildWidget extends StatelessWidget {
  const SummaryLabelChildWidget({
    required this.text,
    required this.child,
    required this.crossAxisAlignment,
    super.key,
    this.constraints,
  });
  final String text;
  final Widget child;
  final BoxConstraints? constraints;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: Insets.gutter / 2,
        bottom: Insets.gutter / 2,
      ),
      child: Container(
        constraints: constraints,
        child: Row(
          crossAxisAlignment: crossAxisAlignment,
          children: [
            Text(
              '$text:  ',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            child,
          ],
        ),
      ),
    );
  }
}

class SummaryTextFlexibleRowDisplay extends StatelessWidget {
  const SummaryTextFlexibleRowDisplay({
    required this.label,
    required this.text,
    super.key,
  });

  final String label;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: Insets.gutter / 2,
        bottom: Insets.gutter / 2,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$label:  ',
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          Flexible(
            child: Text(
              text,
              style: Theme.of(context).textTheme.titleMedium,
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}

class SummaryTextRowDisplay extends StatelessWidget {
  const SummaryTextRowDisplay({
    required this.label,
    required this.text,
    super.key,
  });
  final String label;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SummaryLabelRowChildWidget(
      text: '$label: ',
      crossAxisAlignment: CrossAxisAlignment.start,
      child: Text(
        text,
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }
}

class SummaryLabelRowChildWidget extends StatelessWidget {
  const SummaryLabelRowChildWidget({
    required this.text,
    required this.child,
    required this.crossAxisAlignment,
    super.key,
  });
  final String text;
  final Widget child;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: Insets.gutter / 2,
        bottom: Insets.gutter / 2,
      ),
      child: Row(
        crossAxisAlignment: crossAxisAlignment,
        children: [
          Text(
            text,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          child,
        ],
      ),
    );
  }
}

class SummaryTextColumnDisplay extends StatelessWidget {
  const SummaryTextColumnDisplay({
    required this.label,
    required this.text,
    super.key,
    this.constraints,
  });
  final String label;
  final String text;
  final BoxConstraints? constraints;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: Insets.gutter / 2,
        bottom: Insets.gutter / 2,
      ),
      child: Container(
        constraints: constraints,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '$label:  ',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Text(
              text,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
      ),
    );
  }
}
