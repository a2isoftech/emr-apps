import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/emr_one_elv_core.dart';
import 'package:emr_one_elv_core/models/address.dart';
import 'package:emr_one_elv_quotes/elv_quotes.dart';
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

class ElvSearchLocationWidget extends StatefulWidget {
  const ElvSearchLocationWidget({
    required this.controller,
    required this.onAddressSelected,
    this.initialAddress,
    super.key,
  });

  final QuickQuotesNewController controller;
  final void Function(Address selectedAddress) onAddressSelected;
  final String? initialAddress;

  @override
  State<ElvSearchLocationWidget> createState() =>
      _ElvSearchLocationWidgetState();
}

class _ElvSearchLocationWidgetState extends State<ElvSearchLocationWidget> {
  late final ValueNotifier<String?> _searchText;
  late final Signal<bool> _loading;
  late final ScrollController _scrollController;
  late final Signal<List<AddressSearchResult>> _address;

  final _debounce = Debounceable<List<AddressSearchResult>>();

  @override
  void initState() {
    super.initState();

    _searchText = ValueNotifier(widget.initialAddress);
    _loading = Signal(false);
    _address = Signal([]);
    _scrollController = ScrollController()..addListener(_onScroll);

    _searchText.addListener(_onSearchChanged);

    if ((widget.initialAddress ?? '').isNotEmpty) {
      _triggerSearch();
    }
  }

  void _onSearchChanged() {
    _triggerSearch();
  }

  void _triggerSearch() {
    _debounce
        .call(
          () async {
            _loading.value = true;

            final locations = await widget.controller.addressService.findAsync(
              _searchText.value ?? '',
              5,
            );

            return locations.response ?? [];
          },
          then: (result) {
            if (!mounted) return;

            _address.value = result;
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

    final locations = await widget.controller.addressService.findAsync(
      _searchText.value ?? '',
      5,
    );

    if (!mounted) return;

    _address.value = [..._address.value, ...(locations.response ?? [])];

    _loading.value = false;
  }

  @override
  void dispose() {
    _debounce.dispose();

    _searchText.removeListener(_onSearchChanged);
    _searchText.dispose();

    _loading.dispose();

    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();

    _address.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        EmrTextFormField(
          binding: _searchText,
          hintText: context.l10n.pleaseEnterPostcode,
          labelText: context.l10n.address,
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
        Expanded(
          child: Watch(
            (_) => CustomScrollView(
              controller: _scrollController,
              physics: const AlwaysScrollableScrollPhysics(),
              slivers: [
                SliverList(
                  delegate: SliverChildBuilderDelegate((context, index) {
                    final selectedAddress = _address.value[index];

                    return ListTile(
                      title: Text(selectedAddress.description),
                      onTap: () async {
                        final addressResponse = await widget
                            .controller
                            .addressService
                            .retrieveAsync(selectedAddress.id);

                        if (addressResponse.isOk) {
                          widget.onAddressSelected(addressResponse.response!);
                        }

                        if (!context.mounted) return;
                        context.pop();
                      },
                    );
                  }, childCount: _address.value.length),
                ),
              ],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  Theme.of(context).colorScheme.secondary,
                ),
                foregroundColor: WidgetStatePropertyAll(
                  Theme.of(context).colorScheme.onSecondary,
                ),
              ),
              child: Text(context.l10n.manualAddress),
              onPressed: () async {
                context.pop();

                await elvStandardFlyout(
                  context: context,
                  body: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: Insets.gutter,
                    ),
                    child: ElvManualAddressDialog(
                      controller: widget.controller,
                      onAddressChanged: (selectedAddress) {
                        widget.onAddressSelected(selectedAddress);
                      },
                    ),
                  ),
                  heading: context.l10n.createAccount,
                );
              },
            ),
            const SizedBox(width: Insets.gutter),
            OutlinedButton(
              onPressed: context.pop,
              child: Text(context.l10n.back),
            ),
          ],
        ),
      ],
    );
  }
}
