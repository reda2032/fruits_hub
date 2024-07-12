import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fruits_hub/features/on_boarding/presentation/views/widgets/on_boarding_page_view.dart';

import '../../../../../core/utils/app_colors.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(
          child: OnBoardingPageView(),
        ),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            activeColor: AppColors.primaryColor,
            color: AppColors.primaryColor.withOpacity(.5),
          ),
        ),
      ],
    );
  }
}
