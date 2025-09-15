import 'package:cvision/features/onboarding/presentation/views/widgets/skip_button.dart';
import 'package:cvision/features/onboarding/presentation/views/widgets/smooth_page_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'get_started_button.dart';
import 'on_boarding_pages.dart';

class OnBoardingScreenBody extends StatefulWidget {
  const OnBoardingScreenBody({super.key});

  @override
  State<OnBoardingScreenBody> createState() => _OnBoardingScreenBodyState();
}

class _OnBoardingScreenBodyState extends State<OnBoardingScreenBody> {
  final PageController boardController = PageController();

  @override
  void dispose() {
    super.dispose();
    boardController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: SafeArea(
            child: Column(
              children: [
                const SkipButton(),
                OnBoardingPages(
                  controller: boardController,
                ),
                SmoothIndicator(
                  controller: boardController,
                ),
                GetStartedButton(
                  controller: boardController,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
