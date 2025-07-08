import 'package:flutter/material.dart';

import 'overlay_service.dart';

class OverlayServiceWidget extends StatefulWidget {
  const OverlayServiceWidget({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  OverlayServiceWidgetState createState() => OverlayServiceWidgetState();
}

class OverlayServiceWidgetState extends State<OverlayServiceWidget> {
  late OverlayEntry _overlayEntry;

  @override
  void initState() {
    super.initState();
    _overlayEntry = OverlayEntry(
      builder: (BuildContext context) => Container(),
    );
    OverlayService.instance.overlayEntry = _overlayEntry;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Overlay(
        initialEntries: [
          OverlayEntry(
            builder: (BuildContext context) {
              if (widget.child != null) {
                return widget.child!;
              } else {
                return Container();
              }
            },
          ),
          _overlayEntry,
        ],
      ),
    );
  }
}
