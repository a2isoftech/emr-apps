import 'dart:math';

import 'package:collection/collection.dart';
import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_securitymgmt/controllers/sm_bookingcontroller.dart';
import 'package:emr_one_securitymgmt/controllers/sm_deskcontroller.dart';
import 'package:emr_one_securitymgmt/models/layout.dart';
import 'package:emr_one_securitymgmt/models/schedule_result.dart';
import 'package:emr_one_securitymgmt/widgets/sm_desk_bookapt_dlg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

enum BookingModalResult { bookingModalClosed, bookingModalCreatedClosed }

class SmDeskScreen extends StatefulWidget {
  const SmDeskScreen({required this.controller, super.key});

  final SmDeskController controller;

  @override
  State<SmDeskScreen> createState() => _SmDeskScreenState();
}

class _SmDeskScreenState extends State<SmDeskScreen> {
  final _debounceableSearch = Debounceable<List<SmScheduleResult>>();
  List<SmScheduleResult> _seatingData = [];
  final ValueNotifier<List<SmScheduleResult>> _data = ValueNotifier([]);
  DateTime _startDate = DateTime.now();
  late Future<SmLayout> getLayoutFuture;

  @override
  void initState() {
    super.initState();
    getLayoutFuture = widget.controller.getLayout('layouts/cg1v3.json');
    widget.controller.addListener(_controllerChange);
  }

  @override
  void dispose() {
    widget.controller.removeListener(_controllerChange);
    _debounceableSearch.dispose();
    super.dispose();
  }

  void _controllerChange() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SmLayout>(
      future: getLayoutFuture,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return LayoutBuilder(
            builder: (context, constraints) {
              final config = Provider.of<AppConfig>(context);

              if (config.isWeb) {
                return _webLayout(snapshot.data!);
              }

              return const PlaceHolderScreen(
                title: 'Under construction',
                subtitle:
                    'This screen is not currently available on mobile devices',
              );
            },
          );
        }

