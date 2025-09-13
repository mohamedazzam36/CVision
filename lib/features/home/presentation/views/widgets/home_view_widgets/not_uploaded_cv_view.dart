import 'package:cvision/core/extensions/access_cubits_extensions.dart';
import 'package:cvision/core/prefs/user_prefs.dart';
import 'package:cvision/features/home/presentation/manager/home_cubit/home_cubit.dart';
import 'package:cvision/features/home/presentation/manager/home_cubit/home_states.dart';
import 'package:cvision/features/home/presentation/views/widgets/home_view_widgets/upload_box.dart';
import 'package:cvision/features/home/presentation/views/widgets/layout_widgets/main_layout_structure.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_styles.dart';

class NotUploadedCvView extends StatelessWidget {
  const NotUploadedCvView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeStates>(
      builder: (context, state) => Scaffold(
        body: MainLayoutStructure(
          appBarTitle: 'Hello, ${UserPrefs.currentUser.name} !',
          appBarSubTitle: 'Your job journey starts from here.',
          appBarActionIcon: const Icon(
            Icons.notifications,
            color: AppColors.secondaryColor,
          ),
          sliver: SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "You haven’t uploaded your CV yet.",
                  style: Styles.styleBold16(context).copyWith(
                    fontSize: 16,
                    color: AppColors.secondaryColor,
                  ),
                ),
                Text(
                  "Upload now to get your skills analyzed!",
                  style: Styles.styleBold16(context).copyWith(
                    fontSize: 16,
                    color: AppColors.secondaryColor,
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                UploadBox(
                  onTap: () {
                    context.homeCubit.pickAndUploadFile();
                  },
                  fileIcon: Column(
                    children: [
                      Text(
                        "click to browse",
                        style: Styles.styleLight12(
                          context,
                        ).copyWith(color: const Color(0xff7B7575)),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                        child: Icon(
                          Icons.cloud_upload_outlined,
                          size: 48,
                          color: Color(0xff7B7575),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
