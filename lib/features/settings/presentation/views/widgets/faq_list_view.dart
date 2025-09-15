import 'package:cvision/features/settings/data/models/faq_model.dart';
import 'package:cvision/features/settings/presentation/views/widgets/faq_list_view_item.dart';
import 'package:flutter/material.dart';

class FaqListView extends StatelessWidget {
  const FaqListView({super.key});

  final List<FaqModel> items = const [
    FaqModel(
      title: 'What is this app about ?',
      description:
          'Our app is designed to help students and professionals stay focused, manage their time better, and improve their skills using AI-powered recommendations.',
    ),
    FaqModel(
      title: 'Who can use this app ?',
      description:
          'The app is mainly designed for students, graduates, and professionals who want to improve their skills and reduce distractions while learning.',
    ),
    FaqModel(
      title: 'How does the AI assistant help me ?',
      description:
          'The AI assistant provides tailored recommendations, summarizes content, and guides you through your learning journey.',
    ),
    FaqModel(
      title: 'How can I contact support if I face an issue ?',
      description: 'You can reach us anytime through the Help Center Or Contact Us.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return FaqListViewItem(faqModel: items[index]);
      },
    );
  }
}
