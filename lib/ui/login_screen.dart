import 'package:flutter/material.dart';
import 'package:lighting_store_app/ui/core/project_color.dart';
import 'package:lighting_store_app/ui/core/project_font_size.dart';
import 'package:lighting_store_app/ui/core/project_padding.dart';
import 'package:lighting_store_app/ui/product/language/language_item.dart';
import 'package:lighting_store_app/ui/product/login_screen_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  final imagePath = 'assets/png/ic_image.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ProjectColor.loginScreenBacgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(imagePath),
            const Column(
              children: [_MainText(), _DescriptionText()],
            ),
            Column(
              children: [
                const LoginScreenButton(),
                const Padding(
                  padding: ProjectPadding.paddingAllOne,
                  child: _LoremIpsumDescription(),
                ),
                TextButton(onPressed: () {}, child: const Text(LanguageItem.privacyAndPolicy)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _LoremIpsumDescription extends StatelessWidget {
  const _LoremIpsumDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      LanguageItem.loremIpsumshortText,
      style: Theme.of(context).textTheme.labelMedium?.copyWith(
            wordSpacing: 1,
            fontWeight: FontWeight.w400,
          ),
      textAlign: TextAlign.center,
    );
  }
}

class _DescriptionText extends StatelessWidget {
  const _DescriptionText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      LanguageItem.loginScreenDescriptionText,
      style: Theme.of(context).textTheme.labelMedium?.copyWith(
            wordSpacing: 1,
            fontWeight: FontWeight.w400,
          ),
      textAlign: TextAlign.center,
    );
  }
}

class _MainText extends StatelessWidget {
  const _MainText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      LanguageItem.loginScreenMainText,
      style: Theme.of(context).textTheme.headlineLarge?.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: ProjectFontSize.fontSizeLarge,
          ),
    );
  }
}
