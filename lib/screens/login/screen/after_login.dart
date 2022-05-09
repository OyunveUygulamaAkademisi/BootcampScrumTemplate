import 'package:flutter/material.dart';
import 'package:swapy/core/constants/image/image_constants.dart';
import 'package:swapy/core/extension/context_extension.dart';
import 'package:swapy/core/extension/widget_extension.dart';
import 'package:swapy/core/widget/button/custom_button.dart';

class AfterLogin extends StatelessWidget {
  const AfterLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(ImageConstants.background),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Başlamaya Hazırsın!',
                  style: textTheme.headline1,
                ),
                Image.asset(ImageConstants.afterLogin),
                CustomButton(
                  text: 'Devam Et',
                  onTap: () {},
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Diam maecenas mi non sed ut odio.',
                  style: textTheme.bodyText2,
                  textAlign: TextAlign.center,
                )
              ],
            ).pagePadding(),
          )
        ],
      ),
    );
  }
}
