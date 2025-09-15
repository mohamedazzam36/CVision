import 'package:cvision/core/extensions/access_cubits_extensions.dart';
import 'package:cvision/features/home/presentation/views/widgets/learning_view_widgets/learning_view_with_no_content.dart';
import 'package:cvision/features/home/presentation/views/widgets/learning_view_widgets/uploaded_cv_learning_view.dart';
import 'package:flutter/material.dart';

class LearningView extends StatelessWidget {
  const LearningView({super.key});

  @override
  Widget build(BuildContext context) {
    return context.layoutCubit.isCvUploaded
        ? const UploadedCvLearningView()
        : const LearningViewWithNoContent();
  }
}
