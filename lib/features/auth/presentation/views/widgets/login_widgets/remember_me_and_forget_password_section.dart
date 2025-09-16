import 'package:cvision/core/extensions/access_cubits_extensions.dart';
import 'package:cvision/core/extensions/helper_extensions.dart';
import 'package:cvision/core/utils/app_colors.dart';
import 'package:cvision/core/utils/app_styles.dart';
import 'package:cvision/core/widgets/custom_text.dart';
import 'package:cvision/features/auth/presentation/views/password_reset_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RememberMeAndForgetPasswordSection extends StatefulWidget {
  const RememberMeAndForgetPasswordSection({
    super.key,
  });

  @override
  State<RememberMeAndForgetPasswordSection> createState() =>
      _RememberMeAndForgetPasswordSectionState();
}

class _RememberMeAndForgetPasswordSectionState extends State<RememberMeAndForgetPasswordSection> {
  bool isRemembered = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          side: const BorderSide(color: AppColors.primaryColor),
          checkColor: AppColors.secondaryColor,
          activeColor: AppColors.primaryColor,
          splashRadius: 0,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          visualDensity: VisualDensity.compact,
          value: isRemembered,
          onChanged: (value) {
            isRemembered = !isRemembered;
            context.authCubit.isRemembered = isRemembered;
            setState(() {});
          },
        ),
        CustomText('Remember Me', style: Styles.styleLight12(context).copyWith(fontSize: 12)),
        const Spacer(),
        GestureDetector(
          onTap: () => context.navigate(
            BlocProvider.value(
              value: context.authCubit,
              child: const PasswordResetView(),
            ),
          ),
          child: CustomText(
            'forget your password?',
            style: Styles.styleLight12(
              context,
            ).copyWith(fontSize: 12, color: AppColors.primaryColor),
          ),
        ),
      ],
    );
  }
}
