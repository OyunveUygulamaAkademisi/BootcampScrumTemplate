import 'package:flutter/material.dart';
import 'package:swapy/core/navigation/navigation_service.dart';
import 'package:swapy/core/widget/dialog/util/custom_show_dialog.dart';
import 'package:swapy/core/widget/dialog/widgets/custom_confirm_dialog.dart';

Future showConfirmDialog(
    {String? title,
    String? contentText,
    String? cancelButtonText,
    String? confirmButtonText,
    VoidCallback? cancelOnTap,
    VoidCallback? confirmOnTap,
    bool isJustConfirm = false}) async {
  return customShowDialog(
      context: NavigationService.instance.navigationKey.currentContext,
      builder: (context) => CustomConfirmDialog(
            title: title,
            contentText: contentText,
            cancelButtonText: cancelButtonText,
            confirmButtonText: confirmButtonText,
            cancelOnTap: cancelOnTap,
            confirmOnTap: confirmOnTap,
            justShowConfirm: isJustConfirm,
          ));
}
