import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:swapy/core/base/view_model/base_view_model.dart';
import 'package:swapy/core/navigation/navigation_service.dart';
import 'package:swapy/core/navigation/router.dart';
import 'package:swapy/screens/login/model/login_request_model.dart';
import 'package:swapy/screens/login/service/login_service.dart';

class LoginViewModel extends BaseViewModel {
  final formKey = GlobalKey<FormState>();
  final navigationService = NavigationService.instance;
  final service = LoginService();
  var userRequest = LoginRequestModel();

  UserCredential? user;

  bool showPassword = true;

  @override
  FutureOr<void> init() {}

  void saveEmail(String? email) {
    userRequest.email = email;
  }

  void savePassword(String? password) {
    userRequest.password = password;
  }

  void forgotPassword() {}

  void login() async {
    if(formKey.currentState != null) {
      isLoading = true;
      formKey.currentState!.save();
      if (userRequest.isNotEmpty) {
        user = await service.loginWithEmailAndPassword(userRequest);
        if (user != null) {
          navigationService.navigateReplacement(AppRouter.afterLogin);
        }
      }
      isLoading = false;
    }
  }

  void loginWithGmail() {}

  void loginWitFacebook() {}

  void loginWithApple() {}

  void showHidePassword(){
    showPassword = !showPassword;
    notifyListeners();
  }
}
