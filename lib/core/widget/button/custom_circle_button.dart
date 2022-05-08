import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:swapy/core/extension/context_extension.dart';

class CustomCircleButton extends StatelessWidget {
  final IconData? icon;
  final Widget? child;
  const CustomCircleButton({Key? key, this.icon, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.dynamicWidth(50),
      height: context.dynamicWidth(50),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 2.0,
              spreadRadius: 0.0,
              offset: Offset(0.0, 2.0), // shadow direction: bottom right
            )
          ]
      ),
      child: child ?? Icon(icon),
    );
  }
}
