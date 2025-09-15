import 'package:cvision/core/extensions/helper_extensions.dart';
import 'package:cvision/features/home/presentation/manager/home_cubit/home_cubit.dart';
import 'package:cvision/features/home/presentation/manager/home_cubit/home_states.dart';
import 'package:cvision/features/home/presentation/views/widgets/home_view_widgets/not_uploaded_cv_view.dart';
import 'package:cvision/features/home/presentation/views/widgets/home_view_widgets/uploaded_cv_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeCubit, HomeStates>(
      listener: (context, state) {
        if (state is UploadedCvToApiSuccess) {
          context.navigate(const UploadedCvView());
        }
      },
      child: const NotUploadedCvView(),
    );
  }
}
