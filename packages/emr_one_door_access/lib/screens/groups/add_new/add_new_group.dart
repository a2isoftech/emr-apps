import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_door_access/emr_one_door_access.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddNewGroup extends StatefulWidget {
  const AddNewGroup({
    required this.controller,
    required this.groupFormKey,
    this.group,
    super.key,
  });

  final GlobalKey<FormState> groupFormKey;
  final ManageGroupController controller;
  final Group? group;

  @override
  State<AddNewGroup> createState() => _AddNewGroupState();
}

class _AddNewGroupState extends State<AddNewGroup> {
  late final TextEditingController _searchTextController;

  @override
  void initState() {
    super.initState();
    _searchTextController = TextEditingController();
  }

  @override
  void dispose() {
    _searchTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsetsGeometry.all(Insets.gutter),
      child: ChangeNotifierProvider<ManageGroupController>.value(
        value: widget.controller,
        child: Consumer<ManageGroupController>(
          builder: (context, controller, child) {
            return Form(
              key: widget.groupFormKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  EmrPicker<AdGroup>(
                    mode: EmrPickerMode.inline,
                    labelText: context.l10n.address1,
                    items: (query) async {
                      if (query.length < 4) {
                        return [];
                      }
                      return controller.searchGroups(query);
                    },
                    controller: _searchTextController,
                    itemTitleText: (item) => item.name,
                    validator: Validators.required,
                    onItemSelected: (item) async {
                      controller.setAdGroup(item);
                    },
                  ),
                  Text(
                    'Type in at least 4 characters to search the '
                    'groups in Azure AD',
                    style: theme.textTheme.labelSmall!.copyWith(
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  if (controller.selectedAdGroup != null) ...[
                    const Divider(height: Insets.gutter * 2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Group Id',
                          style: theme.textTheme.titleLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          controller.selectedAdGroup!.id,
                          style: theme.textTheme.titleLarge,
                        ),
                        Text(
                          'Group Name',
                          style: theme.textTheme.titleLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          controller.selectedAdGroup!.name,
                          style: theme.textTheme.titleLarge,
                        ),
                      ],
                    ),
                  ],
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
