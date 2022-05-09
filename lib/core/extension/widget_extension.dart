import 'package:flutter/cupertino.dart';

extension WidgetExtension on Widget {
  Widget pagePadding(
          {EdgeInsetsGeometry? edgeInsetsGeometry,
          double? horizontal,
          double? vertical}) =>
      Padding(
        padding: edgeInsetsGeometry ??
            EdgeInsets.symmetric(
                horizontal: horizontal ?? 20, vertical: vertical ?? 50),
        child: this,
      );
}
