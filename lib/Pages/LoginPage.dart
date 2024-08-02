import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vizzhy_app/Pages/ProfilePage.dart';
import 'package:vizzhy_app/common/fonts/TextStyles.dart';
import 'package:vizzhy_app/common/widgets/AuthButton.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 128, horizontal: 12),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: Get.height * 0.1,
                child: const Text("Welcome,", style: TextStyles.titles),
              ),
              SizedBox(
                height: Get.height * 0.05,
              ),
              const Text(
                "User Name",
                style: TextStyles.textFieldTitles,
              ),
              const SizedBox(
                height: 13,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "Enter User Name",
                    hintStyle: TextStyles.textFieldHintText,
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none)),
              ),
              SizedBox(
                height: Get.height * 0.05,
              ),
              const Text(
                "Password",
                style: TextStyles.textFieldTitles,
              ),
              const SizedBox(
                height: 13,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter Password",
                  hintStyle: TextStyles.textFieldHintText,
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none),
                  suffixIcon: const Icon(
                    Icons.visibility,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(height: Get.height * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (bool? value) {},
                        splashRadius: 24,
                        side: const BorderSide(color: Colors.white, width: 2),
                      ),
                      const Text(
                        "Remember me",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  const Text(
                    "Forgot Password",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              SizedBox(height: Get.height * 0.02),
              AuthButton(
                  text: "Login",
                  onClick: () {
                    Get.to(ProfilePage());
                  }),
              SizedBox(height: Get.height * 0.02),
              Center(
                child: RichText(
                  text: const TextSpan(
                      text: 'By clicking, I accept the ',
                      children: [
                        TextSpan(
                          text: 'terms of service ',
                          style: TextStyle(
                              color: Colors.white,
                              decoration: TextDecoration.underline),
                        ),
                        TextSpan(text: ' and '),
                        TextSpan(
                          text: 'privacy policy',
                          style: TextStyle(
                              color: Colors.white,
                              decoration: TextDecoration.underline),
                        )
                      ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
