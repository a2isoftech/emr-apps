import 'dart:async';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_logistics/models/models.dart';
import 'package:emr_one_yard_logistics/services/yard_logistics_service.dart';
import 'package:emr_one_yard_logistics/widgets/minitag.dart';
import 'package:emr_one_yard_logistics/yl_api_response.dart';
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

class AllPackingListDetails extends StatefulWidget {
  const AllPackingListDetails({
    required this.service,
    required this.fetchingPackingList,
    super.key,
  });

  final YardLogisticsService service;
  final Signal<String?> fetchingPackingList;

  @override
  State<AllPackingListDetails> createState() => _AllPackingListDetailsState();
}

class _AllPackingListDetailsState extends State<AllPackingListDetails> {
  late Future<YlApiResponse<List<PackingList>?>> fetchAllPackingList;

  final inProgressButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: Colors.blue,
    textStyle: const TextStyle(fontSize: 15),
    minimumSize: const Size(25, 25),
  );

  @override
  void initState() {
    super.initState();
    fetchAllPackingList = widget.service.fetchAllPackingListByState(null);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<YlApiResponse<List<PackingList>?>>(
      future: fetchAllPackingList,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasData &&
              snapshot.data!.data != null &&
              snapshot.data!.data!.isNotEmpty) {
            final allPackingList = snapshot.data!.data;
            if (allPackingList == null) {
              return const Text('No Packing List found');
            }

            return SingleChildScrollView(
              child: ListView.builder(
                shrinkWrap: true,
                reverse: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: allPackingList.length,
                itemBuilder: (context, index) {
                  final currentRow = allPackingList[index];

                  return Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: () async {
                        widget.fetchingPackingList.value =
                            '${currentRow.packingListRef}/${currentRow.yardId}';

                        final response =
                            await widget.service.fetchPackingListByRef(
                          currentRow.packingListRef,
                        );

                        if (response.success && context.mounted) {
                          final packingList = response.data!;

                          if (!response.success) {
                            unawaited(
                              EmrModal.showMessageBar(
                                context,
                                'Packing List cannot be loaded',
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
                          widget.fetchingPackingList.value = null;

                          unawaited(
                            EmrModal.showMessageBar(
                              context,
                              response.message,
                              messageType: MessageBarTypes.error,
                            ),
                          );
                        }
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${currentRow.packingListRef}/${currentRow.yardId}',
                                style: EmrOneConstants.kSmallBreadcrumbTextStyle
                                    .copyWith(
                                  color:
                                      Theme.of(context).colorScheme.onSurface,
                                ),
                              ),
                              Row(
                                children: [
                                  Text('Lots: ${currentRow.lotIds.length}'),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Pallets: ${currentRow.palletIds.length}',
                                  ),
                                ],
                              ),
                            ],
                          ),
                          MiniTag(
                            label: _getStatusOfPackingList(currentRow.state),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            );
          } else if (snapshot.hasData && snapshot.data!.success) {
            return const Center(child: Text('No Packing List found'));
          } else {
            final errorMessage = snapshot.data?.message;

            return Center(
              child: Text('No Packing List found $errorMessage'),
            );
          }
        }

        return const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(
                color: Colors.white,
              ),
              SizedBox(height: Insets.gutter),
              Text(
                'Fetching Packing List...',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        );
      },
    );
  }

  String _getStatusOfPackingList(PackingListState packingListState) {
    switch (packingListState) {
      case PackingListState.empty:
        return 'Empty';
      case PackingListState.inProgress:
        return 'In Progress';

      case PackingListState.packed:
        return 'Packed';
      case PackingListState.completed:
        return 'Completed';
    }
  }
}
