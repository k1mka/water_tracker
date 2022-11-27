import 'package:flutter/material.dart';
import 'package:water_tracker/custom_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:water_tracker/generated/locale_keys.g.dart';
import 'package:water_tracker/presentation/screens/login_screen/login_screen.dart';

class AlreadyHaveAnAccountWidget extends StatelessWidget {
  const AlreadyHaveAnAccountWidget({Key? key}) : super(key: key);

  static const spaceTextSpan = TextSpan(text: ' ', style: TextStyle(fontSize: 16, color: Colors.black));
  static const notHaveAccountPadding = EdgeInsets.all(8.0);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: notHaveAccountPadding,
      child: Column(
        children: [
          InkWell(
            child: Text.rich(
              TextSpan(
                text: LocaleKeys.already_have_an_account.tr(),
                style: CustomTheme.notHaveAccountProperty,
                children: [
                  spaceTextSpan,
                  TextSpan(
                    text: LocaleKeys.sing_in.tr(),
                    style: CustomTheme.singUpProperty,
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
            onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LoginScreen())),
          ),
        ],
      ),
    );
  }
}