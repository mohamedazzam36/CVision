import 'package:cvision/features/auth/presentation/views/widgets/auth_widgets/custom_auth_background_container.dart';
import 'package:cvision/features/settings/presentation/views/widgets/custom_settings_app_bar.dart';
import 'package:flutter/cupertino.dart';

class MainSettingsStructure extends StatelessWidget {
  const MainSettingsStructure({super.key, required this.sliver, required this.appBarTitle});

  final Widget sliver;
  final String appBarTitle;

  @override
  Widget build(BuildContext context) {
    return CustomAuthBackgroundContainer(
      child: CustomScrollView(
        physics: const ClampingScrollPhysics(),
        slivers: [
          SliverPadding(
            padding: const EdgeInsetsGeometry.only(top: 16),
            sliver: CustomSettingsAppBar(
              appBarTitle: appBarTitle,
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
