import 'package:cvision/core/extensions/helper_extensions.dart';
import 'package:cvision/features/onboarding/data/on_boarding_model.dart';
import 'package:flutter/cupertino.dart';
import '../../../../../core/utils/app_styles.dart';

class OnBoardItem extends StatelessWidget {
  const OnBoardItem({super.key, this.model});

  final OnBoardingModel? model;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
            ),
            clipBehavior: Clip.antiAlias,
            child: Image.asset(
              model!.image,
              width: context.width,
              height: context.height * .6,
            ),
          ),
        ),
        Text(
          model!.title,
          style: Styles.styleBold20(context).copyWith(fontSize: 20, color: const Color(0xffFEFEFE)),
        ),
      ],
    );
  }
}
