import 'package:cvision/core/widgets/custom_app_background_container.dart';
import 'package:cvision/features/settings/presentation/views/widgets/custom_settings_app_bar.dart';
import 'package:flutter/cupertino.dart';

class CustomBackAndTitleStructure extends StatelessWidget {
  const CustomBackAndTitleStructure({
    super.key,
    required this.sliver,
    required this.appBarTitle,
    this.hasShodow = false,
  });

  final Widget sliver;
  final String appBarTitle;
  final bool hasShodow;

  @override
  Widget build(BuildContext context) {
    return CustomAppBackgroundContainer(
      child: CustomScrollView(
        physics: const ClampingScrollPhysics(),
        slivers: [
          SliverPadding(
            padding: const EdgeInsetsGeometry.only(top: 16),
            sliver: CustomSettingsAppBar(
              appBarTitle: appBarTitle,
              hasShodow: hasShodow,
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            sliver: sliver,
          ),
        ],
      ),
    );
  }
}
