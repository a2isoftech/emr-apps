import 'package:emr_one_elv_quotes/pages/quick_quotes/controller/controller_imports.dart';
import 'package:emr_one_elv_quotes/pages/summary/dialogs/edit_dialogs.dart';

class AddressSearchFlyout extends StatefulWidget {
  const AddressSearchFlyout({
    required this.addressService,
    required this.onAddressSelected,
    required this.yardService,
    super.key,
  });

  final AddressService addressService;
  final void Function(Address) onAddressSelected;
  final YardService yardService;

  @override
  State<AddressSearchFlyout> createState() => _AddressSearchFlyoutState();
}

class _AddressSearchFlyoutState extends State<AddressSearchFlyout> {
  late final TextEditingController addressController;

  List<AddressSearchResult> _suggestions = [];
  bool _isLoading = false;
  final _debounceableAddressLookupSearch = Debounceable<dynamic>(
    debounceDuration: const Duration(milliseconds: 800),
  );

  Future<void> _onTextChanged(String input) async {
    await _debounceableAddressLookupSearch.call(() async {
      if (input.isNotEmpty) {
        setState(() {
          _isLoading = true;
        });
        try {
          final results = await widget.addressService.findAsync(input, 5);
          setState(() {
            _suggestions = results.response!;
          });
        } catch (error) {
          setState(() {
            _isLoading = false;
          });
        }
        setState(() {
          _isLoading = false;
        });
      } else {
        setState(() {
          _suggestions = [];
        });
      }
    });
  }

  Future<Address?> _fetchAddressById(String id) async {
    try {
      final apiResponse = await widget.addressService.retrieveAsync(id);
      if (apiResponse.isOk) {
        return apiResponse.response;
      } else {
        return null;
      }
    } catch (error) {
      return null;
    }
  }

  @override
  void initState() {
    super.initState();
    addressController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: addressController,
          decoration: InputDecoration(
            suffixIcon: _isLoading
                ? const Padding(
                    padding: EdgeInsets.all(Insets.gutter / 2),
                    child: CircularProgressIndicator(),
                  )
                : null,
            label: Text(context.l10n.addressSearch),
          ),
          onChanged: _onTextChanged,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: _suggestions.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              final selectedAddress = _suggestions[index];
              return ListTile(
                title: Text(selectedAddress.description),
                onTap: () async {
                  unawaited(
                    EmrDialog.busy(context, titleText: context.l10n.loading),
                  );
                  final address = await _fetchAddressById(selectedAddress.id);
                  if (address == null) {
                    if (context.mounted) {
                      context.pop();
                    }
                    return;
                  }
                  widget.onAddressSelected(address);
                  if (context.mounted) {
                    context.pop();
                    context.pop();
                  }
                },
              );
            },
          ),
        ),
        Row(
          spacing: Insets.gutter,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            OutlinedButton(
              onPressed: () {
                context.pop();
              },
              child: Text(context.l10n.goBack),
            ),
            ElevatedButton(
              child: Text(context.l10n.manualAddress),
              onPressed: () async {
                final address = await dialogManualAddress(
                  context: context,
                  yardService: widget.yardService,
                );
                if (address == null) {
                  return;
                }
                widget.onAddressSelected(address);
                if (context.mounted) {
                  context.pop();
                }
              },
            ),
          ],
        ),
      ],
    );
  }

  @override
  void dispose() {
    addressController.dispose();
    super.dispose();
  }
}
