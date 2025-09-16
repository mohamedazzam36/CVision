import 'package:cvision/core/extensions/helper_extensions.dart';
import 'package:cvision/core/utils/app_colors.dart';
import 'package:cvision/core/utils/app_styles.dart';
import 'package:cvision/core/widgets/custom_text.dart';
import 'package:cvision/features/auth/presentation/views/widgets/register_widgets/terms_and_conditions_widget.dart';
import 'package:flutter/material.dart';

class AgreeConditionsSection extends StatelessWidget {
  const AgreeConditionsSection({
    super.key,
    this.isAgreed = false,
    this.onCheckPressed,
  });
  final bool isAgreed;
  final void Function(bool?)? onCheckPressed;

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
          value: isAgreed,
          onChanged: onCheckPressed,
        ),
        CustomText('I agree to the ', style: Styles.styleLight12(context).copyWith(fontSize: 12)),
        GestureDetector(
          onTap: () => context.navigate(const TermsAndConditionsWidget()),
          child: CustomText(
            'Terms ',
            style: Styles.styleLight12(
              context,
            ).copyWith(fontSize: 12, color: AppColors.primaryColor),
          ),
        ),
        CustomText('& ', style: Styles.styleLight12(context).copyWith(fontSize: 12)),
        GestureDetector(
          onTap: () => context.navigate(const TermsAndConditionsWidget()),
          child: CustomText(
            'Conditions ',
            style: Styles.styleLight12(
              context,
            ).copyWith(fontSize: 12, color: AppColors.primaryColor),
          ),
        ),
        CustomText('and ', style: Styles.styleLight12(context).copyWith(fontSize: 12)),
        GestureDetector(
          onTap: () => context.navigate(const TermsAndConditionsWidget()),
          child: CustomText(
            'Privacy Policy',
            style: Styles.styleLight12(
              context,
            ).copyWith(fontSize: 12, color: AppColors.primaryColor),
          ),
        ),
      ],
    );
  }
}
