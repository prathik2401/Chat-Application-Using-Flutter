import 'package:chat_app/common/widgets/custom_button.dart';
import 'package:chat_app/features/auth/screens/login_screen.dart';
import 'package:chat_app/widgets/colors.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  void navigateToLoginScreen(BuildContext context) {
    Navigator.pushNamed(context, LoginScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var agreeButtonText = 'Agree and Continue';
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Welcome to uConnect',
              style: TextStyle(
                  fontSize: 33, fontWeight: FontWeight.w600, color: titleColor),
            ),
            SizedBox(
              height: size.height / 9,
            ),
            Image.asset(
              'assets/bg.png',
              height: 340,
              width: 340,
            ),
            SizedBox(height: size.height / 9),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Read our privacy policy. Tap "Agree and Continue" after reading.',
                style: TextStyle(color: greyColor),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
                width: size.width * 0.75,
                child: CustomButton(
                    text: agreeButtonText,
                    onPressed: () => navigateToLoginScreen(context))),
          ],
        ),
      )),
    );
  }
}
