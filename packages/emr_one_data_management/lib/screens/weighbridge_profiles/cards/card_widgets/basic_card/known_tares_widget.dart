import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_data_management/screens/weighbridge_profiles/form_data/known_tare_data.dart';
import 'package:emr_one_data_management/screens/weighbridge_profiles/weighbridges.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';

class KnownTaresWidget extends StatefulWidget {
  const KnownTaresWidget({
    required this.model,
    required this.uomService,
    required this.uoms,
    super.key,
  });

  final WeighbridgeFormData model;
  final UomService uomService;
  final ValueNotifier<List<Uom>> uoms;

  @override
  State<KnownTaresWidget> createState() => _KnownTareSelectionTableState();
}

class _KnownTareSelectionTableState extends State<KnownTaresWidget> {
  bool _showSelectYardMessage = false;

  @override
  void initState() {
    super.initState();
    widget.model.yard.addListener(_yardChangeListener);
  }

  @override
  void dispose() {
    widget.model.yard.removeListener(_yardChangeListener);
    super.dispose();
  }

  void _yardChangeListener() {
    if (_hasTerritory() && _showSelectYardMessage) {
      setState(() => _showSelectYardMessage = false);
    }
  }

  bool _hasTerritory() {
    return widget.model.yard.value?.company?.territory?.code
            .trim()
            .isNotEmpty ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    final tares = widget.model.knownTares.value;
    final cs = Theme.of(context).colorScheme;

    return BorderedCardWithTitle(
      title: context.l10n.knownTares,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 4,
              horizontal: Insets.gutter,
            ),
            child: Row(
              children: [
                Expanded(
                  child: EmrSwitchFormField(
                    labelText: context.l10n.allowSaving,
                    binding: widget
                        .model.knownTareConfigurations.value.saveKnownTares,
                  ),
                ),
                Expanded(
                  child: EmrTextFormField(
                    labelText: context.l10n.autoExpiryInDays,
                    hintText: 'e.g. 2',
                    binding: widget.model.knownTareConfigurations.value
                        .knownTareExpiryDays,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    enabled: widget
                        .model.knownTareConfigurations.value.saveKnownTares,
                    validator: (value) {
                      if (widget.model.knownTareConfigurations.value
                          .saveKnownTares.value) {
                        return Validators.join([
                          Validators.required(value),
                          Validators.integer(value, min: 1),
                        ]);
                      }
                      return null;
                    },
                  ),
                ),
                const Expanded(
                  child: SizedBox.shrink(),
                ),
                const Expanded(
                  child: SizedBox.shrink(),
                ),
                const Expanded(
                  child: SizedBox.shrink(),
                ),
                const Expanded(
                  child: SizedBox.shrink(),
                ),
              ],
            ),
          ),
          Container(
            color: cs.surfaceContainerHighest,
            padding: const EdgeInsets.symmetric(
              vertical: 4,
              horizontal: Insets.gutter,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: Insets.gutter / 2),
                    child: Text(
                      context.l10n.uom,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: cs.onSurfaceVariant,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: Insets.gutter / 2),
                    child: Text(
                      context.l10n.comments,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: cs.onSurfaceVariant,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 190,
                  child: Padding(
                    padding: const EdgeInsets.only(top: Insets.gutter / 2),
                    child: Text(
                      context.l10n.expiryDate,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: cs.onSurfaceVariant,
                      ),
                    ),
                  ),
                ),
                OutlinedButton.icon(
                  onPressed: () {
                    if (!_hasTerritory()) {
                      setState(() => _showSelectYardMessage = true);
                    } else {
                      _addRow();
                      if (_showSelectYardMessage) {
                        setState(() => _showSelectYardMessage = false);
                      }
                    }
                  },
                  icon: Icon(Icons.add, color: cs.primary),
                  label: Text(
                    context.l10n.add,
                    style: TextStyle(color: cs.primary),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 4),
          if (_showSelectYardMessage && !_hasTerritory()) ...[
            Padding(
              padding: const EdgeInsets.all(Insets.gutter),
              child: Center(
                child: Text(
                  context.l10n.yardRequiredToLoadUoms,
                  style: TextStyle(color: cs.onSurfaceVariant),
                ),
              ),
            ),
          ] else ...[
            ListView.builder(
              itemCount: tares.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                final row = tares[index];
                final isAlternate = index.isOdd;

                final territoryCode =
                    widget.model.yard.value?.company?.territory?.code.trim() ??
                        '';
                if (row.uom.value != null &&
                    !widget.uomService
                        .uomValidForTerritory(row.uom.value!, territoryCode)) {
                  row.uom.value = null;
                  row.value.value = null;
                }

                return Container(
                  key: ValueKey(row),
                  color: isAlternate
                      ? cs.surfaceContainerHighest
                      : Colors.transparent,
                  padding: const EdgeInsets.symmetric(
                    vertical: Insets.gutter / 2,
                    horizontal: Insets.gutter,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: ValueListenableBuilder(
                          valueListenable: widget.uoms,
                          builder: (context, value, child) => UomInputField(
                            values: widget.uoms.value,
                            hintText: context.l10n.weight,
                            initialValue: (row.uom.value != null &&
                                    row.value.value != null)
                                ? ValueUomPair(
                                    uom: row.uom.value!,
                                    value: row.value.value!,
                                  )
                                : null,
                            onChanged: (v) {
                              row.uom.value = v.uom;
                              row.value.value = v.value;
                            },
                            validator: (value) {
                              final validation = Validators.required(value);

                              if (validation == null &&
                                  widget.uoms.value.isNotEmpty) {
                                final territory = widget.model.yard.value
                                        ?.company?.territory?.code ??
                                    '';
                                if (row.uom.value != null &&
                                    !widget.uomService.uomValidForTerritory(
                                      row.uom.value!,
                                      territory,
                                    )) {
                                  return context.l10n.invalidUOMForYard(
                                    row.uom.value!.uomCode.replaceAll('XX', ''),
                                    widget.model.yard.value!.yardCode,
                                  );
                                }
                              }
                              return validation;
                            },
                          ),
                        ),
                      ),
                      const SizedBox(width: Insets.gutter),
                      Expanded(
                        child: EmrTextFormField(
                          hintText: context.l10n.enterYourComments,
                          binding: row.comments,
                        ),
                      ),
                      const SizedBox(width: Insets.gutter),
                      SizedBox(
                        width: 155,
                        child: EmrDateFormField(
                          binding: row.expiryDate,
                        ),
                      ),
                      const SizedBox(width: Insets.gutter),
                      OutlinedButton.icon(
                        onPressed: () => _removeRow(row),
                        icon: Icon(Icons.delete, color: cs.error),
                        label: Text(
                          context.l10n.delete,
                          style: TextStyle(color: cs.error),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ],
      ),
    );
  }

  void _addRow() {
    final updated = List<KnownTareData>.from(widget.model.knownTares.value)
      ..add(KnownTareData());
    widget.model.knownTares.value = updated;
    setState(() {});
  }

  void _removeRow(KnownTareData row) {
    widget.model.knownTares.value =
        widget.model.knownTares.value.where((e) => e != row).toList();
    setState(() {});
  }
}
