import 'dart:async';
import 'package:flutter/material.dart';
import 'package:todo_list/constants/constants.dart';

class CircularTimer extends StatefulWidget {
  final int duration; // Total time in seconds

  const CircularTimer({Key? key, required this.duration}) : super(key: key);

  @override
  _CircularTimerState createState() => _CircularTimerState();
}

class _CircularTimerState extends State<CircularTimer> {
  late Timer _timer;
  late int _remainingTime;

  @override
  void initState() {
    super.initState();
    _remainingTime = widget.duration;
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_remainingTime > 0) {
        setState(() {
          _remainingTime--;
        });
      } else {
        _timer.cancel();
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  String get _formattedTime {
    int minutes = _remainingTime ~/ 60;
    int seconds = _remainingTime % 60;
    return '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: 213,
          height: 213,
          child: CircularProgressIndicator(
            value: (_remainingTime / widget.duration),
            strokeWidth: 29,
            backgroundColor: Colors.grey,
            valueColor: AlwaysStoppedAnimation<Color>(secondaryColor),
          ),
        ),
        Text(
          _formattedTime,
          style: TextStyle(color: Colors.white, fontSize: 40),
        ),
      ],
    );
  }
}
