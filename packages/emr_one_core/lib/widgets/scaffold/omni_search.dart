import 'dart:math';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/src/controllers/omni_search_controller.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EmrOmniSearch extends StatefulWidget {
  const EmrOmniSearch({super.key});

  @override
  State<EmrOmniSearch> createState() => _EmrOmniSearchState();
}

class _EmrOmniSearchState extends State<EmrOmniSearch> {
  late TextEditingController _searchController;
  late EmrOmniSearchController _scaffoldSearchController;
  final FocusNode _focusNode = FocusNode();
  double searchFieldWidth = EmrOneConstants.kOmniSearchDefaultWidth;
  double maxSearchFieldWidth = EmrOneConstants.kOmniSearchMaxExpansionWidth;

  @override
  void initState() {
    super.initState();
    _scaffoldSearchController = context.read<EmrOmniSearchController>();
    _scaffoldSearchController.addListener(_onScaffoldSearchControllerChange);

    _focusNode.addListener(_onSearchFieldFocusChanged);

    _searchController =
        TextEditingController(text: _scaffoldSearchController.text);
  }

  void _onScaffoldSearchControllerChange() {
    _searchController.text = _scaffoldSearchController.text;
  }

  void _onSearchFieldFocusChanged() {
    if (_focusNode.hasFocus) {
      setState(() {
        searchFieldWidth = maxSearchFieldWidth;
      });
    } else {
      setState(() {
        searchFieldWidth = EmrOneConstants.kOmniSearchDefaultWidth;
      });
    }
  }

  @override
  void dispose() {
    _focusNode.removeListener(_onSearchFieldFocusChanged);
    _focusNode.dispose();
    _searchController.dispose();
    _scaffoldSearchController.removeListener(_onScaffoldSearchControllerChange);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final scaffoldSearchController = context.read<EmrOmniSearchController>();
    final media = MediaQuery.of(context);
    maxSearchFieldWidth = min(
      media.size.width - EmrOneConstants.kOmniSearchExpansionPadding,
      EmrOneConstants.kOmniSearchMaxExpansionWidth,
    );

    final searchBar = Theme(
      data: ThemeData(
        brightness: Brightness.light,
      ),
      child: AnimatedContainer(
        duration: const Duration(
          milliseconds: EmrOneConstants.kOmniSearchExpandDuration,
        ),
        curve: Curves.easeInOut,
        width: searchFieldWidth,
        child: _buildSearchBar(context, scaffoldSearchController),
      ),
    );

    if (kIsWeb) {
      return ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: searchFieldWidth,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: Insets.gutter / 2),
          child: searchBar,
        ),
      );
    }

    return searchBar;
  }

  SearchBar _buildSearchBar(
    BuildContext context,
    EmrOmniSearchController scaffoldSearchController,
  ) {
    return SearchBar(
      focusNode: _focusNode,
      backgroundColor: const WidgetStatePropertyAll<Color>(
        Colors.white,
      ),
      hintText: context.l10n.search,
      constraints: const BoxConstraints(
        minHeight: 40,
        maxHeight: 40,
      ),
      elevation: WidgetStateProperty.all(2),
      onSubmitted: (value) {
        scaffoldSearchController
          ..setText(value)
          ..search();
      },
      controller: _searchController,
      trailing: [
        if (_searchController.text.isNotEmpty)
          IconButton(
            onPressed: () {
              _searchController.clear();
              scaffoldSearchController
                ..setText('')
                ..search();
            },
            icon: const Icon(Icons.clear),
          )
        else
          const SizedBox(),
        IconButton(
          onPressed: () {
            scaffoldSearchController
              ..setText(_searchController.text)
              ..search();
          },
          icon: const Icon(Icons.search),
        ),
      ],
    );
  }
}
