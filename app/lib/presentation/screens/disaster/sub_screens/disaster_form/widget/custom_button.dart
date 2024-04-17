import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function onPressed;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onPressed(),
      style: ElevatedButton.styleFrom(
        side: const BorderSide(color: Colors.grey, width: 1),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
        shadowColor: Colors.transparent,
      ),
      child: Text(text),
    );
  }
}
