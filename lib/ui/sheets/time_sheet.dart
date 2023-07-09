import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../blocs/blocs.dart';
import '../../data/providers/providers.dart';
import '../../data/services/services.dart';
import '../../utils/utils.dart';
import '../widgets/widgets.dart';

class TimeSheet {
  static timeSheet({required BuildContext context}) async {
    await showModalBottomSheet<bool?>(
        useSafeArea: true,
        context: context,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        builder: (_) {
          return const SleepTimer();
        });
  }
}

class SleepTimer extends StatefulWidget {
  const SleepTimer({Key? key}) : super(key: key);

  @override
  State<SleepTimer> createState() => _SleepTimerState();
}

class _SleepTimerState extends State<SleepTimer> {
  final DatabaseProvider databaseProvider = DatabaseProvider();
  int? currentIndex;
  final _audioHandler = getIt<AudioPlayerHandler>();

  @override
  void initState() {
    super.initState();
    try {
      databaseProvider.getSleepTime().then((value) {
        if (value != null) {
          setState(() {
            currentIndex = value;
          });
        } else {
          setState(() {
            currentIndex = 0;
          });
        }
      });
    } catch (e) {
      setState(() {
        currentIndex = 0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final appConfig = context.watch<AppConfigBloc>().state.config!.app;
    return IntrinsicHeight(
      child: currentIndex == null
          ? Container()
          : Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Select sleep time',
                        textAlign: TextAlign.start,
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(fontSize: 18),
                      ),
                      const Spacer(),
                      IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: const Icon(
                            Icons.clear,
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: TimeWidget(
                      timesList: timesList,
                      onSelectedItemChanged: (int index) {
                        logger.d(index);
                        setState(() {
                          currentIndex = index;
                        });
                      },
                      selectedIndex: currentIndex!,
                    ),
                  ),
                  BlocBuilder<ShutDownBloc, ShutDownState>(
                    builder: (context, state) {
                      if (state.sec < 2) {
                        return Container();
                      }
                      final format =
                          formatDuration(Duration(seconds: state.sec));
                      return Text(
                        format,
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(fontSize: 14),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButtonWidget(
                      backgroundColor: appConfig!.outstanding,
                      child: Text(
                        'Done',
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(fontSize: 16, color: Colors.white),
                      ),
                      onPressed: () {
                        databaseProvider.saveSleepTime(index: currentIndex!);
                        _audioHandler.customAction(
                            'sleepTimer', timesList[currentIndex!]);
                        Navigator.pop(context);
                      }),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButtonWidget(
                      margin: const EdgeInsets.only(bottom: 30),
                      borderWidth: 1,
                      backgroundColor: Colors.transparent,
                      borderSide: appConfig.outstanding,
                      child: Text(
                        'Remove',
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              fontSize: 16,
                            ),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                        databaseProvider.deleteSleepTime();
                        _audioHandler.customAction('stopAutoShutDown', {});
                      }),
                ],
              ),
            ),
    );
  }
}

String formatDuration(Duration d) {
  var seconds = d.inSeconds;
  final days = seconds ~/ Duration.secondsPerDay;
  seconds -= days * Duration.secondsPerDay;
  final hours = seconds ~/ Duration.secondsPerHour;
  seconds -= hours * Duration.secondsPerHour;
  final minutes = seconds ~/ Duration.secondsPerMinute;
  seconds -= minutes * Duration.secondsPerMinute;

  final List<String> tokens = [];
  if (days != 0) {
    tokens.add('$days');
  }
  if (tokens.isNotEmpty || hours != 0) {
    tokens.add(hours > 9 ? '$hours' : '0$hours');
  }
  if (tokens.isNotEmpty || minutes != 0) {
    tokens.add(minutes > 9 ? '$minutes' : '0$minutes');
  }
  tokens.add(seconds > 9 ? '$seconds' : '0$seconds');

  return tokens.join(':');
}

List<Map<String, dynamic>> timesList = [
  {
    'time': '1',
    'is_select': false,
  },
  {'time': '5', 'is_select': false},
  {'time': '10', 'is_select': false},
  {'time': '15', 'is_select': false},
  {'time': '30', 'is_select': false},
  {'time': '45', 'is_select': false},
  {'time': '60', 'is_select': false},
  {'time': '90', 'is_select': false},
  {'time': '120', 'is_select': false}
];

class TimeWidget extends StatefulWidget {
  const TimeWidget(
      {Key? key,
      required this.onSelectedItemChanged,
      required this.selectedIndex,
      required this.timesList})
      : super(key: key);
  final ValueChanged<int>? onSelectedItemChanged;
  final int selectedIndex;
  final List<Map<String, dynamic>> timesList;
  @override
  State<TimeWidget> createState() => _TimeWidgetState();
}

class _TimeWidgetState extends State<TimeWidget> {
  FixedExtentScrollController? scrollController;
  @override
  void initState() {
    scrollController =
        FixedExtentScrollController(initialItem: widget.selectedIndex);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 154,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
      child: SizedBox(
        height: 150,
        child: CupertinoPicker(
          backgroundColor: Colors.transparent,
          scrollController: scrollController,
          selectionOverlay: Container(
            margin: const EdgeInsets.symmetric(horizontal: 35),
          ),
          squeeze: 1,
          diameterRatio: 20,
          itemExtent: 30.0,
          onSelectedItemChanged: widget.onSelectedItemChanged,
          children: List.generate(
              widget.timesList.length,
              (index) => Center(
                      child: Text(
                    '${widget.timesList[index]['time'].toString()} minutes',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: widget.selectedIndex == index
                            ? Colors.black
                            : Colors.grey,
                        fontSize: widget.selectedIndex == index ? 18 : 12),
                  ))),
        ),
      ),
    );
  }
}

class ScaleTransitionExample extends StatefulWidget {
  const ScaleTransitionExample({super.key});

  @override
  State<ScaleTransitionExample> createState() => _ScaleTransitionExampleState();
}

/// [AnimationController]s can be created with `vsync: this` because of
/// [TickerProviderStateMixin].
class _ScaleTransitionExampleState extends State<ScaleTransitionExample>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 1),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.fastOutSlowIn,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ScaleTransition(
          scale: _animation,
          child: const Icon(
            FontAwesomeIcons.stop,
            size: 20,
          ),
        ),
      ),
    );
  }
}
