import 'dart:async';

import 'package:emr_core_api/emr_core_api.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_logistics/constants.dart';
import 'package:emr_one_yard_logistics/models/models.dart';
import 'package:emr_one_yard_logistics/services/yard_logistics_service.dart';
import 'package:emr_one_yard_logistics/widgets/packinglist_all_details.dart';
import 'package:emr_one_yard_logistics/widgets/select_account_dlg.dart';
import 'package:emr_one_yard_logistics/widgets/yl_action_button.dart';
import 'package:emr_sharedtypes/models/accounts/account.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:signals/signals_flutter.dart';

class NewPackingList extends StatefulWidget {
  const NewPackingList({super.key});

  @override
  State<NewPackingList> createState() => _NewPackingListState();
}

class _NewPackingListState extends State<NewPackingList> {
  final creatingPackingList = signal<bool>(false);
  late Computed<bool> busy;
  late Computed<bool> valid;
  late YardLogisticsService service;
  final fetchingPackingList = signal<String?>(null);
  final loadingAccountData = signal<bool>(false);
  final selectedAccount = signal<Account?>(null);

  @override
  void initState() {
    super.initState();

    busy = computed(creatingPackingList.call);
    valid = computed(() {
      return selectedAccount.value != null;
    });

    service = Provider.of<YardLogisticsService>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    final style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    final headlineStyle = TextStyle(
      fontWeight: FontWeight.bold,
      color: Theme.of(context).colorScheme.onSurface,
      fontSize: 28,
    );

    final service = Provider.of<YardLogisticsService>(context, listen: false);

    return Stack(
      children: [
        Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(Insets.gutter),
                        child: Text(
                          'Packing List',
                          style: headlineStyle,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: Insets.gutter),
                    child: Column(
                      children: [
                        const FormHeadingRow(
                          headings: [
                            'Existing Packing List',
                          ],
                        ),
                        // const SizedBox(height: Insets.gutter),
                        SizedBox(
                          height: 350,
                          child: AllPackingListDetails(
                            service: service,
                            fetchingPackingList: fetchingPackingList,
                          ),
                        ),
                        const SizedBox(height: 30),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: Insets.gutter),
                    child: Column(
                      children: [
                        const FormHeadingRow(
                          headings: [
                            'Create Packing List',
                          ],
                        ),
                        const SizedBox(height: Insets.gutter),
                        Row(
                          children: [
                            Expanded(
                              child: SizedBox(
                                height: 64,
                                child: YlActionButton(
                                  onPressed: _getAccountSelector(),
                                  label: Text(
                                    selectedAccount.watch(context)?.code ??
                                        'Tap to select an account',
                                  ),
                                  extraWidget: Text(
                                    _getAccountSubtitle(selectedAccount.value),
                                    style: EmrOneConstants.kOpenSans12TextStyle,
                                  ),
                                  trailing: loadingAccountData.watch(context)
                                      ? const SizedBox(
                                          width: 16,
                                          height: 16,
                                          child: CircularProgressIndicator(),
                                        )
                                      : selectedAccount.watch(context) == null
                                          ? YlConstants.warningIcon
                                          : const Icon(
                                              YlConstants.verifiedIcon,
                                              color: YlConstants
                                                  .verifiedIconColour,
                                            ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 90,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: Insets.gutter),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlinedButton(
                      style: style,
                      onPressed: creatingPackingList.watch(context) == true
                          ? null
                          : () {
                              Navigator.of(context).pop();
                            },
                      child: Text(context.l10n.cancel),
                    ),
                    ElevatedButton(
                      style: style,
                      onPressed: creatingPackingList.watch(context) == true
                          ? null
                          : valid.watch(context) == true
                              ? () async {
                                  creatingPackingList.value = true;

                                  final response =
                                      await service.createPackingList(
                                    CreatePackingList(
                                      yardCode: service.defaultYardCode,
                                      accountCode: selectedAccount.value!.code!,
                                      accountName: selectedAccount.value!.name!,
                                    ),
                                  );

                                  if (response.success && context.mounted) {
                                    context.pop();

                                    final packingList = response.data!;

                                    if (response.success) {
                                      unawaited(
                                        EmrModal.showMessageBar(
                                          context,
                                          'Packing List created successfully!',
                                        ),
                                      );
                                    } else {
                                      unawaited(
                                        EmrModal.showMessageBar(
                                          context,
                                          'Packing List cannot be created',
                                          messageType: MessageBarTypes.warning,
                                        ),
                                      );
                                      return;
                                    }

                                    await context.pushNamed(
                                      NamedRoutes.ylExistingPackinglist,
                                      extra: packingList,
                                    );
                                  } else if (context.mounted) {
                                    creatingPackingList.value = false;

                                    unawaited(
                                      EmrModal.showMessageBar(
                                        context,
                                        response.message,
                                        messageType: MessageBarTypes.error,
                                      ),
                                    );
                                  }
                                }
                              : null,
                      child: creatingPackingList.watch(context)
                          ? Row(
                              children: [
                                const SizedBox(
                                  height: 22,
                                  width: 22,
                                  child: CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      Colors.white,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: Insets.gutter),
                                Text('${context.l10n.creating}...'),
                              ],
                            )
                          : const Text('Create PackingList'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        if (fetchingPackingList.watch(context) != null) ...[
          const Opacity(
            opacity: 0.8,
            child: ModalBarrier(
              dismissible: false,
              color: Colors.black,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircularProgressIndicator(
                  color: Colors.white,
                ),
                const SizedBox(height: Insets.gutter),
                Text(
                  'Fetching for ${fetchingPackingList.value} ...',
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ],
    );
  }

  VoidCallback? _getAccountSelector() {
    return busy.watch(context) == true
        ? null
        : () async {
            loadingAccountData.value = true;

            final result = await showDialog<Account?>(
              context: context,
              builder: (context) {
                return SafeArea(
                  child: Scaffold(
                    appBar: AppBar(
                      title: const Text('Find account'),
                    ),
                    body: SelectAccountDialog(
                      service: context.coreApi.accountService,
                      defaultTerritoryCode: service.defaultTerritoryCode,
                    ),
                  ),
                );
              },
            );

            if (!mounted) return;

            loadingAccountData.value = false;
            if (result != null) {
              setState(() {
                selectedAccount.value = result;
              });
            }
          };
  }

  String _getAccountSubtitle(Account? account) {
    return account == null ? '' : '${account.name} (${account.code})';
  }
}
