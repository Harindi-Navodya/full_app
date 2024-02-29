import 'package:flutter/material.dart';
import 'package:full_app/src/constants/text_strings.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text.rich(
        TextSpan(
          text: "Don't have an account? ",
          style: Theme.of(context).textTheme.bodyLarge,
          children: const [
            TextSpan(
              text: tSignup,
              style: TextStyle(color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
