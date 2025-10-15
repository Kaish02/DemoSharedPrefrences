import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../profile_screen.dart';

class ProviderServiceAuth with ChangeNotifier {
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  registerUserAuth(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      var sharePreferences = await SharedPreferences.getInstance();
      sharePreferences.setString("name", nameController.text.toString());
      sharePreferences.setString("email", emailController.text.toString());
      sharePreferences.setString("password", passController.text.toString());
      sharePreferences.setBool("isLogin", true);

      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Register Successfully")));
      Navigator.pop(context);
    }
  }

  loginUserAuth(BuildContext context) async {
    var sharePreferences = await SharedPreferences.getInstance();
    var email = sharePreferences.getString("email");
    var password = sharePreferences.getString("password");

    if (emailController.text.toString() != email) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Invalid Email")));
    } else if (passController.text.toString() != password) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Invalid Password")));
    } else if (emailController.text.toString() == email &&
        passController.text.toString() == password) {
      sharePreferences.setBool("isLogin", true);
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => ProfileScreen()),
      );
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Login Successfully")));
    }
  }

  logoutUserAuth(BuildContext context) async {
    var sharePreferences = await SharedPreferences.getInstance();
    sharePreferences.setBool("isLogin", false);
    // Navigator.pushReplacement(
    //   context,
    //   MaterialPageRoute(builder: (context) => LoginScreen()),
    // );
  }
}
