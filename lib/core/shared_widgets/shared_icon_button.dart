import 'package:flutter/material.dart';

class SharedIconButton extends StatelessWidget {
  SharedIconButton(
      {super.key, required this.icon, required this.color, this.onPressed});
  final IconData icon;
  final Color color;
  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(icon),
      color: color,
    );
  }
}
