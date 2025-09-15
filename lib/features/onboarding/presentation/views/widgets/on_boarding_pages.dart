import 'package:cvision/core/extensions/access_cubits_extensions.dart';
import 'package:flutter/cupertino.dart';
import 'on_board_item.dart';

class OnBoardingPages extends StatelessWidget {
  const OnBoardingPages({required this.controller, super.key});

  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        onPageChanged: (index) {
          context.onBoardingCubit.changeOnBoardingPage(index);
        },
        itemBuilder: (context, index) => OnBoardItem(
          model: context.onBoardingCubit.onBoardList[index],
        ),
        itemCount: context.onBoardingCubit.onBoardList.length,
        controller: controller,
        physics: const BouncingScrollPhysics(),
      ),
    );
  }
}
