import 'package:cvision/features/settings/presentation/views/widgets/contact_us_body.dart';
import 'package:cvision/core/widgets/custom_back_and_title_structure.dart';
import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomBackAndTitleStructure(
        appBarTitle: 'Contact Us',
        sliver: SliverToBoxAdapter(child: ContactUsBody()),
      ),
    );
  }
}
