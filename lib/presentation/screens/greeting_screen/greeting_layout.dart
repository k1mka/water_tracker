import 'package:flutter/material.dart';
import 'package:water_tracker/custom_theme.dart';
import 'package:water_tracker/presentation/widgets/custom_button.dart';
import 'package:water_tracker/presentation/widgets/greeting_widget..dart';

class GreetingLayout extends StatelessWidget {
  const GreetingLayout({Key? key}) : super(key: key);

  static const paddingHorizontal = EdgeInsets.symmetric(horizontal: 28.0);
  static const spaces = SizedBox(height: 24);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: paddingHorizontal,
        child: Column(
          children: [
            const Spacer(),
            const GreetingWidget(),
            const Spacer(),
            CustomButton(
              buttonColor: CustomTheme.buttonDarkColor,
              textButtonColor: CustomTheme.decorationColor,
              onPressed: () {
                // TODO: CALL SOMETHING
              },
              text: 'Get started',
            ),
            spaces,
          ],
        ),
      ),
    );
  }
}
