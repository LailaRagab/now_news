import 'package:flutter/material.dart';

class SharedIconButton extends StatelessWidget {
  SharedIconButton(
      {super.key,
      required this.icon,
      required this.color,
      this.onPressed,
      required this.size});
  final IconData icon;
  final Color color;
  final double size;
  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(icon),
      color: color,
      iconSize: size,
    );
  }
}
