import 'package:flutter/material.dart';
import 'package:fruits_hub/constants.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/social_login_button.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_text_field.dart';
import 'dont_have_account_widget.dart';
import 'or_divider.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: kHorizintalPadding,
        ),
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          reverse: true,
          child: Column(
            children: [
              const SizedBox(height: 24.0),
              //  emailAddress
              const CustomTextFormField(
                hintText: 'البريد الالكتروني',
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16.0),
              //  password
              const CustomTextFormField(
                suffixIcon: Icon(
                  Icons.remove_red_eye,
                  color: Color(0xffC9CECF),
                ),
                hintText: 'كلمة المرور',
                textInputType: TextInputType.visiblePassword,
              ),
              const SizedBox(height: 16.0),
              //  forgot password
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
              //  login button
              CustomButton(
                onPressed: () {},
                text: 'تسجيل دخول',
              ),
              const SizedBox(height: 33.0),
              //  dont have an account
              const DontHaveAnAccountWidget(),
              const SizedBox(height: 33.0),
              const OrDivider(),
              const SizedBox(height: 16.0),
              //  social login button Google
              SocialLoginButton(
                onPressed: () {},
                image: AppImages.imagesGoogleIcon,
                title: 'تسجيل بواسطة جوجل',
              ),
              const SizedBox(height: 16.0),
              //  social login button Apple
              SocialLoginButton(
                onPressed: () {},
                image: AppImages.imagesApplIcon,
                title: 'تسجيل بواسطة أبل',
              ),
              const SizedBox(height: 16.0),
              //  social login button Facebook
              SocialLoginButton(
                onPressed: () {},
                image: AppImages.imagesFacebookIcon,
                title: 'تسجيل بواسطة فيسبوك',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
