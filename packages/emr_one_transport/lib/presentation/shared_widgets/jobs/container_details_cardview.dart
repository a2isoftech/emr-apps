import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/extensions/build_context_extensions.dart';
import 'package:emr_one_transport/data/helpers/string_helper.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/data/models/jobs/containers.dart';
import 'package:emr_one_transport/data/models/jobs/job_list.dart';
import 'package:emr_one_transport/presentation/shared_widgets/jobs/row_divider_with_title.dart';
import 'package:flutter/material.dart';

class ContainerDetailsCardView extends StatefulWidget {
  const ContainerDetailsCardView({required this.joblist, super.key});

  final JobList joblist;

  @override
  State<ContainerDetailsCardView> createState() =>
      _ContainerDetailsCardViewState();
}

class _ContainerDetailsCardViewState extends State<ContainerDetailsCardView> {
  @override
  Widget build(BuildContext context) {
    final job = widget.joblist;
    final containers = job.containers;
    var startlocncontainers = containers?.startLocationContainerDetails ?? [];
    var customerlocncontainers =
        containers?.customerLocationContainerDetails ?? [];

    startlocncontainers = startlocncontainers.toList();
    customerlocncontainers = customerlocncontainers.toList();

    if (job.jobType == JobType.pullAndReturn.apiValue) {
      customerlocncontainers = [customerlocncontainers[0]];
      startlocncontainers = customerlocncontainers;
    }

    final containerslist = <Containers>[];

    for (final e in customerlocncontainers) {
      final containers = Containers(
        typeId: 1,
        containerType: e.containerType,
        assetNumber: e.assetNumberUsed,
      );
      containerslist.add(containers);
    }
    for (final e in startlocncontainers) {
      final containers = Containers(
        typeId: 2,
        containerType: e.containerType,
        assetNumber: e.assetNumberUsed,
      );
      containerslist.add(containers);
    }

    final scrollController = ScrollController();

    return Column(
      children: [
        RowDividerWithTitle(
          label:
              '${context.l10n.containerDetails}'
              ' (${containerslist.length})',
        ),
        const SizedBox(height: 5),
        SizedBox(
          height: 56,
          child: Scrollbar(
            controller: scrollController,
            child: ListView.builder(
              controller: scrollController,
              itemCount: containerslist.length,
              itemBuilder: (context, index) {
                final container = containerslist[index];
                final containerDescription = '${container.containerType}';
                final valueStyle = EmrOneConstants.kOpenSans12TextStyle;
                return Padding(
                  padding: const EdgeInsets.all(4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if (container.assetNumber != null) ...[
                        SizedBox(
                          width: 50,
                          child: Text(
                            '${container.assetNumber} ',
                            style: valueStyle,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                      Flexible(
                        child: Text(
                          StringHelper.truncateWithEllipsis(
                            containerDescription,
                            26,
                          ),
                          style: valueStyle,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 6),
                        child: (int.parse(container.typeId.toString()) == 1)
                            ? Padding(
                                padding: const EdgeInsets.only(right: 4),
                                child: Text(
                                  containerTypeValue(
                                    int.parse(container.typeId.toString()),
                                  ),
                                  style: valueStyle.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            : Text(
                                containerTypeValue(
                                  int.parse(container.typeId.toString()),
                                ),
                                style: valueStyle.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
        const RowDividerWithTitle(label: ''),
      ],
    );
  }
}
