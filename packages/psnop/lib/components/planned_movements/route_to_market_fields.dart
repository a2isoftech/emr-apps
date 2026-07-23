import 'dart:developer';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:psnop/models/planned_movements/route_to_market_model.dart';
import 'package:psnop/networking/psnop_api_helper.dart';
import 'package:psnop/repository/filters/depot_repository.dart';
import 'package:psnop/repository/filters/grade_repository.dart';

class RouteToMarketFields extends StatefulWidget {
  const RouteToMarketFields({required this.apiHelper, required Key key})
      : super(key: key);
  final PsnopApiHelper apiHelper;

  @override
  State<RouteToMarketFields> createState() => RouteToMarketFieldsState();
}

class RouteToMarketFieldsState extends State<RouteToMarketFields> {
  final _formKey = GlobalKey<FormState>();
  final originDepotTextController = TextEditingController();
  final destinationDepotTextController = TextEditingController();
  final gradeTextController = TextEditingController();
  final totalWeightTextController = TextEditingController();
  final movementDateTextController = TextEditingController();
  RouteToMarketModel routeToMarketModel = RouteToMarketModel();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Form(key: _formKey, child: _getRow(context)),
    );
  }

  Widget _getRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TypeAheadFormField(
          textFieldConfiguration: TextFieldConfiguration(
            controller: originDepotTextController,
            decoration: InputDecoration(
              labelText: context.l10n.psnopPlannedMovementsOriginDepot,
            ),
          ),
          suggestionsCallback: (pattern) async {
            final q = pattern.isNotEmpty ? pattern : '*';
            return DepotRepository.fetchDepotList(
              filter: q,
              apiHelper: widget.apiHelper,
            );
          },
          itemBuilder: (context, suggestion) {
            return ListTile(
              title: Text(
                '${suggestion.depotNumber} - ${suggestion.depotName}',
              ),
            );
          },
          onSuggestionSelected: (suggestion) {
            originDepotTextController.text = suggestion.depotName;
            setState(() {
              routeToMarketModel.originDepot = suggestion.depotNumber;
            });
          },
          validator: (value) {
            if (value != null && value.isNotEmpty) {
              return null;
            }
            return context.l10n.pleaseSelectaDepot;
          },
        ),
        TypeAheadFormField(
          enabled: routeToMarketModel.originDepot != null,
          textFieldConfiguration: TextFieldConfiguration(
            controller: destinationDepotTextController,
            decoration: InputDecoration(
              labelText: context.l10n.psnopPlannedMovementsDestinationDepot,
            ),
          ),
          suggestionsCallback: (pattern) async {
            final q = pattern.isNotEmpty ? pattern : '*';
            return DepotRepository.fetchDepotList(
              filter: q,
              apiHelper: widget.apiHelper,
            );
          },
          itemBuilder: (context, suggestion) {
            if (suggestion.depotNumber == routeToMarketModel.originDepot) {
              return const SizedBox.shrink();
            }
            return ListTile(
              title: Text(
                '${suggestion.depotNumber} - ${suggestion.depotName}',
              ),
            );
          },
          onSuggestionSelected: (suggestion) {
            destinationDepotTextController.text = suggestion.depotName;
            setState(() {
              routeToMarketModel.destinationDepot = suggestion.depotNumber;
            });
          },
          validator: (value) {
            if (value != null && value.isNotEmpty) {
              return null;
            }
            return context.l10n.pleaseSelectaDepot;
          },
        ),
        TypeAheadFormField(
          textFieldConfiguration: TextFieldConfiguration(
            controller: gradeTextController,
            decoration: InputDecoration(labelText: context.l10n.grade),
          ),
          suggestionsCallback: (pattern) async {
            final q = pattern.isNotEmpty ? pattern : '';
            return GradeRepository.fetchGradesList(
              filter: q,
              apiHelper: widget.apiHelper,
            );
          },
          itemBuilder: (context, suggestion) {
            return ListTile(
              title: Text(suggestion),
            );
          },
          onSuggestionSelected: (suggestion) {
            gradeTextController.text = suggestion;
            setState(() {
              routeToMarketModel.grade = suggestion;
            });
          },
          validator: (value) {
            if (value != null && value.isNotEmpty) {
              return null;
            }
            return context.l10n.pleaseSelectAGrade;
          },
        ),
        TextFormField(
          enabled: false,
          initialValue: context.l10n.psnopTableHeaderTonnes,
          decoration: InputDecoration(
            labelText: context.l10n.psnopPlannedMovementsUnit,
          ),
        ),
        TextFormField(
          enabled: false,
          decoration: InputDecoration(
            labelText: context.l10n.psnopPlannedMovementsRemainingWeight,
          ),
        ),
        TextFormField(
          decoration: InputDecoration(
            labelText: context.l10n.psnopPlannedMovementsNumberOfLoads,
          ),
          keyboardType: TextInputType.number,
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.digitsOnly,
          ],
          onChanged: (value) {
            setState(() {
              routeToMarketModel.numberOfLoads = int.tryParse(value);
            });
            _updateTotalWeight();
          },
          validator: (value) {
            if (value != null && value.isNotEmpty) {
              return null;
            }
            return context.l10n.psnopPlannedMovementsAddNoOfLoads;
          },
        ),
        TextFormField(
          decoration: InputDecoration(
            labelText: context.l10n.psnopPlannedMovementsWeightPerLoad,
          ),
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.allow(
              RegExp(r'^\d+\.?\d{0,2}'),
            ),
          ],
          onChanged: (value) {
            setState(() {
              routeToMarketModel.weightPerLoad = double.tryParse(value);
            });
            _updateTotalWeight();
          },
          validator: (value) {
            if (value != null && value.isNotEmpty) {
              return null;
            }
            return context.l10n.psnopPlannedMovementsAddWeightPerLoad;
          },
        ),
        TextFormField(
          enabled: false,
          decoration: InputDecoration(
            labelText: context.l10n.psnopPlannedMovementsTotalWeight,
          ),
          controller: totalWeightTextController,
        ),
        TextFormField(
          decoration: InputDecoration(
            labelText: context.l10n.psnopPlannedMovementsMovementDate,
          ),
          readOnly: true,
          onTap: () async {
            routeToMarketModel.movementDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime.now(),
              lastDate: DateTime(9999),
            );
            if (context.mounted) {
              movementDateTextController.text =
                  _showFormattedDate(context, routeToMarketModel.movementDate);
            }
          },
          controller: movementDateTextController,
          validator: (value) {
            if (value != null && value.isNotEmpty) {
              return null;
            }
            return context.l10n.psnopPlannedMovementsSelectMovementDate;
          },
        ),
        TextFormField(
          decoration:
              InputDecoration(labelText: context.l10n.psnopTableHeaderComments),
          onChanged: (value) {
            setState(() {
              routeToMarketModel.comments = value;
            });
          },
        ),
      ]
          .map(
            (widget) => Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: widget,
              ),
            ),
          )
          .toList(),
    );
  }

  String _showFormattedDate(
    BuildContext context,
    DateTime? dateTime,
  ) {
    log(dateTime.toString());
    if (dateTime == null) {
      return '';
    }

    final shortDateFormatter = DateFormat.yMd(
      Localizations.localeOf(context).toLanguageTag(),
    );
    return shortDateFormatter.format(dateTime);
  }

  void _updateTotalWeight() {
    if (routeToMarketModel.numberOfLoads != null &&
        routeToMarketModel.weightPerLoad != null) {
      final totalWeight =
          routeToMarketModel.numberOfLoads! * routeToMarketModel.weightPerLoad!;
      totalWeightTextController.text = totalWeight.toStringAsFixed(2);
    } else {
      totalWeightTextController.text = '';
    }
  }

  bool isFormValid() {
    return _formKey.currentState!.validate();
  }
}
