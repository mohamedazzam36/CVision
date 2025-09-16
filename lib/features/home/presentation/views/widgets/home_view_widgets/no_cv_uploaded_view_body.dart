import 'package:cvision/core/extensions/access_cubits_extensions.dart';
import 'package:cvision/core/utils/app_colors.dart';
import 'package:cvision/core/utils/app_styles.dart';
import 'package:cvision/features/home/presentation/views/widgets/home_view_widgets/upload_box.dart';
import 'package:flutter/material.dart';

class NoCvUploadedViewBody extends StatelessWidget {
  const NoCvUploadedViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      hasScrollBody: false,
      child: Column(
        children: [
          const Spacer(),
          Text(
            "You haven’t uploaded your CV yet.",
            style: Styles.styleBold16(context).copyWith(
              fontSize: 16,
            ),
          ),
          Text(
            "Upload now to get your skills analyzed!",
            style: Styles.styleBold16(context).copyWith(
              fontSize: 16,
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
                    color: AppColors.primaryColor,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 2,
          ),
          const SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}
