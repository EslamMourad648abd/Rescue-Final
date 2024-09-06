import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Function(BuildContext) onPressed;

  const Button({
    Key? key,
    required this.text,
    required this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueAccent,
            fixedSize: const Size(350, 80),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0))),
        onPressed: () => onPressed(context),
        child: Text(text,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white)));
  }
}
