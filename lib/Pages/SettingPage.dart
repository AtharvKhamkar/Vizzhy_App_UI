import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vizzhy_app/common/fonts/TextStyles.dart';
import 'package:vizzhy_app/common/widgets/CustomAppBar.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: const CustomAppBar(title: "Settings"),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [_settingOptions()],
        ),
      ),
    );
  }
}

Widget _settingOptions() {
  bool _switchValue = false;
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
    padding: const EdgeInsets.all(2),
    decoration: const BoxDecoration(
      color: Color.fromRGBO(
          95, 87, 113, 0.16), // Apply background color with opacity
      borderRadius: BorderRadius.all(Radius.circular(8)),
    ),
    child: Column(
      children: [
        _buildSettingOptions(null, "Language Preference", "English"),
        _buildSettingOptions(
            CupertinoSwitch(
                value: _switchValue,
                onChanged: (bool value) {
                  _switchValue = !_switchValue;
                }),
            "Face ID",
            null),
        _buildSettingOptions(
            CupertinoSwitch(value: _switchValue, onChanged: (bool value) {}),
            "MPIN",
            null),
        _buildSettingOptions(null, "Delete Account", null),
      ],
    ),
  );
}

Widget _buildSettingOptions(
    CupertinoSwitch? cupertinoSwitch, String title, String? subtitle) {
  return SizedBox(
      height: Get.height * 0.09,
      width: Get.width,
      child: Column(
        children: [
          ListTile(
            minVerticalPadding: 0,
            title: Text(title, style: TextStyles.headLine2),
            onTap: () {},
            trailing: cupertinoSwitch ??
                (subtitle != null
                    ? Text(
                        subtitle,
                        style: TextStyles.headLine3,
                      )
                    : null),
          ),
          const Divider(
            thickness: 0.1,
          )
        ],
      ));
}
