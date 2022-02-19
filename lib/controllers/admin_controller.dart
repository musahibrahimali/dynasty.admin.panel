import 'package:dynasty_urban_style/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';

class AdminController extends GetxController {
  static AdminController instance = Get.find();

  final _isLoggedin = false.obs;

  // is the admin currently logged in
  bool get isAdminloggedin => _isLoggedin.value == true;

  // check admin login status
  initAdmin() async {
    SharedPreferences prefs = await sharedPreferences;
    var uid = prefs.getString('user_id');
    if (uid != null) {
      // the use is already logged in
      _isLoggedin.value = true;
      await saveAdminUid();
    }
  }

  saveAdminUid() async {
    SharedPreferences pref = await sharedPreferences;
    String uid = "";
    if (admin.uid != null) {
      uid = admin.uid!;
    }
    pref.setString('user_id', uid);
  }

  // log out admin
  logoutAdmin() async {
    _isLoggedin.value = false;
    SharedPreferences pref = await sharedPreferences;
    String uid = "";
    pref.setString('user_id', uid);
  }
}
