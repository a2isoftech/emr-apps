import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

class LotCommentDlg extends StatefulWidget {
  const LotCommentDlg({super.key});

  @override
  State<LotCommentDlg> createState() => _LotCommentDlgState();
}

class _LotCommentDlgState extends State<LotCommentDlg> {
  final Signal<String> comment = signal<String>('');
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _controller.addListener(() {
      comment.value = _controller.text;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Insets.gutter),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            autofocus: true,
            controller: _controller,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: Insets.gutter / 2),
            child: Text(context.l10n.enterACommentForThisLot),
          ),
          const SizedBox(height: Insets.gutter),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              OutlinedButton(
                onPressed: () {
                  Navigator.of(context, rootNavigator: true).pop();
                },
                child: Text(context.l10n.cancel),
              ),
              ElevatedButton(
                onPressed: comment.watch(context).isNotEmpty
                    ? () {
                        Navigator.of(context, rootNavigator: true)
                            .pop(comment.value);
                      }
                    : null,
                child: Text(context.l10n.ok),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
