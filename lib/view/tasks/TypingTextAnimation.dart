import 'dart:async';
import 'package:flutter/material.dart';

class TypingTextAnimation extends StatefulWidget {
  final String text;
  final Duration duration;
  final TextStyle style;

  const TypingTextAnimation({
    required this.text,
    required this.duration,
    this.style = const TextStyle(),
  });

  @override
  _TypingTextAnimationState createState() => _TypingTextAnimationState();
}

class _TypingTextAnimationState extends State<TypingTextAnimation> {
  late String _animatedText;
  late Timer _timer;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _animatedText = '';
    _timer = Timer.periodic(widget.duration ~/ widget.text.length, (timer) {
      setState(() {
        if (_currentIndex < widget.text.length) {
          _animatedText = widget.text.substring(0, _currentIndex + 1);
          _currentIndex++;
        } else {
          _timer.cancel();
        }
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _animatedText,
      style: widget.style,
    );
  }
}
