import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Color backgroundColor;
  final Color foregroundColor;
  final BorderRadius borderRadius;
  final TextStyle style;
  final void Function()? onPressed;
  const CustomButton({
    super.key,
    required this.title,
    required this.backgroundColor,
    this.foregroundColor = Colors.black,
    required this.borderRadius,
    required this.style,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius,
          ),
        ),
        child: Text(
          title,
          style: style,
        ),
      ),
    );
  }
}
