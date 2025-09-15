import 'package:cached_network_image/cached_network_image.dart';
import 'package:cvision/core/prefs/user_prefs.dart';
import 'package:cvision/core/utils/app_images.dart';
import 'package:flutter/material.dart';

class ProfilePicWidget extends StatelessWidget {
  const ProfilePicWidget({super.key, required this.radius});

  final double radius;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: CircleAvatar(
        radius: radius,
        child: UserPrefs.currentUser.picture == null
            ? Image.asset(Assets.imagesEmptyProfilePic)
            : CachedNetworkImage(
                imageUrl: UserPrefs.currentUser.picture!.replaceAll("s96-c", "s800-c"),
                errorWidget: (context, url, error) => Image.asset(Assets.imagesEmptyProfilePic),
                placeholder: (context, url) => Image.asset(Assets.imagesEmptyProfilePic),
                fadeInDuration: Duration.zero,
                fadeOutDuration: Duration.zero,
              ),
      ),
    );
  }
}
