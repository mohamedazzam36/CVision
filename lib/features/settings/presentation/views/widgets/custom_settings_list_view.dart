import 'package:cvision/core/extensions/helper_extensions.dart';
import 'package:cvision/core/utils/app_colors.dart';
import 'package:cvision/features/settings/data/models/settings_model.dart';
import 'package:cvision/features/settings/presentation/views/widgets/about_cvision.dart';
import 'package:cvision/features/settings/presentation/views/widgets/contact_us.dart';
import 'package:cvision/features/settings/presentation/views/widgets/faq.dart';
import 'package:cvision/features/settings/presentation/views/widgets/help_center.dart';
import 'package:cvision/features/settings/presentation/views/widgets/logout_bottom_sheet.dart';
import 'package:cvision/features/settings/presentation/views/widgets/privacy_policy.dart';
import 'package:cvision/features/settings/presentation/views/widgets/settings_list_view_item.dart';
import 'package:flutter/material.dart';

class CustomSettingsListView extends StatefulWidget {
  const CustomSettingsListView({super.key});

  @override
  State<CustomSettingsListView> createState() => _CustomSettingsListViewState();
}

class _CustomSettingsListViewState extends State<CustomSettingsListView> {
  late List<SettingsModel> itemsList;

  @override
  void initState() {
    inititemsList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(0),
      shrinkWrap: true,
      itemCount: itemsList.length,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return SettingsListViewItem(
          isLast: index == itemsList.length - 1,
          item: itemsList[index],
          onTap: itemsList[index].onTap,
        );
      },
    );
  }

  inititemsList() {
    itemsList = [
      SettingsModel(
        preIcon: Icons.info,
        title: 'About CVision',
        onTap: () => context.navigate(const AboutCvision()),
      ),
      SettingsModel(
        preIcon: Icons.contact_support,
        title: 'Help Center',
        onTap: () => context.navigate(const HelpCenter()),
      ),
      SettingsModel(
        preIcon: Icons.lock,
        title: 'Privacy Policy',
        onTap: () => context.navigate(const PrivacyPolicy()),
      ),
      SettingsModel(
        preIcon: Icons.headset_mic,
        title: 'Contact us',
        onTap: () => context.navigate(const ContactUs()),
      ),
      SettingsModel(
        preIcon: Icons.quiz,
        title: 'FAQ',
        onTap: () => context.navigate(const Faq()),
      ),
      SettingsModel(
        preIcon: Icons.logout,
        title: 'Log Out',
        prefixColor: Colors.red,
        onTap: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => const LogoutBottomSheet(),
            backgroundColor: AppColors.secondaryColor,
          );
        },
      ),
    ];
  }
}
