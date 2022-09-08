import 'package:flutter/material.dart';

class ConsultButtonWidget extends StatelessWidget {
  final MaterialStateProperty<Color?>? backgroundColor;
  final Function()? onPressed;
  final String text;
  final Color? textColor;

  const ConsultButtonWidget({
    this.backgroundColor,
    this.onPressed,
    required this.text,
    this.textColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(backgroundColor: backgroundColor),
      child: Text(
        text,
        style: TextStyle(color: textColor),
      ),
    );
  }
}
