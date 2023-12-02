import 'package:flutter/material.dart';

class CustomSnackBar {
  final BuildContext context;
  final String message;
  final Color backgroundColor;

  CustomSnackBar.success({
    required this.context,
    required this.message,
    this.backgroundColor = Colors.green,
  }) {
    showSnackBar(context: context, message: message, color: backgroundColor);
  }

  CustomSnackBar.error({
    required this.context,
    required this.message,
    this.backgroundColor = Colors.red,
  }) {
    showSnackBar(context: context, message: message, color: backgroundColor);
  }

  static void showSnackBar({
    required BuildContext context,
    required String message,
    required Color color,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: color,
        content: Text(message,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            )),
        action: SnackBarAction(
          label: 'OK',
          textColor: Colors.white,
          onPressed: () {},
        ),
      ),
    );
  }
}
