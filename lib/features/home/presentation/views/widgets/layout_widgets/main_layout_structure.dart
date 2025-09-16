import 'package:cvision/core/widgets/custom_app_background_container.dart';
import 'package:cvision/features/home/presentation/views/widgets/layout_widgets/custom_layout_app_bar.dart';
import 'package:flutter/cupertino.dart';

class MainLayoutStructure extends StatelessWidget {
  const MainLayoutStructure({
    super.key,
    required this.appBarTitle,
    required this.sliver,
    this.appBarSubTitle,
    this.centerTitle = false,
    this.appBarActionIcon,
    this.onPressed,
    this.title,
  });

  final Widget sliver;
  final String appBarTitle;
  final String? appBarSubTitle;
  final bool centerTitle;
  final Widget? title, appBarActionIcon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return CustomAppBackgroundContainer(
      child: CustomScrollView(
        physics: const ClampingScrollPhysics(),
        slivers: [
          SliverPadding(
            padding: const EdgeInsetsGeometry.only(top: 16, right: 8, left: 8),
            sliver: CustomLayoutAppBar(
              appBarTitle: appBarTitle,
              centerTitle: centerTitle,
              appBarActionIcon: appBarActionIcon,
              appBarSubTitle: appBarSubTitle,
              onPressed: onPressed,
              title: title,
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 100),
            sliver: sliver,
          ),
        ],
      ),
    );
  }
}
