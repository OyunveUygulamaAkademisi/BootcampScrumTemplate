import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:ionicons/ionicons.dart';
import 'package:swapy/core/base/view/base_view.dart';
import 'package:swapy/core/constants/image/image_constants.dart';
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

  Widget _body(BuildContext context, viewModel) => Scaffold(
        body: Stack(children: [
          Image.asset(
            ImageConstants.background,
          ),
          SafeArea(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 50),
              width: context.currentWidth,
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          TextFormField(
                            decoration: InputDecoration(hintText: 'Email'),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Şifre',
                              suffixIcon: InkWell(
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
                        onPressed: () {},
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
                    child: CustomButton(text: 'Giriş Yap'),
                  ),
                  Flexible(
                      child: SizedBox(
                    height: context.dynamicHeight(50),
                  )),
                  Flexible(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(ImageConstants.otherOptionsLeft),
                        Text(
                          'Ya da bunlardan biriyle devam et!',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              ?.copyWith(fontSize: 12),
                          textAlign: TextAlign.center,
                        ),
                        Image.asset(ImageConstants.otherOptionsRight),
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
                          icon: EvaIcons.google,
                        ),
                        CustomCircleButton(
                          icon: EvaIcons.facebook,
                        ),
                        CustomCircleButton(
                          icon: Ionicons.logo_apple,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      );
}
