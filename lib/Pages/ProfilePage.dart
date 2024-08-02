import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vizzhy_app/Pages/MyDevicesPage.dart';
import 'package:vizzhy_app/Pages/SettingPage.dart';
import 'package:vizzhy_app/common/fonts/TextStyles.dart';
import 'package:vizzhy_app/common/widgets/CustomAppBar.dart';
import 'package:vizzhy_app/common/widgets/RoundedIconContainer.dart';
import 'package:vizzhy_app/controller/ProfileController.dart';

class ProfilePage extends StatelessWidget {
  final ProfileController controller = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        appBar: const CustomAppBar(
          title: "Profile",
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Obx(
                () {
                  if (controller.isLoading.value) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else {
                    return Column(
                      children: [
                        _profileInfo(controller.profile.value.name,
                            controller.profile.value.id),
                        SizedBox(height: Get.height * 0.1),
                        _profileOptions()
                      ],
                    );
                  }
                },
              ),
            ],
          ),
        ));
  }
}

Widget _profileOptions() {
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
        _buildMenuOptions(Icons.person, 'Person Details', null),
        _buildMenuOptions(Icons.watch_outlined, 'My Devices', () async {
          await Get.to(const MyDevicesPage());
        }),
        _buildMenuOptions(
            Icons.wb_sunny_rounded, 'Metabolic Health Score', null),
        _buildMenuOptions(Icons.receipt_outlined, 'Reports', null),
        _buildMenuOptions(Icons.history, 'History', null),
        _buildMenuOptions(
            Icons.medical_services_outlined, 'Appointments', null),
        _buildMenuOptions(Icons.report_gmailerrorred, 'Health & Support', null),
        _buildMenuOptions(Icons.settings, 'Settings', () async {
          await Get.to(const SettingPage());
        }),
        _buildMenuOptions(Icons.logout, 'Logout', null),
      ],
    ),
  );
}

Widget _buildMenuOptions(
  IconData icon,
  String title,
  Future<void> Function()? onClick,
) {
  return SizedBox(
      height: Get.height * 0.09,
      width: Get.width,
      child: Column(
        children: [
          ListTile(
            minVerticalPadding: 0,
            leading: RoundedIconContainer(icon: icon),
            title: Text(title, style: TextStyles.headLine2),
            onTap: () async {
              if (onClick != null) {
                await onClick(); // Call the async function if provided
              }
            },
            trailing: const Icon(Icons.navigate_next_outlined),
          ),
          const Divider(
            thickness: 0.1,
          )
        ],
      ));
}

Widget _profileInfo(String userName, String userId) {
  return SizedBox(
    width: Get.width * 0.5,
    child: Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Get.height * 0.1),
            border: Border.all(color: Colors.white, width: 2),
          ),
          height: Get.height * 0.1,
          width: Get.width * 0.2,
          child: const FittedBox(
            child: Icon(
              Icons.person,
              color: Colors.white,
            ),
          ),
        ),
        Text(
          userName,
          style: TextStyles.headLine2,
        ),
        Text.rich(
          TextSpan(children: [
            const TextSpan(text: 'Vizzhy ID:', style: TextStyles.headLine3),
            TextSpan(text: userId, style: TextStyles.headLine3)
          ]),
        ),
      ],
    ),
  );
}
