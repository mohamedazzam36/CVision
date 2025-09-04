import 'package:cvision/core/extensions/access_cubits_extensions.dart';
import 'package:cvision/core/extensions/helper_extensions.dart';
import 'package:cvision/features/home/presentation/manager/home_cubit/home_cubit.dart';
import 'package:cvision/features/home/presentation/manager/home_cubit/home_states.dart';
import 'package:cvision/features/home/presentation/views/widgets/home_view_widgets/upload_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_styles.dart';
import 'header_of_home_view.dart';

class NotUploadedCvView extends StatelessWidget {
  const NotUploadedCvView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeStates>(
      builder: (context, state) => Padding(
        padding: EdgeInsets.only(
          top: context.height * .04,
        ),
        child: Column(
          children: [
            const HeaderOfHomeView(),
            SizedBox(
              height: context.height * .2,
            ),
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
            SizedBox(
              height: context.height * .03,
            ),
            UploadBox(
              onTap: () {
                context.homeCubit.pickFile();
              },
              fileIcon: Column(
                children: [
                  Text(
                    "click to browse",
                    style: Styles.styleLight12(context).copyWith(color: const Color(0xff7B7575)),
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
    );
  }
}
