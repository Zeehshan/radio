import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../blocs/app_config/app_config_bloc.dart';
import '../../../data/providers/providers.dart';
import '../../../data/services/services.dart';
import '../../../i18n/i18n.dart';
import '../../../utils/utils.dart';
import '../../widgets/widgets.dart';

class ShutdownPage extends StatefulWidget {
  const ShutdownPage({super.key});

  @override
  State<ShutdownPage> createState() => _ShutdownPageState();
}

class _ShutdownPageState extends State<ShutdownPage> {
  final DatabaseProvider databaseProvider = DatabaseProvider();
  TimeOfDay timeOfDay = TimeOfDay.now();
  TimeOfDay timeOfDayTemp = TimeOfDay.now();
  TimeOfDay maxMinSleep = TimeOfDay.now();
  late FixedExtentScrollController fixedExtentScrollController0,
      fixedExtentScrollController;
  final audioHandler = getIt<AudioPlayerHandler>();
  bool switchOn = true;
  @override
  void initState() {
    super.initState();
    fixedExtentScrollController0 = FixedExtentScrollController();
    fixedExtentScrollController = FixedExtentScrollController();
    timeOfDay =
        timeOfDay.replacing(hour: timeOfDay.hour + 1, minute: timeOfDay.minute);

    try {
      databaseProvider.getSleepTime().then((value) {
        if (value == null) {
          timeOfDay = TimeOfDay(
              hour: TimeOfDay.now().hour + 1, minute: TimeOfDay.now().minute);
        } else {
          // timeOfDay = value;
        }
        maxMinSleep = TimeOfDay(
            hour: TimeOfDay.now().hour + 1, minute: TimeOfDay.now().minute);
        timeOfDayTemp = timeOfDay;
        setState(() {});
        fixedExtentScrollController0.animateToItem((timeOfDay.hour - 1),
            duration: const Duration(milliseconds: 100), curve: Curves.linear);
        fixedExtentScrollController.animateToItem((timeOfDay.minute - 1),
            duration: const Duration(milliseconds: 100), curve: Curves.linear);

        databaseProvider.getSwitchOffValue().then((value) {
          if (value == false) {
            switchOn = false;
            audioHandler.customAction('stopAutoShutDown', {});
          } else {
            final hours = (timeOfDay.hour - TimeOfDay.now().hour).abs();
            final minutes = (timeOfDay.minute - TimeOfDay.now().minute).abs();

            final extra = {'force': false, 'time': (hours * 60) + minutes};
            audioHandler.customAction('sleepTimer', extra);
          }
        });
      });
    } catch (e) {
      ///
    }
  }

