import 'dart:math';

import 'package:flutter/material.dart';

class SeekBarWidget extends StatefulWidget {
  final Duration duration;
  final Duration position;
  final ValueChanged<Duration>? onChanged;
  final ValueChanged<Duration>? onChangeEnd;

  const SeekBarWidget({
    required this.duration,
    required this.position,
    this.onChanged,
    this.onChangeEnd,
  });

  @override
  _SeekBarWidgetState createState() => _SeekBarWidgetState();
}

class _SeekBarWidgetState extends State<SeekBarWidget> {
  double? _dragValue;
  bool _dragging = false;

  @override
  Widget build(BuildContext context) {
    final value = min(_dragValue ?? widget.position.inMilliseconds.toDouble(),
        widget.duration.inMilliseconds.toDouble());
    if (_dragValue != null && !_dragging) {
      _dragValue = null;
    }
    return Expanded(
      child: Column(
        children: [
          Expanded(
            child: Slider(
              mouseCursor: MouseCursor.uncontrolled,
              activeColor: Colors.white,
              inactiveColor: Colors.white60,
              max: widget.duration.inMilliseconds.toDouble(),
              value: value,
              onChanged: (value) {
                if (!_dragging) {
                  _dragging = true;
                }
                setState(() {
                  _dragValue = value;
                });
                if (widget.onChanged != null) {
                  widget.onChanged!(Duration(milliseconds: value.round()));
                }
              },
              onChangeEnd: (value) {
                if (widget.onChangeEnd != null) {
                  widget.onChangeEnd!(Duration(milliseconds: value.round()));
                }
                _dragging = false;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 10, bottom: 10),
            child: Row(
              children: [
                Text(
                  RegExp(r'((^0*[1-9]\d*:)?\d{2}:\d{2})\.\d+$')
                          .firstMatch(widget.position.toString())
                          ?.group(1) ??
                      widget.position.toString(),
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(fontSize: 14, color: Colors.grey),
                ),
                const Spacer(),
                Text(
                  RegExp(r'((^0*[1-9]\d*:)?\d{2}:\d{2})\.\d+$')
                          .firstMatch(widget.duration.toString())
                          ?.group(1) ??
                      widget.duration.toString(),
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
