import 'package:ui_core/src/utils/overlay/widgets/custom_loading.dart';

import 'package:flutter/cupertino.dart';

import 'overlay_service_widget.dart';

class OverlayService {
  factory OverlayService() => _instance;
  static final OverlayService _instance = OverlayService._internal();

  static OverlayService get instance => _instance;

  OverlayService._internal();

  static TransitionBuilder init({
    TransitionBuilder? builder,
  }) {
    return (BuildContext context, Widget? child) {
      if (builder != null) {
        return builder(context, OverlayServiceWidget(child: child));
      } else {
        return OverlayServiceWidget(child: child);
      }
    };
  }

  late OverlayState? overlayState;
  late OverlayEntry? overlayEntry;

  static void showOverlay(BuildContext context, Widget child) {
    instance._showOverlay(context, child);
  }

  static void showCustomLoading(BuildContext context, String message) {
    instance._showOverlay(
      context,
      CustomLoading(
        message: message,
        isLoading: true,
      ),
    );
  }

  void _showOverlay(BuildContext context, Widget child) {
    overlayState = Overlay.of(context);
    overlayEntry = OverlayEntry(
      builder: (context) => child,
    );
    overlayState?.insert(overlayEntry!);
  }

  static void dismiss() {
    instance._dismiss();
  }

  void _dismiss() {
    try {
      overlayEntry?.remove();
      overlayEntry = null;
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
