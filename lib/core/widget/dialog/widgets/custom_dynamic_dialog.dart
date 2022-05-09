import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'custom_base_dialog.dart';
///
/// CustomDynamicDialog is a type of dialog. Title, content and buttons can be added.
/// If you want to add a button, you can add your List<Widget> type buttons to the actions parameter.
/// By default, the buttons are one-third the width of the phone. You can set the
/// isButtonWidthExpanded parameter to true if you want it to expand based on the content.
///
/// Example: customShowDialog(
///                   context: context,
///                   builder: (context) => CustomDynamicDialog(
///                     title: Text('Alert'),
///                     content: Text(
///                       'Lorem ipsum data was enabled on ',
///                       style: Theme.of(context).textTheme.headline6,
///                     ),
///                     actions: [
///                       ElevatedButton(onPressed: () {}, child: Text('Tamam')),
///                       ElevatedButton(onPressed: () {}, child: Text('İptal')),
///                     ],
///                   ),
///                 )
///
class CustomDynamicDialog extends StatelessWidget {
  const CustomDynamicDialog({
    Key? key,
    this.title,
    this.titlePadding,
    this.content,
    this.contentPadding = const EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 12.0),
    this.actions,
    this.semanticLabel,
    this.isButtonWidthExpanded = false,
  })  : assert(contentPadding != null),
        super(key: key);

  final Widget? title;
  final EdgeInsetsGeometry? titlePadding;
  final Widget? content;
  final EdgeInsetsGeometry? contentPadding;
  final List<Widget>? actions;
  final String? semanticLabel;
  final bool isButtonWidthExpanded;

  @override
  Widget build(BuildContext context) {
    final children = <Widget>[];
    var label = semanticLabel;

    if (title != null) {
      children.add(Padding(
        padding: titlePadding ??
            EdgeInsets.fromLTRB(12.0, 12.0, 12.0, content == null ? 12.0 : 0.0),
        child: DefaultTextStyle(
          style: Theme.of(context).textTheme.headline3!,
          child: Semantics(child: Center(child: title), namesRoute: true),
        ),
      ));
    } else {
      switch (defaultTargetPlatform) {
        case TargetPlatform.iOS:
          label = semanticLabel;
          break;
        case TargetPlatform.android:
        case TargetPlatform.fuchsia:
          label = semanticLabel ?? 'Uyarı';
          break;
        default:
          break;
      }
    }

    if (content != null) {
      children.add(Flexible(
        child: Padding(
          padding: contentPadding ?? EdgeInsets.all(8),
          child: DefaultTextStyle(
              style: Theme.of(context).textTheme.headline6!, child: content!),
        ),
      ));
    }

    if (actions != null) {
      children.add(ButtonTheme(
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceEvenly,
          children: isButtonWidthExpanded
              ? actions!
              : actions!
                  .map((e) => SizedBox(
                        width: MediaQuery.of(context).size.width / 3,
                        child: e,
                      ))
                  .toList(),
          layoutBehavior: ButtonBarLayoutBehavior.constrained,
        ),
      ));
    }

    Widget dialogChild = IntrinsicWidth(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: children),
      ),
    );

    if (label != null) {
      dialogChild =
          Semantics(namesRoute: true, label: label, child: dialogChild);
    }

    return CustomBaseDialog(child: dialogChild);
  }
}
