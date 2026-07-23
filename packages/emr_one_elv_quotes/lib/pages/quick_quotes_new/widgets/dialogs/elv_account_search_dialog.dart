import 'package:emr_one_elv_core/emr_one_elv_core.dart';
import 'package:emr_one_elv_quotes/elv_quotes.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/controller/controller_imports.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes_new/widgets/elv_account_search_expendable_tile_widget.dart';
import 'package:signals/signals_flutter.dart';

class ElvAccountSearchDialog extends StatefulWidget {
  const ElvAccountSearchDialog({
    required this.controller,
    this.initialAccountSelectedCode,
    this.initialLocationSelectedCode,
    this.onAccountSelectionChanged,
    super.key,
  });

  final QuickQuotesNewController controller;
  final String? initialAccountSelectedCode;
  final String? initialLocationSelectedCode;
  final void Function(
    AccountModel selectedAccount,
    AccountLocation selectedLocation,
  )?
  onAccountSelectionChanged;

  @override
  State<ElvAccountSearchDialog> createState() => _ElvAccountSearchDialogState();
}

class _ElvAccountSearchDialogState extends State<ElvAccountSearchDialog> {
  late final ValueNotifier<String?> _searchText;
  late final Signal<bool> _loading;
  late final Signal<List<AccountModel>> _accounts;
  late final ScrollController _scrollController;

  final _debounce = Debounceable<List<AccountModel>>();

  @override
  void initState() {
    super.initState();

    _searchText = ValueNotifier(
      widget.controller.state.existingAccountState.existingSearchText,
    );

    _loading = Signal(false);
    _accounts = Signal(
      widget.controller.state.existingAccountState.accounts ?? [],
    );

    _scrollController = ScrollController()..addListener(_onScroll);

    _searchText.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    _debounce.dispose();

    _searchText.removeListener(_onSearchChanged);
    _searchText.dispose();

    _loading.dispose();
    _accounts.dispose();

    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();

    super.dispose();
  }

  void _onSearchChanged() {
    _triggerSearch();
  }

  void _triggerSearch() {
    _debounce
        .call(
          () async {
            _loading.value = true;

            await widget.controller.accountSearch(
              searchText: _searchText.value ?? '',
              first: 20,
            );

            return widget.controller.state.existingAccountState.accounts ?? [];
          },
          then: (result) {
            if (!mounted) return;

            _accounts.value = result;
            _loading.value = false;
          },
        )
        .whenComplete(() {
          if (mounted) {
            _loading.value = false;
          }
        });
  }

  Future<void> _onScroll() async {
    if (!_scrollController.hasClients) return;

    final position = _scrollController.position;
    if (!position.atEdge || position.pixels == 0) return;

    final state = widget.controller.state.existingAccountState;

    if (!(state.pageInfo?.hasNextPage ?? false) || state.isBusy) return;
    _loading.value = true;

    await widget.controller.accountSearch(
      searchText: _searchText.value ?? '',
      endCursor: state.pageInfo?.endCursor,
      first: 20,
    );

    if (!mounted) return;

    _accounts.value =
        widget.controller.state.existingAccountState.accounts ?? [];

    _loading.value = false;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Column(
          children: [
            EmrTextFormField(
              binding: _searchText,
              hintText: context.l10n.account,
              suffix: Watch(
                (_) => _loading.value
                    ? const SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(),
                      )
                    : const SizedBox.shrink(),
              ),
            ),
            SizedBox(
              height: constraints.maxHeight - 140,
              child: Watch(
                (_) => CustomScrollView(
                  controller: _scrollController,
                  physics: const AlwaysScrollableScrollPhysics(),
                  slivers: [
                    SliverList(
                      delegate: SliverChildBuilderDelegate((context, index) {
                        final account = _accounts.value[index];

                        final selected =
                            account.code == widget.initialAccountSelectedCode;

                        return account.locations.length > 1
                            ? ElvAccountSearchExpendableTile(
                                account: account,
                                selected: selected,
                                initialLocationSelectedCode:
                                    widget.initialLocationSelectedCode,
                                onTap: (location) {
                                  widget.onAccountSelectionChanged?.call(
                                    account,
                                    location,
                                  );
                                  context.pop();
                                },
                              )
                            : ElvAccountSearchAccountTile(
                                account: account,
                                selected: selected,
                                onTap: () {
                                  widget.onAccountSelectionChanged?.call(
                                    account,
                                    account.locations.first,
                                  );
                                  context.pop();
                                },
                              );
                      }, childCount: _accounts.value.length),
                    ),
                  ],
                ),
              ),
            ),

            ColoredBox(
              color: Theme.of(context).colorScheme.surface,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: Insets.gutter / 2,
                      ),
                      child: Text(context.l10n.or),
                    ),
                  ),
                  Center(
                    child: OutlinedButton(
                      onPressed: () async {
                        if (context.mounted) context.pop();

                        await elvStandardFlyout(
                          context: context,
                          body: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: Insets.gutter,
                            ),
                            child: ElvCreateAccountDialog(
                              controller: widget.controller,
                            ),
                          ),
                          heading: context.l10n.createAccount,
                        );
                      },
                      child: Text(context.l10n.createAccount),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
