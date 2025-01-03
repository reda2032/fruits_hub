import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/core/widgets/custom_text_field.dart';
import 'package:fruits_hub/features/splash/presentation/views/widgets/dont_have_account_widget.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // email
            CustomTextFormField(
              hintText: 'البريد الالكترونى ',
              textInputType: TextInputType.emailAddress,
              obscureText: false,
            ),
            SizedBox(height: 16),
            // password
            CustomTextFormField(
              hintText: 'كلمة المرور ',
              textInputType: TextInputType.visiblePassword,
              obscureText: false,
              suffixIcon: Icon(Icons.remove_red_eye),
            ),
            const SizedBox(height: 16.0),
            // forgot password text
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'نسيت كلمة المرور؟',
                  style: TextStyles.semiBold13.copyWith(
                    color: AppColors.lightPrimaryColor,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 33.0),
            // login button
            CustomButton(
              onPressed: () {},
              text: 'تسجيل دخول',
            ),
            const SizedBox(height: 33.0),
            // don't have an account
            DontHaveAnAccountWidget(),
          ],
        ),
      ),
    );
  }
}