  @override
  Widget build(BuildContext context) {
    final config = context.read<AppConfigBloc>().state.config!.app;
    String hours = '', minutes = '';
    hours =
        timeOfDay.hour < 10 ? '0${timeOfDay.hour}' : timeOfDay.hour.toString();
    minutes = timeOfDay.minute < 10
        ? '0${timeOfDay.minute}'
        : timeOfDay.minute.toString();
    return Center(
      child: IntrinsicHeight(
        child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Theme.of(context).scaffoldBackgroundColor,
              boxShadow: [
                BoxShadow(
                    blurRadius: 2,
                    spreadRadius: 2,
                    color: Colors.grey.withOpacity(.2),
                    offset: const Offset(0, 0))
              ]),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 0),
                child: Row(
                  children: [
                    Text(
                      t.MESSAGES.AUTO_OFF,
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(fontSize: 16),
                    ),
                    Text(
                      '$hours:$minutes',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(fontSize: 16),
                    ),
                    const Spacer(),
                    CupertinoSwitch(
                        activeColor: config!.outstanding,
                        value: switchOn,
                        onChanged: (v) {
                          logger.d(v);
                          try {
                            databaseProvider.saveSwitchOffValue(v);
                            // stopAutoShutDown
                            if (v == false) {
                              audioHandler.customAction('stopAutoShutDown', {});
                            } else {
                              final hours =
                                  (timeOfDay.hour - TimeOfDay.now().hour).abs();
                              final minutes =
                                  (timeOfDay.minute - TimeOfDay.now().minute)
                                      .abs();

                              final extra = {
                                'force': false,
                                'time': (hours * 60) + minutes
                              };
                              audioHandler.customAction('sleepTimer', extra);
                            }
                          } catch (e) {
                            //
                          }
                          setState(() {
                            switchOn = v;
                          });
                        }),
                  ],
                ),
              ),
              const Divider(),
              Row(
                children: [
                  ClockWidget(size: MediaQuery.of(context).size.height / 4),
                  SizedBox(
                    height: 250,
                    child: CustomTimerPicker(
                        intiTimeOfDay: TimeOfDay.now()
                            .replacing(hour: TimeOfDay.now().hour + 1),
                        onChanged: (selectedHour, selectedMinute) {
                          setState(() {
                            timeOfDayTemp = timeOfDayTemp.replacing(
                                hour: selectedHour, minute: selectedMinute);
                          });
                        },
                        fixedExtentScrollController0:
                            fixedExtentScrollController0,
                        fixedExtentScrollController:
                            fixedExtentScrollController),
                  ),
                ],
              ),
              Row(
                children: [
                  ElevatedButtonWidget(
                      width: 80,
                      borderRadius: 100,
                      height: 32,
                      backgroundColor: config!.outstanding,
                      child: Text(
                        'Reset',
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(fontSize: 14, color: Colors.white),
                      ),
                      onPressed: () {
                        timeOfDay = TimeOfDay(
                            hour: TimeOfDay.now().hour + 1,
                            minute: TimeOfDay.now().minute);
                        timeOfDayTemp = timeOfDay;
                        setState(() {});
                        databaseProvider.deleteSleepTime();
                        fixedExtentScrollController0.animateToItem(
                            (timeOfDay.hour - 1),
                            duration: const Duration(milliseconds: 100),
                            curve: Curves.linear);
                        fixedExtentScrollController.animateToItem(
                            (timeOfDay.minute - 1),
                            duration: const Duration(milliseconds: 100),
                            curve: Curves.linear);
                        final hours =
                            (timeOfDay.hour - TimeOfDay.now().hour).abs();
                        final minutes =
                            (timeOfDay.minute - TimeOfDay.now().minute).abs();

                        final extra = {
                          'force': true,
                          'time': (hours * 60) + minutes
                        };
                        audioHandler.customAction('sleepTimer', extra);
                      }),
                  const Spacer(),
                  if (timeOfDayTemp.hour != timeOfDay.hour &&
                      timeOfDayTemp.hour > maxMinSleep.hour)
                    ElevatedButtonWidget(
                        width: 80,
                        borderRadius: 100,
                        margin: const EdgeInsets.only(right: 10),
                        height: 32,
                        backgroundColor: Colors.red,
                        onPressed: () {
                          setState(() {
                            timeOfDayTemp = timeOfDay;
                          });
                        },
                        child: Text(
                          'Cancel',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(fontSize: 14, color: Colors.white),
                        )),
                  if (timeOfDayTemp.hour != timeOfDay.hour &&
                      timeOfDayTemp.hour > maxMinSleep.hour)
                    ElevatedButtonWidget(
                        width: 80,
                        borderRadius: 100,
                        height: 32,
                        backgroundColor: config.outstanding,
                        onPressed: () {
                          setState(() {
                            timeOfDay = timeOfDayTemp;
                          });
                          // databaseProvider.saveSleepTime(
                          //     hours: timeOfDayTemp.hour,
                          //     minutes: timeOfDayTemp.minute);

                          final hours =
                              (timeOfDay.hour - TimeOfDay.now().hour).abs();
                          final minutes =
                              (timeOfDay.minute - TimeOfDay.now().minute).abs();

                          final extra = {
                            'force': true,
                            'time': (hours * 60) + minutes
                          };
                          audioHandler.customAction('sleepTimer', extra);
                        },
                        child: Text(
                          'Save',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(fontSize: 14, color: Colors.white),
                        )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTimerPicker extends StatefulWidget {
  late final TimeOfDay intiTime;
  final FixedExtentScrollController fixedExtentScrollController0,
      fixedExtentScrollController;

  final Function(int selectedHour, int selectedMinute) onChanged;
  CustomTimerPicker({
    Key? key,
    required this.onChanged,
    TimeOfDay? intiTimeOfDay,
    required this.fixedExtentScrollController0,
    required this.fixedExtentScrollController,
  }) : super(key: key) {
    intiTime = intiTimeOfDay ?? TimeOfDay.now();
  }

  @override
  State<CustomTimerPicker> createState() => _CustomTimerPickerState();
}

class _CustomTimerPickerState extends State<CustomTimerPicker> {
  late int selectedHour;
  late int selectedMinutes;

  @override
  void initState() {
    super.initState();
    selectedHour = widget.intiTime.hour;
    selectedMinutes = widget.intiTime.minute;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          // hour picker
          SizedBox(
            width: kToolbarHeight,
            child: CupertinoPicker(
              looping: true,
              scrollController: widget.fixedExtentScrollController0,
              itemExtent: 50,
              onSelectedItemChanged: (v) {
                setState(() {
                  selectedHour = v + 1;
                });
                widget.onChanged(
                  selectedHour,
                  selectedMinutes,
                );
              },
              children: List.generate(
                24,
                (index) {
                  String hour;
                  if ((index + 1) == 24) {
                    hour = '00';
                  } else if (index < 9) {
                    hour = '0${index + 1}';
                  } else {
                    hour = '${index + 1}';
                  }
                  return Center(
                    child: Text(
                      hour,
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(fontSize: 14),
                    ),
                  );
                },
              ),
            ),
          ),

          //minute Picker
          SizedBox(
            width: kToolbarHeight,
            child: CupertinoPicker(
              looping: true,
              scrollController: widget.fixedExtentScrollController,
              itemExtent: 50,
              onSelectedItemChanged: (v) {
                setState(() {
                  selectedMinutes = v + 1;
                });
                widget.onChanged(
                  selectedHour,
                  selectedMinutes,
                );
              },
              children: List.generate(
                60,
                (index) => Center(
                  child: Text(
                    '${index + 1}',
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(fontSize: 14),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
