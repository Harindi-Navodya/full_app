import 'package:flutter/material.dart';
import 'package:full_app/src/constants/image_strings.dart';
import 'package:full_app/src/constants/text_strings.dart';

class SignupHeaderWidget extends StatelessWidget {
  const SignupHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image(
          image: AssetImage(tWelcomeScreenImage),
          height: size.height * 0.2,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 10, right: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                tSignUpTitle,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              Text(
                tSignUpSubTitle,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
