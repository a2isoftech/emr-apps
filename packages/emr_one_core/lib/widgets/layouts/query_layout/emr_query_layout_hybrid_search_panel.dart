import 'package:emr_one_core/config/config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EmrQueryLayoutHybridSearchPanel extends StatelessWidget {
  const EmrQueryLayoutHybridSearchPanel({
    required this.searchController,
    required this.searchChanged,
    this.showSearch,
    super.key,
  });

  final TextEditingController searchController;

  final void Function() searchChanged;
  final bool? showSearch;

  @override
  Widget build(BuildContext context) {
    final appConfig = Provider.of<AppConfig>(context, listen: false);

    return Padding(
      padding: const EdgeInsets.only(
        left: Insets.gutter,
      ),
      child: Row(
        children: [
          Visibility(
            visible: showSearch ?? true,
            child: Expanded(
              child: TextFormField(
                autofocus: appConfig.isWeb,
                controller: searchController,
                textInputAction: TextInputAction.search,
                onFieldSubmitted: (_) => searchChanged(),
                decoration: InputDecoration(
                  hintText: context.l10n.search,
                  isDense: true,
                  contentPadding: const EdgeInsets.all(12),
                  prefixIcon: IconButton(
                    onPressed: searchChanged,
                    icon: const Icon(Icons.search),
                  ),
                  suffixIcon: ValueListenableBuilder(
                    valueListenable: searchController,
                    builder: (_, value, __) {
                      return (searchController.text.isNotEmpty)
                          ? IconButton(
                              icon: const Icon(Icons.clear),
                              onPressed: () {
                                searchController.clear();
                                searchChanged();
                              },
                            )
                          : const SizedBox();
                    },
                  ),
                ),
                onTapOutside: (_) {
                  // Unfocus the text field to hide the keyboard.
                  FocusScope.of(context).unfocus();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
