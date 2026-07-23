import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/controller/quick_quotes_controller.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/widgets/flyouts/account_search/widgets/widgets.dart';
import 'package:flutter/material.dart';

class AccountSearch extends StatefulWidget {
  const AccountSearch({required this.controller, super.key});

  final QuickQuoteController controller;

  @override
  State<AccountSearch> createState() => _AccountSearchState();
}

class _AccountSearchState extends State<AccountSearch> {
  late bool isSearching;
  late TextEditingController accountController;
  late ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    isSearching = widget.controller.baseState.existingAccountState.isBusy;
    accountController = TextEditingController();
    scrollController = ScrollController();

    scrollController.addListener(() {
      if (scrollController.position.atEdge &&
          scrollController.position.pixels != 0) {
        final existingAccountState =
            widget.controller.baseState.existingAccountState;

        if ((existingAccountState.pageInfo?.hasNextPage ?? false) &&
            !existingAccountState.isBusy) {
          _accountSearching(
            endCursor: existingAccountState.pageInfo?.endCursor,
          );
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context, setState) {
        return Column(
          children: [
            AccountSearchBox(
              accountController: accountController,
              isSearching: isSearching,
              onChanged: (value) {
                _accountSearching();
              },
            ),
            if (widget
                    .controller
                    .baseState
                    .existingAccountState
                    .accounts
                    ?.isNotEmpty ??
                false)
              AccountList(
                controller: widget.controller,
                accountController: accountController,
                setState: setState,
                scrollController: scrollController,
              ),
            Padding(
              padding: const EdgeInsets.all(Insets.gutter / 2),
              child: Text(context.l10n.or),
            ),
            CreateAccountButton(controller: widget.controller),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    accountController.dispose();
    super.dispose();
  }

  void _accountSearching({String? endCursor}) {
    setState(() {
      widget.controller.accountSearchBusy();
      isSearching = widget.controller.baseState.existingAccountState.isBusy;
    });
    widget.controller
        .existingAccountSearch(
          searchText: accountController.text,
          endCursor: endCursor,
          first: 20,
        )
        .then(
          (value) => setState(() {
            isSearching =
                widget.controller.baseState.existingAccountState.isBusy;
          }),
        );
  }
}
