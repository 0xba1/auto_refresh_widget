import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AutoRefreshWidget extends StatefulWidget {
  final Duration interval;
  final Widget child;
  const AutoRefreshWidget(
      {Key? key, required this.interval, required this.child})
      : super(key: key);

  @override
  State<AutoRefreshWidget> createState() => _AutoRefreshWidgetState();
}

class _AutoRefreshWidgetState extends State<AutoRefreshWidget> {
  @override
  void initState() {
    super.initState();
    Timer.periodic(widget.interval, (_) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
