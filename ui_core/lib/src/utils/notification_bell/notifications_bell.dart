import 'dart:async';

import 'package:flutter/material.dart' hide Notification;

class NotificationsBell extends StatefulWidget {
  const NotificationsBell({
    super.key,
    this.hasNotification = true,
    required this.bellColor,
  });

  final bool hasNotification;
  final Color bellColor;
  @override
  NotificationsBellState createState() => NotificationsBellState();
}

class NotificationsBellState extends State<NotificationsBell>
    with TickerProviderStateMixin {
  AnimationController? _animationController;
  late Animation<double> _animation;

  double opacityLevel = 1.0;
  Timer? timer;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );

    _animation = TweenSequence([
      TweenSequenceItem(tween: Tween(begin: 0.0, end: 0.05), weight: 1),
      TweenSequenceItem(tween: Tween(begin: 0.05, end: -0.05), weight: 1),
      TweenSequenceItem(tween: Tween(begin: -0.05, end: 0.05), weight: 1),
      TweenSequenceItem(tween: Tween(begin: 0.05, end: 0.0), weight: 1),
    ]).animate(_animationController!);

    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (mounted) {
        setState(() {
          opacityLevel = opacityLevel == 0 ? 1.0 : 0.0;
        });
      }
    });
  }

  @override
  void dispose() {
    _animationController?.dispose();
    timer?.cancel();
    super.dispose();
  }

  void _shakeBell() {
    _animationController!.forward(from: 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return RotationTransition(
          turns: _animation,
          alignment: Alignment.topCenter,
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: _shakeBell,
              child: SizedBox(
                child: Stack(
                  children: [
                    IconButton(
                      icon: Icon(Icons.notifications,
                          color: widget.bellColor, size: 32),
                      onPressed: null,
                    ),
                    if (widget.hasNotification)
                      Positioned(
                        right: 6,
                        top: 8,
                        child: AnimatedOpacity(
                          opacity: opacityLevel,
                          duration: const Duration(milliseconds: 200),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            constraints: const BoxConstraints(
                              minWidth: 14,
                              minHeight: 14,
                            ),
                            child: Text(
                              '12',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
