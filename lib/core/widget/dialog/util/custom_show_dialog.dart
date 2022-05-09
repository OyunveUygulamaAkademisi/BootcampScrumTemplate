import 'package:flutter/material.dart';
import 'package:swapy/core/navigation/navigation_service.dart';
///
/// customShowDialog is the customization of showDialog with animations, theme, etc..
///
///
/// Example:
///
///     customShowDialog(
///       context: context,
///       builder: (context) => CustomConfirmDialog(
///         title: 'Alert',
///         contentText: 'Lorem ipsum data was enabled on ',
///       ),
///     )
///
Future<T?>? customShowDialog<T>({
  @required
  BuildContext? context,
  bool barrierDismissible = false,
  @Deprecated(
      'Instead of using the "child" argument, return the child from a closure '
          'provided to the "builder" argument. This will ensure that the BuildContext '
          'is appropriate for widgets built in the dialog.')
  Widget? child,
  WidgetBuilder? builder,
}) {
  context = NavigationService.instance.navigationKey.currentContext!;
  assert(child == null || builder == null);
  return Navigator.of(context, rootNavigator: true).push(_DialogRoute<T>(
    child: child ?? Builder(builder: builder ?? (context) => const SizedBox()),
    theme: Theme.of(context),
    barrierDismissible: barrierDismissible,
    barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
  ));
}


class _DialogRoute<T> extends PopupRoute<T> {
  _DialogRoute({
    @required this.theme,
    bool barrierDismissible: true,
    this.barrierLabel,
    @required this.child,
    RouteSettings? settings,
  })  : assert(barrierDismissible != null),
        _barrierDismissible = barrierDismissible,
        super(settings: settings);

  final Widget? child;
  final ThemeData? theme;

  @override
  Duration get transitionDuration => const Duration(milliseconds: 150);

  @override
  bool get barrierDismissible => _barrierDismissible;
  final bool _barrierDismissible;

  @override
  Color get barrierColor => Colors.black54;

  @override
  final String? barrierLabel;

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) =>
      SafeArea(
        child: Builder(builder: (BuildContext context) {
          final Widget annotatedChild = Semantics(
            child: child,
            scopesRoute: true,
            explicitChildNodes: true,
          );
          return theme != null
              ? Theme(data: theme!, child: annotatedChild)
              : annotatedChild;
        }),
      );

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) =>
      FadeTransition(
          opacity: CurvedAnimation(parent: animation, curve: Curves.easeOut),
          child: child);
}