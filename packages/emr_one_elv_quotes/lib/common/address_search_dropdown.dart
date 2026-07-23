import 'package:emr_one_elv_quotes/pages/quick_quotes/controller/controller_imports.dart';

class AddressSearchDropdown extends StatefulWidget {
  const AddressSearchDropdown({
    required this.addressService,
    required this.onAddressSelected,
    required this.yardService,
    required this.addressController,
    this.postCode,
    super.key,
  });
  final AddressService addressService;
  final void Function(Address) onAddressSelected;
  final YardService yardService;
  final String? postCode;
  final TextEditingController addressController;

  @override
  AddressSearchDropdownState createState() => AddressSearchDropdownState();
}

class AddressSearchDropdownState extends State<AddressSearchDropdown> {
  final LayerLink _layerLink = LayerLink();
  OverlayEntry? _overlayEntry;
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
          _showOverlay();
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
          _removeOverlay();
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

  void _showOverlay() {
    _removeOverlay();
    _overlayEntry = _createOverlayEntry();
    Overlay.of(context).insert(_overlayEntry!);
  }

  void _removeOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  OverlayEntry _createOverlayEntry() {
    return OverlayEntry(
      builder: (context) => Positioned(
        width: 320,
        child: CompositedTransformFollower(
          link: _layerLink,
          showWhenUnlinked: false,
          offset: const Offset(0, 58),
          child: Material(
            elevation: 4,
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 3,
              child: ListView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                itemCount: _suggestions.length,
                itemBuilder: (context, index) {
                  final selectedAddress = _suggestions[index];
                  return ListTile(
                    selected: selectedAddress.id.isEmpty,
                    selectedTileColor: Theme.of(context).colorScheme.primary,
                    selectedColor: Theme.of(context).colorScheme.onPrimary,
                    title: selectedAddress.id.isEmpty
                        ? Center(child: Text(selectedAddress.description))
                        : Text(selectedAddress.description),
                    onTap: () async {
                      final currentAddressId = _suggestions[index].id;

                      setState(() {
                        widget.addressController.text =
                            _suggestions[index].description;
                        _suggestions = [];
                        _removeOverlay();
                      });

                      final address = await _fetchAddressById(currentAddressId);
                      if (address != null) {
                        widget.onAddressSelected(address);
                      }
                    },
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: Insets.gutter / 2),
      child: SizedBox(
        width: 320,
        child: CompositedTransformTarget(
          link: _layerLink,
          child: TextFormField(
            controller: widget.addressController,
            decoration: InputDecoration(
              suffixIcon: _isLoading
                  ? const Padding(
                      padding: EdgeInsets.all(Insets.gutter / 2),
                      child: CircularProgressIndicator(),
                    )
                  : null,
              label: Text(context.l10n.collectionAddress),
            ),
            onChanged: _onTextChanged,
            onTap: () {
              if (widget.addressController.text == widget.postCode) {
                _onTextChanged(widget.addressController.text);
              }
            },
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _removeOverlay();
    super.dispose();
  }
}
