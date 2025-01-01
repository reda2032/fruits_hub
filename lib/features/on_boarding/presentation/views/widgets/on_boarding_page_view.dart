import 'package:flutter/material.dart';
import 'package:fruits_hub/features/on_boarding/presentation/views/widgets/page_view_item.dart';
import 'package:fruits_hub/generated/assets.dart';

class OnBoardingPageview extends StatelessWidget {
  const OnBoardingPageview({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        PageviewItem(
          isVisible: true,
          image: Assets.imagesPageViewItem1Image,
          backgroundImage: Assets.imagesPageViewItem1BackgroundImage,
          subtitle:
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'مرحبًا بك في',
              ),
              Text(
                '  HUB',
              ),
              Text(
                'Fruit',
              ),
            ],
          ),
        )
      ],
    );
  }
}
