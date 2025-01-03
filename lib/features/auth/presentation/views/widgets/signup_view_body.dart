import 'package:flutter/material.dart';
import 'package:fruits_hub/core/widgets/custom_text_field.dart';

import '../../../../../constants.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizintalPadding),
        child: Column(
          children: [
            const SizedBox(height: 24.0),
            // name
            CustomTextFormField(
              onSaved: (value) {},
              hintText: 'الاسم كامل',
              textInputType: TextInputType.name,
            ),
            const SizedBox(height: 16.0),
            // email
            CustomTextFormField(
              onSaved: (value) {},
              hintText: 'البريد الإلكتروني',
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 16.0),
            // password
            CustomTextFormField(
              hintText: 'كلمة المرور ',
              textInputType: TextInputType.visiblePassword,
              obscureText: false,
              suffixIcon: Icon(Icons.remove_red_eye),
            ),
            const SizedBox(height: 16.0),
          ],
        ),
      ),
    );
  }
}
