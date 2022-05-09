import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:ionicons/ionicons.dart';
import 'package:swapy/core/base/view/base_view.dart';
import 'package:swapy/core/constants/image/image_constants.dart';
import 'package:swapy/core/extension/widget_extension.dart';
import 'package:swapy/core/widget/button/custom_circle_button.dart';
import 'package:swapy/core/widget/button/custom_button.dart';
import 'package:swapy/screens/login/view_model/login_view_model.dart';
import 'package:swapy/core/extension/context_extension.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<LoginViewModel>(
        vmBuilder: () => LoginViewModel(), builder: _body);
  }

  Widget _body(BuildContext context, LoginViewModel viewModel) => Scaffold(
        body: Stack(children: [
          Image.asset(
            ImageConstants.background,
          ),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Flexible(
                  child: Text(
                    'Yeniden Hoşgeldiniz',
                    style: Theme.of(context).textTheme.headline1,
                    textAlign: TextAlign.center,
                  ),
                ),
                Flexible(
                    child: SizedBox(
                  height: context.dynamicHeight(25),
                )),
                Flexible(
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Diam maecenas mi non sed ut odio. Non, justo, sed facilisi et.',
                    style: Theme.of(context).textTheme.bodyText2,
                    textAlign: TextAlign.center,
                  ),
                ),
                Flexible(
                    child: SizedBox(
                  height: context.dynamicHeight(50),
                )),
                Flexible(
                  flex: 3,
                  child: Form(
                    key: viewModel.formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextFormField(
                          onSaved: viewModel.saveEmail,
                          decoration: InputDecoration(hintText: 'Email'),
                        ),
                        TextFormField(
                          onSaved: viewModel.savePassword,
                          obscureText: viewModel.showPassword,
                          decoration: InputDecoration(
                            hintText: 'Şifre',
                            suffixIcon: InkWell(
                              onTap: viewModel.showHidePassword,
                              child: Icon(EvaIcons.eyeOff2),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: viewModel.forgotPassword,
                      child: Text(
                        'Parolamı Unuttum',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            ?.copyWith(decoration: TextDecoration.underline),
                      )),
                ),
                Flexible(
                    child: SizedBox(
                  height: context.dynamicHeight(25),
                )),
                Flexible(
                  child: CustomButton(
                    text: 'Giriş Yap',
                    onTap: viewModel.login,
                  ),
                ),
                Flexible(
                    child: SizedBox(
                  height: context.dynamicHeight(80),
                )),
                Flexible(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(child: Image.asset(ImageConstants.otherOptionsLeft)),
                      Flexible(
                        child: Text(
                          'Ya da bunlardan biriyle devam et!',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              ?.copyWith(fontSize: 12),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Flexible(child: Image.asset(ImageConstants.otherOptionsRight)),
                    ],
                  ),
                ),
                Flexible(
                    child: SizedBox(
                  height: context.dynamicHeight(50),
                )),
                Flexible(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomCircleButton(
                        onTap: viewModel.loginWithGmail,
                        icon: EvaIcons.google,
                      ),
                      CustomCircleButton(
                        onTap: viewModel.loginWitFacebook,
                        icon: EvaIcons.facebook,
                      ),
                      CustomCircleButton(
                        onTap: viewModel.loginWithApple,
                        icon: Ionicons.logo_apple,
                      ),
                    ],
                  ),
                ),
              ],
            ).pagePadding(horizontal: 12),
          ),
        ]),
      );
}