        return const Center(child: CircularProgressIndicator());
      },
    );
  }

  Column _webLayout(SmLayout layout) {
    return Column(
      children: [
        Row(
          children: [
            const Padding(
              padding: EdgeInsets.all(Insets.gutter),
              child: BackButton(),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: Insets.gutter,
                right: Insets.gutter,
                bottom: Insets.gutter,
              ),
              child: Text(
                'Desk allocations - ${DateFormat.yMMMd().format(_startDate)}',
                style: EmrOneConstants.kLargeHeadingTextStyle,
              ),
            ),
          ],
        ),
        Expanded(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(Insets.gutter),
                child: SizedBox(
                  width: 300,
                  height: 300,
                  child: EmrDatePicker(
                    initialDate: _startDate,
                    firstDate: DateTime(2021),
                    lastDate: DateTime(2040),
                    onDateChanged: _onSelectionChanged,
                  ),
                ),
              ),
              Expanded(
                child: InteractiveViewer(
                  child: FittedBox(
                    child: SizedBox(
                      width: 1190.7,
                      height: 841.995,
                      child: _plan(layout),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _plan(SmLayout layout) {
    final markers = _planMarkers(layout);

    return Stack(
      children: [
        Positioned.fill(
          child: SvgPicture.asset(
            'assets/layouts/cg1v3.svg',
            fit: BoxFit.scaleDown,
            alignment: Alignment.topLeft,
            package: 'emr_one_securitymgmt',
          ),
        ),
        ...markers.asMap().entries.map(
          (e) => Positioned.fromRect(
            rect: Rect.fromCenter(
              center: layout.offsets[e.key],
              width: 36,
              height: 36,
            ),
            child: e.value,
          ),
        ),
        if (widget.controller.status == SmDeskLoadStatus.idle)
          Center(
            child: Material(
              elevation: 6,
              child: DecoratedBox(
                decoration: const BoxDecoration(color: Colors.amber),
                child: Padding(
                  padding: const EdgeInsets.all(Insets.gutter),
                  child: Text(
                    'SELECT A DATE',
                    style: EmrOneConstants.kLargeHeadingTextStyle,
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }

  List<Widget> _planMarkers(SmLayout layout) {
    if (widget.controller.status == SmDeskLoadStatus.loading) {
      return List.generate(
        36,
        (index) => Transform.scale(
          scale: 0.4,
          child: const CircularProgressIndicator(),
        ),
      );
    }

    if (widget.controller.status == SmDeskLoadStatus.idle) {
      return List.generate(36, (index) => const Icon(Icons.circle));
    }

    final widgets = <Widget>[];

    for (var s = 0; s < 36; s++) {
      widgets.add(_getStatusWidget(_seatingData[s], 0, s, layout));
    }

    return widgets;
  }

  Widget _getStatusWidget(
    SmScheduleResult rowItem,
    int dow,
    int index,
    SmLayout layout,
  ) {
    if (rowItem.isFaulted) {
      return const Tooltip(
        message: 'Failed to load schedule',
        child: CircleAvatar(
          backgroundColor: EmrColours.secondaryRed,
          child: Icon(Icons.error_outline_sharp, color: Colors.black, size: 32),
        ),
      );
    }

    if (layout.items[index].reserved) {
      return const Tooltip(
        message: 'Reserved',
        child: CircleAvatar(
          backgroundColor: EmrColours.secondaryRed,
          child: Icon(Icons.block, color: Colors.black, size: 32),
        ),
      );
    }

    final appointment = rowItem.scheduleItems.firstWhereOrNull(
      (element) =>
          DateTime.parse(
            element.end.dateTime,
          ).isAfter(_startDate.add(Duration(days: dow))) &&
          DateTime.parse(
            element.start.dateTime,
          ).isBefore(_startDate.add(Duration(days: dow + 1))),
    );

    if (appointment == null) {
      return MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: () => showBookingForm(rowItem, layout.items[index].name),
          child: Tooltip(
            message: layout.items[index].name,
            child: CircleAvatar(
              backgroundColor: layout.items[index].heightAdjustable
                  ? EmrColours.secondaryYellow
                  : EmrColours.primaryGreen,
              child: const Icon(
                Icons.add_circle_outline,
                color: Colors.black,
                size: 32,
              ),
            ),
          ),
        ),
      );
    }

    final initials = appointment.subject
        .trim()
        .split(' ')
        .map((e) => e.length > 2 ? e.substring(0, 1).toUpperCase() : '-')
        .toList()
        .join()
        .substring(0, min(2, appointment.subject.length));

    final i = initials.hashCode % 128;
    final bgColour = _getBgColour(i);

    return Center(
      child: SizedBox(
        width: 48,
        height: 48,
        child: Tooltip(
          message: '${appointment.subject}\n${layout.items[index].name}',
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              child: CircleAvatar(
                backgroundColor: bgColour,
                child: Text(
                  initials,
                  style: EmrOneConstants.kSmallHeadingTextStyle.copyWith(
                    color: Colors.white,
                    shadows: <Shadow>[
                      const Shadow(offset: Offset(1, 1), blurRadius: 1),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> showBookingForm(
    SmScheduleResult scheduleItem,
    String location,
  ) async {
    final result =
        await EmrModal.showModalBottomSheetOrFlyout<BookingModalResult>(
          context,
          child: SmDeskBoolAptDlg(
            scheduleItem: scheduleItem,
            defaultDate: _startDate,
            location: location,
            controller: SmBookingController(widget.controller.client),
          ),
        );

    if (result == BookingModalResult.bookingModalCreatedClosed) {
      _onSelectionChanged(_startDate);
    }
  }

  void _onSelectionChanged(DateTime date) {
    _startDate = date;

    _debounceableSearch.call(
      () async {
        await widget.controller.getSeatingData(
          date.toIso8601String(),
          DateTime(date.year, date.month, date.day, 23, 59).toIso8601String(),
        );

        return widget.controller.seatSchedules;
      },
      then: (results) {
        setState(() {
          _seatingData = results;
          _data.value = _seatingData;
        });
      },
    );
  }

  Color _getBgColour(int i) {
    final d = i as double;
    final r = (sin(0.024 * d + 0) * 127 + 128).round();
    final g = (sin(0.024 * d + 2) * 127 + 128).round();
    final b = (sin(0.024 * d + 4) * 127 + 128).round();

    return Color.fromARGB(255, r, g, b);
  }
}
