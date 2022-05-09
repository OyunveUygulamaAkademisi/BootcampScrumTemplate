import 'package:flutter/material.dart';
import 'package:swapy/core/navigation/navigation_service.dart';

///
/// The warning message is displayed to the user with the SnackBar if the isSnackBar parameter is true,
/// and with the AlertDialog if it is false. Does not include buttons.
///

void showInfoSnackOrDialog(String message, {bool isSnackBar = true,Color? color}) {
  var context = NavigationService.instance.navigationKey.currentContext!;
  if (isSnackBar) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message),backgroundColor: color,
    ));
  } else {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
          backgroundColor: color,
              content: Text(message),
            ));

  }
}
