import 'dart:typed_data';

import 'package:emr_one_elv_quotes/pages/quick_quotes/controller/controller_imports.dart';

class ShowExpandedDialog extends StatelessWidget {
  const ShowExpandedDialog({
    required this.title,
    required this.image,
    this.bottomChildren = const [],
    super.key,
  });
  final String title;
  final Uint8List image;
  final List<Widget> bottomChildren;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Insets.gutter * 3),
      child: AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        buttonPadding: EdgeInsets.zero,
        contentPadding: EdgeInsets.zero,
        titlePadding: EdgeInsets.zero,
        actionsPadding: EdgeInsets.zero,
        insetPadding: EdgeInsets.zero,
        iconPadding: EdgeInsets.zero,
        actions: const [],
        title: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.onSurfaceVariant,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(Insets.gutter / 2),
              topRight: Radius.circular(Insets.gutter / 2),
            ),
          ),
          padding: const EdgeInsets.symmetric(
            vertical: Insets.gutter / 2,
            horizontal: Insets.gutter,
          ),
          child: Row(
            children: [
              Text(
                '${context.l10n.photoGallery}: $title',
                style: Theme.of(context)
                    .primaryTextTheme
                    .titleLarge!
                    .copyWith(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {
                  context.pop();
                },
                icon: Icon(
                  Icons.close,
                  color: Theme.of(context).colorScheme.surface,
                ),
              ),
            ],
          ),
        ),
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(Insets.gutter * 1.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(Insets.gutter / 1.5),
                        ),
                        child: Image.memory(
                          image,
                          fit: BoxFit.fitHeight,
                          width: MediaQuery.of(context).size.width,
                        ),
                      ),
                    ),
                    Opacity(
                      opacity: .8,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(Insets.gutter / 1.5),
                            bottomRight: Radius.circular(Insets.gutter / 1.5),
                          ),
                        ),
                        padding: const EdgeInsets.all(Insets.gutter / 2),
                        child: Wrap(
                          children: bottomChildren,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
