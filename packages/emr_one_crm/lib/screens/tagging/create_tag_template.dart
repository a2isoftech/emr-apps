import 'dart:async';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_crm/exceptions/exceptions.dart';
import 'package:emr_one_crm/graphql/trader/schema.graphql.dart';
import 'package:emr_one_crm/models/tagging/models.dart';
import 'package:emr_one_crm/screens/tagging/widgets.dart';
import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:emr_sharedtypes/emr_sharedtypes.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class CreateTagTemplate extends StatefulWidget {
  const CreateTagTemplate({
    required this.httpClient,
    super.key,
  });

  final BaseClient httpClient;

  @override
  State<StatefulWidget> createState() => _CreateTagTemplateState();
}

class _CreateTagTemplateState extends State<CreateTagTemplate> {
  String? description;
  String? typeText;
  int? typeId;
  String? categoryText;
  int? categoryId;
  String? reasonText;
  int? reasonId;

  List<MultiSelectEntry> territories = [];

  @override
  Widget build(BuildContext context) {
    return showAddTemplate();
  }

  Widget showAddTemplate() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        buildHeader(),
        buildCancelCreateButtons(),
      ],
    );
  }

  Widget buildHeader() {
    final brandColours = Theme.of(context).extension<EOBrandTheme>()!;

    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 8),
      child: Text(
        'CREATE A NEW TAG',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: brandColours.onBrandColour,
        ),
      ),
    );
  }

  Widget buildCreateTag(Supporting supporting) {
    final widgets = <Widget>[];

    widgets.add(Text(context.l10n.description.toUpperCase()));
    widgets.add(
      Row(
        children: [
          Expanded(
            child: Material(
              color: Colors.blue,
              child: TextField(
                onChanged: (String value) async {
                  description = value;
                },
              ),
            ),
          ),
        ],
      ),
    );

    widgets.add(
      CategorySelect(
        supporting: supporting,
        updateCategory: (id, value) {
          categoryText = value;
          categoryId = id;
        },
        updateTerritories: (value) {
          territories = value;
        },
      ),
    );

    widgets.add(
      AutoCompleteSection(
        header: context.l10n.reason.toUpperCase(),
        entries: supporting.reasons
            .map((e) => AutoCompleteEntry(e.id, e.reason))
            .toList(),
        updateSection: (id, value) {
          reasonId = id;
          reasonText = value;
        },
      ),
    );

    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: widgets,
      ),
    );
  }

  Widget buildCancelCreateButtons() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ThemedButton(
            text: 'CANCEL',
            action: () async => Navigator.of(context).pop<bool>(false),
          ),
          ThemedButton(
            text: 'CREATE NEW TAG',
            action: () async {
              if (validateTemplate()) {
                if (await saveTemplate()) {
                  if (!mounted) return;
                  Navigator.of(context).pop<bool>(true);
                }
              }
            },
          ),
        ],
      ),
    );
  }

  bool validateTemplate() {
    if (description?.isEmpty ?? true) {
      EmrDialog.ok(
        context,
        titleText: context.l10n.error,
        contentText: context.l10n.enterDescription,
      );
      return false;
    }
    if (typeId == null && (typeText?.isEmpty ?? true)) {
      EmrDialog.ok(
        context,
        titleText: context.l10n.error,
        contentText: context.l10n.selectOrEnterType,
      );
      return false;
    }
    if (categoryId == null && (categoryText?.isEmpty ?? true)) {
      EmrDialog.ok(
        context,
        titleText: context.l10n.error,
        contentText: context.l10n.selectOrEnterCategory,
      );
      return false;
    }
    if (categoryId == null && territories.where((t) => t.selected).isEmpty) {
      EmrDialog.ok(
        context,
        titleText: context.l10n.error,
        contentText: context.l10n.mustSelectTerritories,
      );
      return false;
    }
    if (reasonId == null && (reasonText?.isEmpty ?? true)) {
      EmrDialog.ok(
        context,
        titleText: context.l10n.error,
        contentText: context.l10n.selectOrEnterReason,
      );
      return false;
    }

    return true; //Got enough data, lets try and save
  }

  Future<bool> saveTemplate() async {
    try {
      if (mounted) {
        await EmrDialog.ok(
          context,
          titleText: context.l10n.success,
          contentText: 'You added "$description"',
          onOk: () => Navigator.of(context).pop(false),
        );
      }

      return true;
    } on DuplicateException catch (e) {
      if (mounted) {
        await EmrDialog.ok(
          context,
          titleText: context.l10n.error,
          contentText: '${context.l10n.error}  ${e.message}.',
        );
      }
    } on SecurityException catch (e) {
      if (mounted) {
        await EmrDialog.ok(
          context,
          titleText: context.l10n.error,
          contentText: '${context.l10n.error}  ${e.message}.',
        );
      }
    } on GraphQLException catch (e) {
      if (mounted) {
        await EmrDialog.ok(
          context,
          titleText: context.l10n.error,
          contentText: '${context.l10n.error}  ${e.message}.',
        );
      }
    }
    return false;
  }

  Enum$Uom? convertToEnum(ValueUomPair? price) {
    if (price == null) {
      return null;
    }
    return Enum$Uom.values[price.uom.toApiEnumIndex];
  }
}
