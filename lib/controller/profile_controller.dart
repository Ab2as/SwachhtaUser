import 'package:get/get.dart';
import 'package:swachhta_app/model/profile_model.dart' as model;
import 'package:swachhta_app/widget/constants.dart';

class ProfileController extends GetxController {
  void registerUser(String name, String gender, String address, String pincode,
      String department) async {
    try {
      if (name.isNotEmpty &&
          gender.isNotEmpty &&
          address.isNotEmpty &&
          pincode.isNotEmpty &&
          department.isNotEmpty) {
        //save user to our auth and firebase firestore

        model.Profile profile = model.Profile(
          name: name,
          gender: gender,
          address: address,
          pincode: pincode,
          department: department,
        );

        await firestore.collection('Workerprofile').doc().set(profile.toJson());
      } else {
        Get.snackbar(
          "Error Uploading Data",
          'Please enter all the fields',
        );
      }
    } catch (e) {
      Get.snackbar(
        "Error Uploading Data",
        e.toString(),
      );
      print(e.toString());
    }
  }
}
