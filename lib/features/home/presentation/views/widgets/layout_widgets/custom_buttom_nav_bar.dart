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

// import 'package:cvision/core/utils/app_colors.dart';
// import 'package:flutter/material.dart';

// class CustomBottomNavBar extends StatefulWidget {
//   const CustomBottomNavBar({super.key});

//   @override
//   State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
// }

// class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
//   int _currentIndex = 0;

//   final List<String> labels = ["Home", "Stats", "Settings", "Profile"];
//   final List<IconData> icons = [
//     Icons.home,
//     Icons.bar_chart,
//     Icons.tune,
//     Icons.person,
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.all(16),
//       padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(40),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withAlpha(50),
//             blurRadius: 10,
//             offset: const Offset(0, 5),
//           ),
//         ],
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: List.generate(icons.length, (index) {
//           final isSelected = _currentIndex == index;

//           return GestureDetector(
//             onTap: () => setState(() => _currentIndex = index),
//             child: AnimatedContainer(
//               duration: const Duration(milliseconds: 300),
//               curve: Curves.easeOut,
//               padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//               decoration: BoxDecoration(
//                 color: isSelected ? AppColors.primaryColor : Colors.transparent,
//                 borderRadius: BorderRadius.circular(30),
//               ),
//               child: Row(
//                 children: [
//                   Icon(
//                     icons[index],
//                     color: isSelected ? Colors.white : Colors.grey[700],
//                   ),
//                   AnimatedSize(
//                     duration: const Duration(milliseconds: 300),
//                     curve: Curves.easeInOut,
//                     alignment: Alignment.centerLeft,
//                     child: isSelected
//                         ? Padding(
//                             padding: const EdgeInsets.only(left: 8),
//                             child: Text(
//                               labels[index],
//                               style: const TextStyle(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.w600,
//                               ),
//                             ),
//                           )
//                         : const SizedBox.shrink(),
//                   ),
//                 ],
//               ),
//             ),
//           );
//         }),
//       ),
//     );
//   }
// }
