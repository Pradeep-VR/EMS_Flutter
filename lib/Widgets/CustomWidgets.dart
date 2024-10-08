import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon; // Type for Icon
  final Color color;   // Type for Color
  final String label;  // Type for Label text
  final VoidCallback onPressEvent; // Type for onPressed event
  final bool isVisible; // Control visibility of the button

  const CustomIconButton({
    super.key,
    required this.icon,   // Required fields
    required this.color,
    required this.label,
    required this.onPressEvent, // onPressed event is required
    this.isVisible = true,      // Default visibility is true
  });

  @override
  Widget build(BuildContext context) {
    // Only build the widget if it's visible
    if (!isVisible) {
      return Container(); // Skip rendering the widget if not visible
    }

    return Container(
      padding: const EdgeInsets.all(5.0), // Padding inside container
      decoration: BoxDecoration(
        color: Colors.blue[50], // Background color
        border: Border.all(color: Colors.blue, width: 1), // Border with color and width
        borderRadius: BorderRadius.circular(5), // Rounded corners
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon: Icon(icon, size: 40, color: color), // Icon with color and size
            onPressed: onPressEvent, // onPressed event passed as argument
          ),
          Center(
            child: Text(
              label, // Display the label text
              style: const TextStyle(fontSize: 16, color: Colors.black), // Text style
            ),
          ),
        ],
      ),
    );
  }
}

enum ToastType { success, warning, error }

class CustomToast extends StatelessWidget {
  final String message;
  final ToastType toastType;

  const CustomToast({
    super.key,
    required this.message,
    required this.toastType,
  });

  @override
  Widget build(BuildContext context) {
    // Define different styles based on the toast type
    Color backgroundColor;
    IconData icon;

    switch (toastType) {
      case ToastType.success:
        backgroundColor = Colors.green;
        icon = Icons.check_circle;
        break;
      case ToastType.warning:
        backgroundColor = Colors.orange;
        icon = Icons.warning;
        break;
      case ToastType.error:
        backgroundColor = Colors.red;
        icon = Icons.error;
        break;
    }

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(icon, color: Colors.white, size: 30),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              message,
              style: const TextStyle(color: Colors.white, fontSize: 16),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
