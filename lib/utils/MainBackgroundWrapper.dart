import 'package:flutter/material.dart';
import 'package:vizzhy_app/common/fonts/TextStyles.dart';
import 'package:vizzhy_app/utils/AppGradient.dart';

class MainBackgroundWrapper extends StatelessWidget {
  final Widget page;

  const MainBackgroundWrapper({
    super.key,
    required this.page,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: AppGradient.mainBackground),
        child: page,
      ),
    );
  }
}