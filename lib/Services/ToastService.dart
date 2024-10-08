
import 'package:flutter/material.dart';
import '../Widgets/CustomWidgets.dart';

class ToastService {
  static void showToast(BuildContext context, String message, ToastType type) {
    // Get the overlay state from the context
    final overlay = Overlay.of(context);

    // Create an overlay entry
    final overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        bottom: 50, // Position it at the bottom of the screen
        left: 20,
        right: 20,
        child: Material(
          color: Colors.transparent,
          child: CustomToast(message: message, toastType: type),
        ),
      ),
    );

    // Insert the overlay entry
    overlay.insert(overlayEntry);

    // Remove the overlay after 3 seconds
    Future.delayed(const Duration(seconds: 3), () {
      overlayEntry.remove();
    });
  }
}
