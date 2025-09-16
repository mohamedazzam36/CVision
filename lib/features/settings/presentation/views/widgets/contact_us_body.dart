import 'package:cvision/core/functions/helper_functions.dart';
import 'package:cvision/core/widgets/custom_elevated_button.dart';
import 'package:cvision/features/settings/presentation/views/widgets/contact_us_input_section.dart';
import 'package:flutter/widgets.dart';

class ContactUsBody extends StatefulWidget {
  const ContactUsBody({super.key});

  @override
  State<ContactUsBody> createState() => _ContactUsBodyState();
}

class _ContactUsBodyState extends State<ContactUsBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  late String email, message;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          ContactUsInputSection(
            onMessageSaved: (value) => message = value!,
            onEmailSaved: (value) => email = value!,
          ),
          const SizedBox(
            height: 120,
          ),
          CustomElevatedButton(
            text: 'Send Message',
            onPressed: () async {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                await sendMailTo(context, email, body: message);
              }
            },
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
