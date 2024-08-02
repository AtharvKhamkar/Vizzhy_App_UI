import 'package:get/get.dart';
import 'package:vizzhy_app/Model/ProfileModel.dart';

class ProfileController extends GetxController {
  var profile = ProfileModel(name: "John Doe", id: "VZ12345").obs;
  var isLoading = false.obs;

  void fetchProfile() async {
    await Future.delayed(const Duration(seconds: 2));
    isLoading(false);
  }
}
