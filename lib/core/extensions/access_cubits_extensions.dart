import 'package:cvision/features/auth/presentation/manager/auth_cubit/auth_cubit.dart';
import 'package:cvision/features/home/presentation/manager/layout_cubit/layout_cubit.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/home/presentation/manager/home_cubit/home_cubit.dart';
import '../../features/onboarding/presentation/manager/on_boarding_cubit/on_boarding_cubit.dart';

extension AccessCubits on BuildContext {
  AuthCubit get authCubit => BlocProvider.of<AuthCubit>(this);

  OnBoardingCubit get onBoardingCubit => BlocProvider.of<OnBoardingCubit>(this);

  LayoutCubit get layoutCubit => BlocProvider.of<LayoutCubit>(this);

  HomeCubit get homeCubit => BlocProvider.of<HomeCubit>(this);
}
