import 'package:cvision/core/extensions/access_cubits_extensions.dart';
import 'package:cvision/core/extensions/helper_extensions.dart';
import 'package:cvision/core/utils/app_colors.dart';
import 'package:cvision/core/utils/app_images.dart';
import 'package:cvision/features/home/presentation/views/widgets/layout_widgets/main_layout_structure.dart';
import 'package:cvision/features/home/presentation/views/widgets/profile_view_widgets/no_data_profile_footer.dart';
import 'package:cvision/features/home/presentation/views/widgets/profile_view_widgets/profile_header_section.dart';
import 'package:cvision/features/home/presentation/views/widgets/profile_view_widgets/profile_progress_widget.dart';
import 'package:cvision/features/home/presentation/views/widgets/profile_view_widgets/uploaded_cv_profile_footer.dart';
import 'package:cvision/features/settings/presentation/views/settings_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayoutStructure(
      appBarTitle: '',
      appBarActionIcon: Container(
        width: 32,
        height: 32,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.secondaryColor,
        ),
        child: SvgPicture.asset(
          Assets.imagesSettingsIcon,
          fit: BoxFit.scaleDown,
        ),
      ),
      onPressed: () => context.navigate(const SettingsView()),
      sliver: SliverToBoxAdapter(
        child: Column(
          children: [
            const ProfileHeaderSection(),
            const SizedBox(
              height: 20,
            ),
            const ProfileProgressWidget(),
            SizedBox(
              height: context.layoutCubit.isCvUploaded ? 16 : 48,
            ),
            context.layoutCubit.isCvUploaded
                ? const UploadedCvProfileFooter()
                : const NoDataProfileFooter(),
          ],
        ),
      ),
    );
  }
}
