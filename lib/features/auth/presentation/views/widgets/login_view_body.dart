import 'package:flutter/material.dart';
import 'package:fruits_hub/core/widgets/custom_text_field.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomTextFormField(
            hintText: 'البريد الالكترونى ',
            textInputType: TextInputType.emailAddress,
            obscureText: false,
          ),
          SizedBox(height: 16),
          CustomTextFormField(
            hintText: 'كلمة المرور ',
            textInputType: TextInputType.visiblePassword,
            obscureText: false,
            suffixIcon: Icon(Icons.remove_red_eye),
          ),
        ],
      ),
    );
  }
}
