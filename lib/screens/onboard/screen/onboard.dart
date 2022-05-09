import 'package:flutter/material.dart';
import 'package:swapy/core/constants/image/image_constants.dart';
import 'package:swapy/core/navigation/navigation_service.dart';
import 'package:swapy/core/navigation/router.dart';

class Onboard extends StatelessWidget {
  const Onboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            ImageConstants.background,
            width: size.width,
            height: size.height,
          ),
          Column(
            children: [
              Image.asset(ImageConstants.onboardVector),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Eşyalarını Geri Dönüştürmeye Hazır Mısın?',
                  style: Theme.of(context).textTheme.headline1,
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Diam maecenas mi non sed ut odio. Non, justo, sed facilisi et. Eget viverra urna, vestibulum egestas faucibus egestas.',
                  style: Theme.of(context).textTheme.bodyText2,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () => NavigationService.instance
                        .navigateReplacement(AppRouter.login),
                    child: Text('Giriş Yap'),
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 35, vertical: 15),
                        ),
                        shape:
                            MaterialStateProperty.all(RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                          topRight: Radius.zero,
                          bottomRight: Radius.zero,
                          bottomLeft: Radius.circular(12),
                          topLeft: Radius.circular(12),
                        )))),
                  ),
                  ElevatedButton(
                    onPressed: () => NavigationService.instance
                        .navigateReplacement(AppRouter.register),
                    child: Text(
                      'Kayıt Ol',
                      style: theme.textTheme.button
                          ?.copyWith(color: Color(0xFF464444)),
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 35, vertical: 15),
                        ),
                        shape:
                            MaterialStateProperty.all(RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                          topLeft: Radius.zero,
                          bottomLeft: Radius.zero,
                          bottomRight: Radius.circular(12),
                          topRight: Radius.circular(12),
                        )))),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
