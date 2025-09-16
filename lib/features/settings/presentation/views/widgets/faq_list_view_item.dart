import 'package:cvision/core/utils/app_colors.dart';
import 'package:cvision/core/utils/app_styles.dart';
import 'package:cvision/core/widgets/custom_text.dart';
import 'package:cvision/features/settings/data/models/faq_model.dart';
import 'package:flutter/material.dart';

class FaqListViewItem extends StatelessWidget {
  const FaqListViewItem({super.key, required this.faqModel});

  final FaqModel faqModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: ExpansionTile(
        childrenPadding: const EdgeInsets.all(0),
        expandedAlignment: Alignment.centerLeft,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(color: Color(0xffE6E8EB)),
        ),
        collapsedShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(color: Color(0xffE6E8EB)),
        ),
        collapsedBackgroundColor: AppColors.secondaryColor,
        backgroundColor: AppColors.secondaryColor,
        title: CustomText(
          faqModel.title,
          style: Styles.styleBold12(context).copyWith(fontSize: 12),
          alignment: Alignment.centerLeft,
        ),
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Divider(),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              faqModel.description,
              style: Styles.styleRegular12(context).copyWith(fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}
