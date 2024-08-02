// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:vizzhy_app/common/fonts/TextStyles.dart';
import 'package:vizzhy_app/utils/AppColors.dart';

class AuthButton extends StatelessWidget {
  final String text;
  final VoidCallback onClick;
  final double height;
  final Color backgroundColor;
  final BorderRadius borderRadius;

  const AuthButton(
      {Key? key,
      required this.text,
      required this.onClick,
      this.height = 48,
      this.backgroundColor = AppColors.primaryColor,
      this.borderRadius = const BorderRadius.all(
        Radius.circular(10),
      )})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: backgroundColor,
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
              shape: RoundedRectangleBorder(borderRadius: borderRadius)),
          onPressed: onClick,
          child: Center(
            child: Text(
              text,
              style: TextStyles.headLine2,
            ),
          )),
    );
  }
}
