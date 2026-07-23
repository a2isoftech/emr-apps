import 'dart:io';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:pro_image_editor/pro_image_editor.dart';

class EmrImageEditor extends StatefulWidget with AppBarExtender {
  const EmrImageEditor({
    required this.path,
    required this.outputPath,
    required this.onEditorClose,
    super.key,
  });

  final String path;
  final String outputPath;

  final void Function() onEditorClose;

  @override
  bool hideDefaultAppBar() => true;

  @override
  State<StatefulWidget> createState() {
    return _EmrImageEditorState();
  }
}

class _EmrImageEditorState extends State<EmrImageEditor> {
  @override
  Widget build(BuildContext context) {
    return ProImageEditor.file(
      File(widget.path),
      configs: ProImageEditorConfigs(
        blurEditor: const BlurEditorConfigs(enabled: false),
        filterEditor: const FilterEditorConfigs(enabled: false),
        tuneEditor: const TuneEditorConfigs(enabled: false),
        emojiEditor: const EmojiEditorConfigs(enabled: false),
        mainEditor: MainEditorConfigs(
          widgets: MainEditorWidgets(
            appBar: (editor, rebuildStream) {
              return ReactiveAppbar(
                builder: (context) => _buildAppBar(editor),
                stream: rebuildStream,
              );
            },
          ),
        ),
      ),
      callbacks: ProImageEditorCallbacks(
        onImageEditingComplete: (rawData) async {
          final file = File(widget.outputPath);
          await file.writeAsBytes(rawData);
        },
        onCloseEditor: (_) => widget.onEditorClose(),
      ),
    );
  }

  AppBar _buildAppBar(ProImageEditorState editor) {
    return AppBar(
      automaticallyImplyLeading: false,
      foregroundColor: Colors.white,
      backgroundColor: Colors.black,
      actions: [
        IconButton(
          tooltip: context.l10n.cancel,
          padding: const EdgeInsets.symmetric(horizontal: Insets.gutter),
          icon: const Icon(Icons.close),
          onPressed: editor.closeEditor,
        ),
        const Spacer(),
        IconButton(
          tooltip: context.l10n.undo,
          padding: const EdgeInsets.symmetric(horizontal: Insets.gutter),
          icon: Icon(
            Icons.undo,
            color: editor.canUndo ? Colors.white : Colors.white.withAlpha(80),
          ),
          onPressed: editor.undoAction,
        ),
        IconButton(
          tooltip: context.l10n.redo,
          padding: const EdgeInsets.symmetric(horizontal: Insets.gutter),
          icon: Icon(
            Icons.redo,
            color: editor.canRedo ? Colors.white : Colors.white.withAlpha(80),
          ),
          onPressed: editor.redoAction,
        ),
        IconButton(
          tooltip: context.l10n.done,
          padding: const EdgeInsets.symmetric(horizontal: Insets.gutter),
          icon: Icon(
            Icons.done,
            color: editor.canUndo ? Colors.white : Colors.white.withAlpha(80),
          ),
          iconSize: 28,
          onPressed: editor.canUndo ? editor.doneEditing : null,
        ),
      ],
    );
  }
}
