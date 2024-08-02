// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vizzhy_app/common/fonts/TextStyles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: ElevatedButton(
        onPressed: () {
          Get.back();
        },
        style: const ButtonStyle(
          backgroundColor: WidgetStateColor.transparent,
        ),
        iconAlignment: IconAlignment.start,
        child: const Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Colors.white,
        ),
      ),
      title: Text(title, style: TextStyles.headLine1),
      elevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
