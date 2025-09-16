import 'package:cvision/features/home/presentation/views/widgets/home_view_widgets/upload_box_body.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class UploadBox extends StatelessWidget {
  const UploadBox({super.key, this.fileIcon, this.onTap, this.isDotted = true});

  final Widget? fileIcon;
  final GestureTapCallback? onTap;
  final bool isDotted;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Card(
        elevation: 8,
        margin: const EdgeInsets.all(0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        child: isDotted
            ? DottedBorder(
                color: const Color(0xff7B7575),
                strokeWidth: 2,
                dashPattern: const [24, 6],
                borderType: BorderType.RRect,
                radius: const Radius.circular(40),
                child: UploadBoxBody(onTap: onTap, fileIcon: fileIcon),
              )
            : UploadBoxBody(onTap: onTap, fileIcon: fileIcon),
      ),
    );
  }
}
