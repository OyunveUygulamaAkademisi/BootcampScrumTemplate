import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:swapy/core/navigation/navigation_service.dart';
import 'custom_dynamic_dialog.dart';

///
/// Custom Confirm Dialog is a confirmation dialog with parameters such as title and content,
/// which includes OK and Cancel options. Button titles can be changed. The default functions
/// of the buttons allow to return to the previous page with a boolean value when clicked.
/// Confirm button returns true, cancel button returns false. Custom functions can be assigned
/// to buttons.
///
/// Example: final res = await customShowDialog(
///                   context: context,
///                   builder: (context) => const CustomConfirmDialog(
///                     title: 'Alert',
///                     contentText: 'Lorem ipsum data was enabled on ',
///                   ),
///                 );
///

class CustomConfirmDialog extends StatelessWidget {
  final String? title;
  final String? contentText;
  final String? cancelButtonText;
  final String? confirmButtonText;
  final bool justShowConfirm;
  final VoidCallback? cancelOnTap;
  final VoidCallback? confirmOnTap;

  const CustomConfirmDialog(
      {Key? key,
      this.title,
      this.contentText,
      this.cancelButtonText,
      this.confirmButtonText,
      this.justShowConfirm = false,
      this.cancelOnTap,
      this.confirmOnTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) => CustomDynamicDialog(
          title: title != null ? Text(title!) : null,
          content: title != null ? Text(contentText!) : null,
          actions: [
            if (!justShowConfirm)
              ElevatedButton(
                  onPressed: () {
                    if (cancelOnTap != null) cancelOnTap!();
                    NavigationService.instance.navigateBack(arg: false);
                  },
                  child: Text(cancelButtonText ?? 'İptal')),
            ElevatedButton(
                onPressed: () {
                  if (confirmOnTap != null) confirmOnTap!();
                  NavigationService.instance.navigateBack(arg: true);
                },
                child: Text(confirmButtonText ?? 'Tamam')),
          ]);
}
