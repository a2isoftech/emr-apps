import 'dart:async';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

@internal
class EmrModalShowcase extends StatelessWidget {
  const EmrModalShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        spacing: Insets.gutter / 2,
        runSpacing: Insets.gutter / 2,
        children: <Widget>[
          FilledButton(
            onPressed: () {
              EmrDialog.ok(
                context,
                titleText: 'EmrDialog.ok()',
                contentText: 'This is a simple ok message',
              );
            },
            child: const Text('EmrDialog.ok()'),
          ),
          FilledButton(
            onPressed: () async {
              final dialogResult = await EmrDialog.modal<String?>(
                context,
                titleText: 'EmrDialog.modal()',
                builder: _buildSimpleModal,
                onAccept: () async {
                  await Future<void>.delayed(
                    const Duration(seconds: 5),
                  );

                  if (context.mounted) {
                    if (Navigator.of(context).canPop()) {
                      Navigator.of(context).pop('Saved!');
                    }
                  }
                },
              );
              if (context.mounted && dialogResult == null) {
                unawaited(
                  EmrModal.showMessageBar(context, 'Cancel pressed'),
                );
              } else if (context.mounted) {
                unawaited(
                  EmrModal.showMessageBar(
                    context,
                    'Result from dialog: $dialogResult',
                  ),
                );
              }
            },
            child: const Text('EmrDialog.modal()'),
          ),
          FilledButton(
            onPressed: () async {
              final dialogResult = await EmrDialog.modal<String?>(
                context,
                titleText: 'EmrDialog.modal() [FullScreen]',
                builder: _buildSimpleModal,
                dialogMode: DialogMode.fullScreen,
                onAccept: () async {
                  await Future<void>.delayed(
                    const Duration(seconds: 5),
                  );

                  if (context.mounted) {
                    if (Navigator.of(context).canPop()) {
                      Navigator.of(context).pop('Saved!');
                    }
                  }
                },
              );

              if (context.mounted && dialogResult == null) {
                unawaited(
                  EmrModal.showMessageBar(context, 'Cancel pressed'),
                );
              } else if (context.mounted) {
                unawaited(
                  EmrModal.showMessageBar(
                    context,
                    'Result from dialog: $dialogResult',
                  ),
                );
              }
            },
            child: const Text('EmrDialog.modal() [DialogMode.FullScreen]'),
          ),
          FilledButton(
            onPressed: () async {
              final dialogResult = await EmrDialog.modal<String?>(
                context,
                titleText: 'EmrDialog.modal() [Compact]',
                builder: _buildSimpleModal,
                dialogMode: DialogMode.compact,
                onAccept: () async {
                  await Future<void>.delayed(
                    const Duration(seconds: 5),
                  );

                  if (context.mounted) {
                    if (Navigator.of(context).canPop()) {
                      Navigator.of(context).pop('Saved!');
                    }
                  }
                },
              );

              if (context.mounted && dialogResult == null) {
                unawaited(
                  EmrModal.showMessageBar(context, 'Cancel pressed'),
                );
              } else if (context.mounted) {
                unawaited(
                  EmrModal.showMessageBar(
                    context,
                    'Result from dialog: $dialogResult',
                  ),
                );
              }
            },
            child: const Text('EmrDialog.modal() [DialogMode.Compact]'),
          ),
          FilledButton(
            style: EmrButtonStyles.danger(),
            onPressed: () async {
              final dialogResult = await EmrDialog.modal<String?>(
                context,
                titleText: 'EmrDialog.modal() - Danger',
                builder: _buildDangerModal,
                acceptLabel: 'Caution! Danger!',
                isDanger: true,
                onAccept: () async {
                  await Future<void>.delayed(
                    const Duration(seconds: 5),
                  );

                  if (context.mounted) {
                    Navigator.of(context).pop('Saved!');
                  }
                },
              );

              if (context.mounted && dialogResult == null) {
                unawaited(
                  EmrModal.showMessageBar(context, 'Cancel pressed'),
                );
              } else if (context.mounted) {
                unawaited(
                  EmrModal.showMessageBar(
                    context,
                    'Result from dialog: $dialogResult',
                  ),
                );
              }
            },
            child: const Text('EmrDialog.modal() - Danger'),
          ),
          FilledButton(
            onPressed: () async {
              final dialogResult = await EmrDialog.modal<String?>(
                context,
                titleText: 'EmrDialog.modal() [OK button]',
                builder: _buildSimpleModal,
                buttons: {EmrDialogButton.accept},
                acceptLabel: context.l10n.ok,
                onAccept: () async {
                  await Future<void>.delayed(
                    const Duration(seconds: 5),
                  );

                  if (context.mounted) {
                    if (Navigator.of(context).canPop()) {
                      Navigator.of(context).pop('OK!');
                    }
                  }
                },
              );

              if (context.mounted && dialogResult == null) {
                unawaited(
                  EmrModal.showMessageBar(context, 'X pressed'),
                );
              } else if (context.mounted) {
                unawaited(
                  EmrModal.showMessageBar(
                    context,
                    'Result from dialog: $dialogResult',
                  ),
                );
              }
            },
            child: const Text('EmrDialog.modal() [OK button]'),
          ),
          FilledButton(
            onPressed: () async {
              await EmrDialog.modal<void>(
                context,
                titleText: 'EmrDialog.modal() [OK button, default onAccept]',
                builder: _buildSimpleModal,
                buttons: {EmrDialogButton.accept},
                acceptLabel: context.l10n.ok,
              );

              if (context.mounted) {
                unawaited(
                  EmrModal.showMessageBar(context, 'Closed'),
                );
              }
            },
            child: const Text(
              'EmrDialog.modal() [OK button, default onAccept]',
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSimpleModal(BuildContext context) {
    const bodyTextSm = 'Are you sure you want to do the thing?';
    const bodyTextLg = 'Are you really absolutely sure you want to do the '
        'thing that this modal will do?';

    var bodyTextLarge = false;
    var repeatCount = 1;

    return StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (var i = 0; i < repeatCount; i++) ...[
            // An icon with a pale circular background at top
            CircleAvatar(
              radius: 32,
              backgroundColor: Colors.green[100],
              child: const Icon(
                Icons.check,
                color: Colors.green,
                size: 32,
              ),
            ),
            // A standard size padding between the icon and text
            const SizedBox(
              height: Insets.gutter,
            ),
            // The text shown in the modal
            Text(
              bodyTextLarge ? bodyTextLg : bodyTextSm,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            // A standard size padding between the text and the 2 extra buttons
            const SizedBox(
              height: Insets.gutter,
            ),
          ],
          // 2 extra buttons to demonstrate stateful nature of this modal
          Wrap(
            spacing: Insets.gutter,
            runSpacing: Insets.gutter,
            children: [
              TextButton(
                onPressed: () {
                  setState(() {
                    bodyTextLarge = !bodyTextLarge;
                  });
                },
                child: const Text('Toggle wider text'),
              ),
              TextButton(
                onPressed: () {
                  setState(() => repeatCount++);
                },
                child: const Text('Add Content'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDangerModal(BuildContext context) {
    return StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // An icon with a pale circular background at top
          CircleAvatar(
            radius: 32,
            backgroundColor: Colors.red[100],
            child: const Icon(
              Icons.warning_amber_sharp,
              color: Colors.red,
              size: 32,
            ),
          ),
          // A standard size padding between the icon and text
          const SizedBox(
            height: Insets.gutter,
          ),
          // The text shown in the modal
          RichText(
            text: TextSpan(
              text: 'Danger! ',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Colors.red),
              children: [
                TextSpan(
                  text: 'Are you sure you want to do this?',
                  style: Theme.of(context).textTheme.bodyLarge,
                  children: const [],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
