import 'package:cvision/features/auth/presentation/views/widgets/auth_widgets/custom_auth_app_bar.dart';
import 'package:cvision/core/widgets/custom_app_background_container.dart';
import 'package:flutter/cupertino.dart';

class MainAuthViewsStructure extends StatelessWidget {
  const MainAuthViewsStructure({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CustomAppBackgroundContainer(
      child: CustomScrollView(
        physics: const ClampingScrollPhysics(),
        slivers: [
          const SliverPadding(
            padding: EdgeInsetsGeometry.only(top: 16),
            sliver: CustomAuthAppBar(),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const Spacer(),
                child,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
