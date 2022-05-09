import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:swapy/core/base/view_model/base_view_model.dart';
import 'package:swapy/core/navigation/navigation_service.dart';
import 'package:swapy/core/navigation/router.dart';
import 'package:swapy/core/widget/dialog/util/custom_show_dialog.dart';
import 'package:swapy/core/widget/dialog/util/show_confirm_dialog.dart';
import 'package:swapy/screens/register/model/register_request_model.dart';
import 'package:swapy/screens/register/service/register_service.dart';

class RegisterViewModel extends BaseViewModel {
  final navigationService = NavigationService.instance;
  final formKey = GlobalKey<FormState>();
  final service = RegisterService();

  UserCredential? user;

  var registerRequest = RegisterRequestModel();

  @override
  FutureOr<void> init() {}

  void saveUserName(String? userName) {
    registerRequest.userName = userName;
  }

  void saveEmail(String? email) {
    registerRequest.email = email;
  }

  void savePassword(String? password) {
    registerRequest.password = password;
  }

  void saveRePassword(String? password) {
    if (password != registerRequest.password) {
      showConfirmDialog(
          contentText:
              'Girdiğiniz şifreler birbiriyle eşleşmiyor lütfen düzenltiniz.',
          isJustConfirm: true);
    } else {
      registerRequest.rePassword = password;
    }
  }

  void register() async {
    if (formKey.currentState != null) {
      formKey.currentState!.save();
      if (registerRequest.isNotEmpty) {
        user = await service.register(registerRequest);
        if (user != null) {
          navigationService.navigateReplacement(AppRouter.afterLogin);
        }
      }
    }
  }

  void login() {
    navigationService.navigateReplacement(AppRouter.login);
  }
}
