import 'package:emr_core_api/services/account_service.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_sharedtypes/enums/account_type_enum.dart';
import 'package:emr_sharedtypes/models/accounts/account.dart';
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

class SelectAccountDialog extends StatefulWidget {
  const SelectAccountDialog({
    required this.service,
    required this.defaultTerritoryCode,
    super.key,
  });

  final AccountService service;
  final String defaultTerritoryCode;

  @override
  State<SelectAccountDialog> createState() => _SelectAccountDialogState();
}

class _SelectAccountDialogState extends State<SelectAccountDialog> {
  final delay = signal(200);
  late final _futureSignal = futureSignal(_future);
  late TextEditingController searchController;
  String search = '';

  Future<List<Account>> _future() async {
    if (search.isEmpty) {
      return [];
    }

    await Future<void>.delayed(Duration(milliseconds: delay.value));

    final response = await widget.service.searchAccounts(
      query: search.isNotEmpty ? search : '',
      territories: [widget.defaultTerritoryCode],
      accountTypes: [
        AccountTypeEnum.business.name.toUpperCase(),
        AccountTypeEnum.retail.name.toLowerCase(),
      ],
    );

    return response.accounts;
  }

  @override
  void initState() {
    super.initState();

    searchController = TextEditingController();
    searchController.addListener(() {
      if (searchController.text != search) {
        search = searchController.text;
        _futureSignal.refresh();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: Insets.gutter),
          child: Center(
            child: Text(
              '${context.l10n.account} ${context.l10n.search}',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(Insets.gutter),
          child: TextField(
            controller: searchController,
            decoration: InputDecoration(
              hintText: context.l10n.pleaseEnterAPartyNameOrAnAccountNumber,
              prefixIcon: const Icon(Icons.search),
            ),
          ),
        ),
        const SizedBox(height: Insets.gutter),
        Expanded(
          child: Watch((context) {
            return _futureSignal.value.map(
              data: (value) {
                return SingleChildScrollView(
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: value.length,
                    itemBuilder: (context, index) {
                      final account = value[index];
                      return ListTile(
                        title: Text(account.code!),
                        subtitle: Text(
                          '${account.name} ',
                        ),
                        minTileHeight: 20,
                        onTap: () {
                          Navigator.of(context).pop(account);
                        },
                      );
                    },
                  ),
                );
              },
              error: (dynamic error) {
                return Center(
                  child: Text(
                    '${context.l10n.error}:$error',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                );
              },
              loading: () {
                return Center(
                  child: Text(
                    context.l10n.loading,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                );
              },
              reloading: () {
                return Center(
                  child: Text(
                    context.l10n.reloading,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                );
              },
              refreshing: () {
                return Center(
                  child: Text(
                    '${context.l10n.searching}...',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                );
              },
            );
          }),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(Insets.gutter),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context, rootNavigator: true).pop();
                },
                child: Text(context.l10n.cancel),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
