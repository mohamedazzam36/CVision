import 'package:cvision/features/home/presentation/views/widgets/profile_view_widgets/profile_progress_header.dart';
import 'package:cvision/features/home/presentation/views/widgets/profile_view_widgets/profile_progress_info_section.dart';
import 'package:cvision/features/home/presentation/views/widgets/profile_view_widgets/profile_progress_score_section.dart';
import 'package:flutter/material.dart';

class ProfileProgressWidget extends StatelessWidget {
  const ProfileProgressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xffffffff).withAlpha(180),
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Column(
        children: [
          ProfileProgressHeader(),
          SizedBox(
            height: 16,
          ),
          ProfileProgressScoreSection(),
          SizedBox(
            height: 28,
          ),
          ProfileProgressInfoSection(),
        ],
      ),
    );
  }
}
