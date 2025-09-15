import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

customSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
}

Future<void> sendMailTo(
  BuildContext context,
  String email, {
  String? subject = 'Hello',
  String? body = 'Enter your message',
}) async {
  final Uri emailUri = Uri(
    scheme: 'mailto',
    path: email,
    query: 'subject=$subject&body=$body',
  );
  if (await canLaunchUrl(emailUri)) {
    await launchUrl(emailUri);
  } else {
    customSnackBar(context, 'Sorry, there was an error!');
  }
}

// void showLogoutDialogAlert(BuildContext context) {
//   showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return AlertDialog(
//         title: CustomText(
//           'Logout',
//           alignment: Alignment.center,
//           style: Styles.styleBold20(context).copyWith(fontSize: 20),
//         ),
//         content: Row(
//           children: [
//             CustomText(
//               'Are you sure you want to log out ?',
//               style: Styles.styleLight16(context).copyWith(fontSize: 16),
//             ),
//           ],
//         ),
//         actions: [
//           TextButton(
//             child: Text(
//               'back'.tr(),
//               style: Styles.extraLight16(context).copyWith(color: kBlackColor),
//             ),
//             onPressed: () {
//               context.pop();
//             },
//           ),
//         ],
//       );
//     },
//   );
// }
