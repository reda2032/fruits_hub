import 'package:flutter/material.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/terms_and_conditions.dart';

import '../../../../../constants.dart';
import '../../../../../core/widgets/custom_text_field.dart';
import '../../../../../core/widgets/password_field.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      reverse: true,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizintalPadding),
        child: Column(
          children: [
            const SizedBox(height: 24.0),
            // full name
            CustomTextFormField(
              onSaved: (value) {},
              hintText: 'الاسم كامل',
              textInputType: TextInputType.name,
            ),
            const SizedBox(height: 16.0),
            // email address
            CustomTextFormField(
              onSaved: (value) {},
              hintText: 'البريد الإلكتروني',
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 16.0),
            // password
            PasswordField(
              onSaved: (value) {},
            ),
            const SizedBox(height: 16.0),
            // Terms And Conditions
            TermsAndConditionsWidget(
              onChanged: (value) {},
            ),
            const SizedBox(height: 30.0),
          ],
        ),
      ),
    );
  }
}
