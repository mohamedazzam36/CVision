import 'package:cvision/core/extensions/access_cubits_extensions.dart';
import 'package:cvision/core/utils/app_colors.dart';
import 'package:cvision/features/home/presentation/manager/layout_cubit/layout_cubit.dart';
import 'package:cvision/features/home/presentation/manager/layout_cubit/layout_states.dart';
import 'package:cvision/features/home/presentation/views/widgets/layout_widgets/buttom_nav_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomButtomNavBar extends StatelessWidget {
  const CustomButtomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LayoutCubit, LayoutStates>(
      builder: (context, state) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 26, vertical: 16),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(75),
            color: AppColors.secondaryColor,
            boxShadow: [
              BoxShadow(
                blurRadius: 10,
                color: AppColors.blackColor.withAlpha(50),
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              context.layoutCubit.navBarItems.length,
              (index) {
                final isSelected = context.layoutCubit.currentIndex == index;
                return GestureDetector(
                  onTap: () => context.layoutCubit.changeBottomNavBar(index),
                  child: ButtomNavBarItem(
                    isSelected: isSelected,
                    item: context.layoutCubit.navBarItems[index],
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
