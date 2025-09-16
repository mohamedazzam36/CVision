import 'package:cvision/core/extensions/access_cubits_extensions.dart';
import 'package:cvision/core/extensions/helper_extensions.dart';
import 'package:cvision/features/home/presentation/manager/home_cubit/home_cubit.dart';
import 'package:cvision/features/home/presentation/manager/home_cubit/home_states.dart';
import 'package:cvision/features/home/presentation/manager/layout_cubit/layout_cubit.dart';
import 'package:cvision/features/home/presentation/manager/layout_cubit/layout_states.dart';
import 'package:cvision/features/home/presentation/views/widgets/home_view_widgets/uploaded_cv_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class LayoutView extends StatelessWidget {
  const LayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeStates>(
      listener: (context, state) {
        if (state is UploadedCvToApiSuccess) {
          context.navigate(const UploadedCvView());
        }
      },
      builder: (context, state) => ModalProgressHUD(
        inAsyncCall: state is UploadedCvToApiLoading,
        child: BlocBuilder<LayoutCubit, LayoutStates>(
          builder: (context, state) {
            return Scaffold(
              body: context.layoutCubit.screens[context.layoutCubit.currentIndex],
              bottomNavigationBar: Container(
                width: context.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: SalomonBottomBar(
                  duration: const Duration(
                    milliseconds: 300,
                  ),
                  curve: Curves.easeOut,
                  currentIndex: context.layoutCubit.currentIndex,
                  onTap: (i) {
                    context.layoutCubit.changeBottomNavBar(i);
                  },
                  items: context.layoutCubit.items,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
