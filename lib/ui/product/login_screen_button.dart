import 'package:flutter/material.dart';
import 'package:lighting_store_app/ui/core/project_color.dart';
import 'package:lighting_store_app/ui/core/project_padding.dart';
import 'package:lighting_store_app/ui/home_page.dart';
import 'package:lighting_store_app/ui/product/language/language_item.dart';

class LoginScreenButton extends StatefulWidget {
  const LoginScreenButton({super.key});

  @override
  State<LoginScreenButton> createState() => _LoginScreenButtonState();
}

class _LoginScreenButtonState extends State<LoginScreenButton> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: ElevatedButton.icon(
            onPressed: () {
              NavigateNavigatorManager().navigateTowidget(context, const HomePage());
            },
            label: _buttonText(context),
            style: ElevatedButton.styleFrom(
                backgroundColor: ProjectColor.loginScreenButtonColor,
                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(17)))),
            icon: const Icon(
              Icons.arrow_back,
              color: ProjectColor.whiteColor,
            )));
  }
}

//     );

Padding _buttonText(BuildContext context) {
  return Padding(
    padding: ProjectPadding.buttonPadding1,
    child: Text(
      LanguageItem.loginScreenButton,
      style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: ProjectColor.loginScreenButtonTextColor),
    ),
  );
}

//Hedef sayfaya gider ve geri plandaki login ekranını arka plandan siler ve geri dönülmez
class NavigateNavigatorManager {
  void navigateTowidget(BuildContext context, Widget widget) {
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) {
      return widget;
    }), (Route<dynamic> route) => false);
  }
}
