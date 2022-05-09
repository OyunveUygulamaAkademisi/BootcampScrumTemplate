import 'package:flutter/material.dart';

class CustomBaseDialog extends StatelessWidget {
  const CustomBaseDialog({
    Key? key,
    this.child,
    this.insetAnimationDuration = const Duration(milliseconds: 100),
    this.insetAnimationCurve = Curves.decelerate,
  }) : super(key: key);

  final Widget? child;
  final Duration insetAnimationDuration;

  final Curve insetAnimationCurve;

  Color _getColor(BuildContext context) =>
      Theme.of(context).dialogBackgroundColor;

  @override
  Widget build(BuildContext context) => AnimatedPadding(
    padding: MediaQuery.of(context).viewInsets +
        const EdgeInsets.symmetric(horizontal: 40.0, vertical: 24.0),
    duration: insetAnimationDuration,
    curve: insetAnimationCurve,
    child: MediaQuery.removeViewInsets(
      removeLeft: true,
      removeTop: true,
      removeRight: true,
      removeBottom: true,
      context: context,
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(minWidth: 280.0),
          child: Material(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            elevation: 30.0,
            color: _getColor(context),
            type: MaterialType.card,
            child: child,
          ),
        ),
      ),
    ),
  );
}