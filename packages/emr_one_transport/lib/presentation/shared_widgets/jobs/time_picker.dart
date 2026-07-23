import 'package:emr_one_transport/core/constants/colors.dart';
import 'package:emr_one_transport/core/constants/constants.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TimePicker extends StatefulWidget {
  const TimePicker({
    this.onTimeChanged,
    this.initialTimeInMinutes = 0,
    this.minuteStep = 15,
    super.key,
  });

  final ValueNotifier<int>? onTimeChanged;
  final int initialTimeInMinutes;
  final int minuteStep;

  @override
  State<TimePicker> createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePicker> {
  late int timeInMinutes;
  static const hoursInOneDay = 24;
  static const minutesInAnHour = 60;
  

  @override
  void initState() {
    super.initState();
  }

  String formatTime(int minutes) {
    final hours = (minutes ~/ minutesInAnHour) % hoursInOneDay;
    final mins = minutes % minutesInAnHour;
    return '${hours.toString().padLeft(2, '0')}:'
    '${mins.toString().padLeft(2, '0')}';
  }

  void adjustTime(int delta) {
    const minutesInOneDay = hoursInOneDay * minutesInAnHour ;
    setState(() {
      timeInMinutes += delta;
      timeInMinutes = 
      (timeInMinutes % minutesInOneDay + minutesInOneDay)
      % minutesInOneDay;
    });

    widget.onTimeChanged?.value = timeInMinutes;
  }

  @override
  Widget build(BuildContext context) {
    timeInMinutes = widget.initialTimeInMinutes;
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          MouseRegion(
            cursor: SystemMouseCursors.allScroll,
            child: Listener(
              onPointerSignal: (event) {
                if (event is PointerScrollEvent) {
                  if (event.scrollDelta.dy > 0) {
                    adjustTime(-minutesInAnHour);
                  } else {
                    adjustTime(minutesInAnHour);
                  }
                }
              },
              child: Column(
                children: [
                  InkWell(
                    onTap: () => adjustTime(minutesInAnHour),
                    highlightColor: TransportAppColors.displayGreenColor,
                    child: const Icon(Icons.keyboard_arrow_up,
                    size : Constants.iconSizeM,),
                  ),
                  Text(
                    formatTime(timeInMinutes).split(':')[0],
                    style: const TextStyle(
                      fontSize: Constants.fontSizeL,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  InkWell(
                    onTap: () => adjustTime(-minutesInAnHour),
                    highlightColor: TransportAppColors.displayGreenColor,
                    child: const Icon(Icons.keyboard_arrow_down, 
                    size : Constants.iconSizeM,),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          const Text(':'),
          const SizedBox(
            width: 5,
          ),
          MouseRegion(
            cursor: SystemMouseCursors.allScroll,
            child: Listener(
              onPointerSignal: (event) {
                if (event is PointerScrollEvent) {
                  if (event.scrollDelta.dy > 0) {
                    adjustTime(-widget.minuteStep);
                  } else {
                    adjustTime(widget.minuteStep);
                  }
                }
              },
              child: Column(
                children: [
                  InkWell(
                    highlightColor: TransportAppColors.displayGreenColor,
                    onTap: () => adjustTime(widget.minuteStep),
                    child: const Icon(Icons.keyboard_arrow_up,
                     size : Constants.iconSizeM,),
                  ),
                  Text(
                    formatTime(timeInMinutes).split(':')[1],
                    style: const TextStyle(
                      fontSize: Constants.fontSizeL,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  InkWell(
                    highlightColor: TransportAppColors.displayGreenColor,
                    onTap: () => adjustTime(-widget.minuteStep),
                    child: const Icon(Icons.keyboard_arrow_down,
                     size : Constants.iconSizeM,),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
