import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

  final String text;
  VoidCallback onPressed;
  MyButton({
    super.key,
    required this.text,
    required this.onPressed,
});



  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        height: 40,
        onPressed: onPressed,
        color: Colors.white,
        child: Text(text),
    );
  }
}
