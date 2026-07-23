import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_elv_core/models/address.dart';
import 'package:emr_one_elv_core/widgets/flyout/elv_flyouts.dart';
import 'package:emr_one_elv_quotes/common/common.dart';
import 'package:emr_one_elv_quotes/models/api/response_models/address_search_result.dart';
import 'package:emr_one_elv_quotes/services/address_service.dart';
import 'package:flutter/material.dart';

class AddressLookup extends StatefulWidget {
  const AddressLookup({
    required this.emitAddress,
    required this.value,
    required this.service,
    this.onManualClick,
    super.key,
  });
  final void Function(Address? address) emitAddress;
  final String? value;
  final AddressService service;
  final void Function()? onManualClick;

  @override
  State<AddressLookup> createState() => _AddressLookupState();
}

class _AddressLookupState extends State<AddressLookup> {
  late final TextEditingController controller;
  late final FocusNode focusAddress;

  @override
  void initState() {
    super.initState();
    focusAddress = FocusNode();
    focusAddress.addListener(_onFocus);
    controller = TextEditingController();
  }

  @override
  void dispose() {
    focusAddress.dispose();
    controller.dispose();
    super.dispose();
  }

  Future<void> _onFocus() async {
    if (focusAddress.hasFocus) {
      await elvStandardFlyout(
        context: context,
        body: AddressSearchResultsDialog(
          service: widget.service,
          emitAddress: (String id) {
            widget.service.retrieveAsync(id).then(
                  (value) => widget.emitAddress(value.response),
                );
            Navigator.of(context).pop();
          },
        ),
        heading: context.l10n.selectAddress,
        actionButtons: [
          FlyoutButtons(
            onPressed: () {
              context.pop();
              widget.onManualClick?.call();
            },
            backgroundColor: Theme.of(context).colorScheme.secondary,
            textColor: Theme.of(context).colorScheme.onSecondary,
            label: context.l10n.manual,
          ),
          FlyoutButtons(onPressed: context.pop, label: context.l10n.back),
        ],
      ).then(
        (value) => focusAddress.nextFocus(),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusAddress,
      key: Key('AddLookup${widget.value}'),
      decoration: InputDecoration(
        hintText: '${context.l10n.searchForAnAddress}*',
      ),
      controller: TextEditingController(
        text: widget.value,
      ),
      mouseCursor: SystemMouseCursors.click,
      onTap: _onFocus,
      readOnly: true,
      validator: (val) =>
          (val ?? '').isEmpty ? context.l10n.pleaseAddAnAddress : null,
    );
  }
}

class AddressSearchResultsDialog extends StatefulWidget {
  const AddressSearchResultsDialog({
    required this.emitAddress,
    required this.service,
    super.key,
  });
  final void Function(String id) emitAddress;

  final AddressService service;

  @override
  State<StatefulWidget> createState() => AddressSeachResultsDialogState();
}

class AddressSeachResultsDialogState extends State<AddressSearchResultsDialog> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  List<AddressSearchResult>? _results;
  String text = '';
  bool searching = false;
  final _debounceableAddressLookupSearch = Debounceable<dynamic>(
    debounceDuration: const Duration(milliseconds: 800),
  );

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: Insets.gutter),
          child: Form(
            key: formKey,
            child: TextFormField(
              autofocus: true,
              autocorrect: false,
              decoration: InputDecoration(
                labelText: context.l10n.pleaseEnterPostcode,
                isDense: false,
              ),
              validator: (value) {
                if ((value ?? '').isEmpty || (value ?? '').length < 4) {
                  return context.l10n.searchAtLeast4Characters;
                }
                return null;
              },
              onChanged: (v) async {
                await _debounceableAddressLookupSearch.call(() async {
                  if (formKey.currentState?.validate() ?? false) {
                    setState(() {
                      searching = true;
                      _results = null;
                    });

                    final results = await widget.service.findAsync(v, 20);
                    setState(() {
                      searching = false;
                      _results = results.response;
                    });
                  } else {
                    setState(() {
                      searching = false;
                      _results = null;
                    });
                  }
                });
              },
            ),
          ),
        ),
        if (_results == null)
          SizedBox(
            height: 200,
            child: searching ? const BusyIndicator() : null,
          ),
        if (_results != null && _results!.isEmpty) Text(context.l10n.noResults),
        if (_results != null && _results!.isNotEmpty)
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(Insets.gutter / 4),
              child: ListView.builder(
                controller: ScrollController(),
                itemBuilder: (_, i) {
                  return InkWell(
                    child: ListTile(
                      title: Text(_results![i].description),
                    ),
                    onTap: () async {
                      widget.emitAddress(_results![i].id);
                    },
                  );
                },
                itemCount: _results!.length,
              ),
            ),
          ),
      ],
    );
  }
}
