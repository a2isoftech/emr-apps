import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/core/constants/string_constants.dart';
import 'package:emr_one_transport/data/controllers/trailers/trailer_filter_controller.dart';
import 'package:emr_one_transport/data/dataSources/trailers_data_source.dart';
import 'package:emr_one_transport/data/models/trailers/transport_trailer.dart';
import 'package:emr_one_transport/presentation/screens/assets/trailers/trailer_details.dart';
import 'package:file_saver/file_saver.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TrailersScreen extends StatefulWidget with OmniSearch {
  const TrailersScreen({super.key});

  @override
  State<TrailersScreen> createState() => _TrailersScreenState();
}

class _TrailersScreenState extends State<TrailersScreen> {
  late EmrGridController<TransportTrailer> _gridController;
  late EmrQueryLayoutController<TransportTrailer> _queryLayoutController;
  late TrailerFilterController filterController;
  late TrailerDataSource gridDataSource;
  late ValueNotifier<bool> _hasSelectionNotifier;

  @override
  void initState() {
    super.initState();
    _hasSelectionNotifier = ValueNotifier(false);
    _queryLayoutController =
        Provider.of<EmrQueryLayoutController<TransportTrailer>>(
          context,
          listen: false,
        );

    filterController = Provider.of<TrailerFilterController>(
      context,
      listen: false,
    );
    filterController.initilize();

    gridDataSource = _queryLayoutController.dataSource as TrailerDataSource;

    _gridController = EmrGridController<TransportTrailer>(
      data: _queryLayoutController.dataSource.data,
      rowSelectionMode: RowSelectionMode.multiple,
      showLoader: _queryLayoutController.dataSource.loading,
      onSelectedRowsChanged: (selectedRows) {
        _hasSelectionNotifier.value = selectedRows.isNotEmpty;
      },
    );

    _queryLayoutController = EmrQueryLayoutController<TransportTrailer>(
      dataSource: gridDataSource,
      filterController: filterController,
      actionsBuilder: (context) => Row(children: [_buildPrintLabelButton()]),
    );

    gridDataSource.onRefresh = () async {
      _gridController.selectedRows.value = [];
      _hasSelectionNotifier.value = false;
    };
  }

  @override
  Widget build(BuildContext context) {
    return EmrQueryLayout<TransportTrailer>.grid(
      queryLayoutController: _queryLayoutController,
      gridController: _gridController,
      onRowTapped: (trailer) => _onRowTap(context, trailer),
      pinnedColumnCount: 1,
      columns: [
        EmrGridColumn(
          headerBuilder: () => Text(
            context.l10n.assetCode,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
          ),
          cellBuilder: (TransportTrailer rowItem) =>
              SelectableText(rowItem.assetNumber ?? '-'),
        ),
        EmrGridColumn(
          headerBuilder: () => Text(
            context.l10n.yard,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
          ),
          cellBuilder: (TransportTrailer rowItem) =>
              SelectableText(rowItem.yardCode ?? '-'),
        ),
        EmrGridColumn(
          headerBuilder: () => Text(
            context.l10n.assetType,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
          ),
          cellBuilder: (TransportTrailer rowItem) =>
              SelectableText(rowItem.trailerType ?? '-'),
        ),
        EmrGridColumn(
          headerBuilder: () => Text(
            context.l10n.model,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
          ),
          cellBuilder: (TransportTrailer rowItem) =>
              SelectableText(rowItem.model ?? '-'),
        ),
        EmrGridColumn(
          headerBuilder: () => Text(
            context.l10n.status,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
          ),
          cellBuilder: (TransportTrailer rowItem) =>
              SelectableText(rowItem.status ?? '-'),
        ),
        EmrGridColumn(
          headerBuilder: () => Text(
            context.l10n.condition,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
          ),
          cellBuilder: (TransportTrailer rowItem) =>
              SelectableText(rowItem.condition ?? '-'),
        ),
        EmrGridColumn(
          headerBuilder: () => Text(
            context.l10n.currentLocationStatus,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
          ),
          cellBuilder: (TransportTrailer rowItem) =>
              SelectableText(rowItem.currentLocation?.status ?? '-'),
        ),
        EmrGridColumn(
          headerBuilder: () => Text(
            context.l10n.currentLocation,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
          ),
          cellBuilder: (TransportTrailer rowItem) =>
              SelectableText(rowItem.currentLocation?.locationCode ?? '-'),
        ),
      ],
    );
  }

  Future<void> _onRowTap(BuildContext context, TransportTrailer trailer) {
    return EmrDialog.modal<void>(
      context,
      titleText: context.l10n.trailerDetails,
      builder: (_) => TrailerDetails(trailer: trailer),
      buttons: {},
    );
  }

  Widget _buildPrintLabelButton() {
    return ValueListenableBuilder<bool>(
      valueListenable: _hasSelectionNotifier,
      builder: (context, hasSelection, _) {
        return Tooltip(
          message: StringConstants.showMenu,
          child: PopupMenuButton<void>(
            position: PopupMenuPosition.under,
            itemBuilder: (BuildContext context) => <PopupMenuItem<void>>[
              PopupMenuItem<void>(
                onTap: hasSelection
                    ? () async {
                        final assetNumbers = _gridController.selectedRows.value
                            .map((c) => c.assetNumber)
                            .toList();
                        final params = {'assetNumbers': assetNumbers};
                        _queryLayoutController.dataSource.loading.value = true;
                        await filterController.dataController.downloadQRCodes(
                          StringConstants.getQrCodesApiPath,
                          MimeType.pdf,
                          StringConstants.qrCodesTrailerPdfFileName,
                          queryParams: params,
                        );
                        _queryLayoutController.dataSource.loading.value = false;
                      }
                    : null,
                enabled: hasSelection,
                child: Text(context.l10n.printLabels),
              ),
            ],
            icon: const Icon(Icons.more_vert),
          ),
        );
      },
    );
  }
}
