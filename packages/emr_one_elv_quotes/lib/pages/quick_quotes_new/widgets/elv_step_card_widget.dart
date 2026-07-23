import 'package:emr_one_elv_quotes/pages/quick_quotes/controller/controller_imports.dart';

class ElvStepCardWidget extends StatelessWidget {
  const ElvStepCardWidget({
    required this.stepNumber,
    required this.title,
    required this.child,
    super.key,
  });

  final int stepNumber;
  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: Insets.gutter),
          child: Text(
            '${context.l10n.step} $stepNumber: $title',
            style: Theme.of(
              context,
            ).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        child,
      ],
    );
  }
}
