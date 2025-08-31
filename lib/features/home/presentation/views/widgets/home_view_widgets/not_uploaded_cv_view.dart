import 'package:cvision/core/extensions/helper_extensions.dart';
import 'package:cvision/features/home/presentation/views/widgets/home_view_widgets/upload_box.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_styles.dart';
import 'header_of_home_view.dart';

class NotUploadedCvView extends StatelessWidget {
  const NotUploadedCvView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: context.height * .04,
      ),
      child: Column(
        children: [
          const HeaderOfHomeView(),
          SizedBox(
            height: context.height * .2,
          ),
          Text("You haven’t uploaded your CV yet.", style: Styles.styleBold16(context).copyWith(
            fontSize: 16,
            color: AppColors.secondaryColor,
          ),),
          Text(
            "Upload now to get your skills analyzed!",
            style: Styles.styleBold16(context).copyWith(
              fontSize: 16,
              color: AppColors.secondaryColor,
            ),),
          SizedBox(
            height: context.height * .03,
          ),
          const UploadBox(),
        ],
      ),
    );
  }
}
