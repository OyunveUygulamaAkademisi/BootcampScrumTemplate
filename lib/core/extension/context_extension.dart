import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  double get currentWidth => MediaQuery.of(this).size.width;

  double get currentHeight => MediaQuery.of(this).size.height;

  double dynamicWidth(double width) => MediaQuery.of(this).size.width * width/412;

  double dynamicHeight(double height) => MediaQuery.of(this).size.width * height/800;
}
