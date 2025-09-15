import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/app_images.dart';
import '../../../data/on_boarding_model.dart';
import 'on_boarding_states.dart';

class OnBoardingCubit extends Cubit<OnBoardingStates> {
  OnBoardingCubit() : super(InitialState());

  List<OnBoardingModel> onBoardList = [
    OnBoardingModel(
      image: Assets.imagesOnBoarding1,
      title: "Feeling lost in your career?",
    ),
    OnBoardingModel(
      image: Assets.imagesOnBoarding2,
      title: "Your Personalized Career Guide",
    ),
    OnBoardingModel(
      image: Assets.imagesOnBoarding3,
      title: "Shortest path to your job",
    ),
  ];

  bool isLast = false;

  void changeOnBoardingPage(int index) {
    if (index == onBoardList.length - 1) {
      isLast = true;
    } else {
      isLast = false;
    }
    emit(ChangeOnBoardingPage());
  }

  String changeButtonText() {
    if (isLast == true) {
      emit(ChangeButtonText());
      return "Get Started";
    } else {
      return "Next";
    }
  }
}
