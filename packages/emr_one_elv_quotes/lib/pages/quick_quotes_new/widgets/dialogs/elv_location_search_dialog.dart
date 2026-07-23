import 'package:emr_one_elv_core/emr_one_elv_core.dart';
import 'package:emr_one_elv_quotes/elv_quotes.dart';
import 'package:emr_one_elv_quotes/pages/quick_quotes/controller/controller_imports.dart';
import 'package:emr_sharedtypes/enums/enums.dart';
import 'package:signals/signals_flutter.dart';

class ElvLocationSearchDialog extends StatefulWidget {
  const ElvLocationSearchDialog({
    required this.controller,
    this.initialLocationSelectedCode,
    this.onLocationSelectionChanged,
    super.key,
  });

  final QuickQuotesNewController controller;
  final String? initialLocationSelectedCode;
  final void Function(AccountLocation selectedLocation)?
  onLocationSelectionChanged;

  @override
  State<ElvLocationSearchDialog> createState() =>
      _ElvLocationSearchDialogState();
}

class _ElvLocationSearchDialogState extends State<ElvLocationSearchDialog> {
  late final ValueNotifier<String> _searchText;
  late final Signal<List<AccountLocation>> _locations;

  late final List<AccountLocation> _allLocations;

  Timer? _debounce;

  @override
  void initState() {
    super.initState();

    _searchText = ValueNotifier('');
    _allLocations = widget.controller.state.selectedAccount?.locations ?? [];

    _locations = Signal(_allLocations);

    _searchText.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    _debounce?.cancel();

    _searchText.removeListener(_onSearchChanged);
    _searchText.dispose();

    _locations.dispose();

    super.dispose();
  }

  void _onSearchChanged() {
    _debounce?.cancel();

    _debounce = Timer(const Duration(milliseconds: 300), _filterLocations);
  }

  void _filterLocations() {
    final query = _searchText.value.toLowerCase().trim();

    if (query.isEmpty) {
      _locations.value = _allLocations;
      return;
    }

    _locations.value = _allLocations.where((x) {
      return x.name.toLowerCase().contains(query) ||
          x.code.toLowerCase().contains(query);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Column(
          children: [
            EmrTextFormField(
              binding: _searchText,
              hintText: context.l10n.address,
            ),
            SizedBox(
              height: constraints.maxHeight - 140,
              child: Watch(
                (_) => ListView.builder(
                  itemCount: _locations.value.length,
                  itemBuilder: (context, index) {
                    final selectedLocation = _locations.value[index];

                    return _accountTile(
                      selectedLocation,
                      selectedLocation.code ==
                          widget.initialLocationSelectedCode,
                    );
                  },
                ),
              ),
            ),
            if (widget.controller.state.selectedAccount?.accountType ==
                AccountTypeEnum.retail) ...[
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
                          await elvStandardFlyout(
                            context: context,
                            body: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: Insets.gutter,
                              ),
                              child: ElvSearchLocationWidget(
                                controller: widget.controller,
                                onAddressSelected: (selectedAddress) {},
                              ),
                            ),
                            heading: context.l10n.addNewAddress,
                          );
                        },
                        child: Text(context.l10n.linkNewLocation),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ],
        );
      },
    );
  }

  Widget _accountTile(AccountLocation location, bool selected) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Insets.gutter / 4),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: Insets.gutter / 2,
          vertical: Insets.gutter / 4,
        ),
        title: _richText(context.l10n.locationCode, location.code, selected),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _richText(context.l10n.location, location.name, selected),
            _richText(null, location.address.getShortAddress, selected),
          ],
        ),
        selected: selected,
        selectedColor: Theme.of(context).colorScheme.onPrimary,
        selectedTileColor: Theme.of(context).colorScheme.primary,
        onTap: () {
          widget.onLocationSelectionChanged?.call(location);
          context.pop();
        },
      ),
    );
  }

  Widget _richText(String? title, String value, bool selected) {
    final textTheme = selected
        ? Theme.of(context).primaryTextTheme.bodyMedium
        : Theme.of(context).textTheme.bodyMedium;

    return Text.rich(
      TextSpan(
        children: [
          if (title != null) ...[
            TextSpan(
              text: title,
              style: textTheme!.copyWith(fontWeight: FontWeight.bold),
            ),
            const TextSpan(text: ': '),
          ],
          TextSpan(text: value, style: textTheme),
        ],
      ),
    );
  }
}
