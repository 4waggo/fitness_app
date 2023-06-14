import 'package:flutter/material.dart';

Widget indicatorLogicColorWidget(bool isActive, BuildContext context) {
  return AnimatedContainer(
    duration: const Duration(
      milliseconds: 150,
    ),
    margin: const EdgeInsets.symmetric(
      horizontal: 2.0,
    ),
    height: 14.0,
    width: 14.0,
    decoration: BoxDecoration(
      color: isActive
          ? Colors.orangeAccent
          : Colors.grey,
      borderRadius: const BorderRadius.all(
        Radius.circular(12),
      ),
    ),
  );
}
