import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PageviewItem extends StatelessWidget {
  const PageviewItem({
    super.key,
    required this.image,
    required this.backgroundImage,
    required this.subtitle,
    required this.title,
    required this.isVisible,
  });

  final String image, backgroundImage;
  final String subtitle;
  final Widget title;

  final bool isVisible;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [],
    );
  }
}
