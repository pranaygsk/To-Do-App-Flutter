import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String btnName;
  final VoidCallback onPressed;
  MyButton({Key? key, required this.btnName, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Theme.of(context).primaryColor,
      child: Text(btnName),
    );
  }
}
