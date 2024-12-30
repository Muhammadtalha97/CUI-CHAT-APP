import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../Model/UserModel.dart';

class ProfileController extends GetxController {
  final auth = FirebaseAuth.instance;
  final db = FirebaseFirestore.instance;

  RxBool isLoading = false.obs;

  Rx<UserModel> currentUser = UserModel().obs;

  void onInit() async {
    super.onInit();
    await getUserDetails();
  }

  Future<void> getUserDetails() async {
    await db.collection("users").doc(auth.currentUser!.uid).get().then(
        (value) => {currentUser.value = UserModel.fromJson(value.data()!)});
  }

  Future<void> updateProfile(String name, String about, String number) async {
    isLoading.value = true;
    try {
      final updateUser = UserModel(
          id: auth.currentUser!.uid,
          email: auth.currentUser!.email,
          name: name,
          about: about,
          phoneNumber: number);
      await db
          .collection("users")
          .doc(auth.currentUser!.uid)
          .set(updateUser.toJson());
      await getUserDetails();
    } catch (ex) {
      print(ex);
    }
    isLoading.value = false;
  }
}
