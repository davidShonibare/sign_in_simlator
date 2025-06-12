import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sign_in_simlator/functions.dart';
import '../models/user_model.dart';
class AuthController extends GetxController {
  var isLoading = false.obs;
  var user = Rxn<UserModel>();

  Future<void> signIn(String email, String password) async {
    Completer completer = Completer<String>();
    isLoading.value = true;
    // Implement both sign-in success and error conditions using appropriate try-catch blocks
    try {
      //  The sign-in process should be simulated with a 3-second delay,
     
      await Future.delayed(Duration(seconds: 3)).then((v) {
        if (email == 'test@example.com' && password == '1234') {
          user.value = UserModel(email: email);
          Get.snackbar(
            '',
            'Successfully Login',
            colorText: Colors.green,
            duration: const Duration(seconds: 2),
          );
          completer.complete("Succesfully Signed In");
        } else if (email == '' || password == '') {
          completer.completeError("Enter your email and password");
        } else if (email != 'test@example.com') {
          completer.completeError('No account found');
          throw "No Profile found, contact the Admin";
        } else if (password != '1234') {
          completer.completeError('Wrong Password.');
          throw "Incorrect Password";
        } else {
          completer.completeError('Invalid Credential Supplied');
          throw "Invalid Credential Supplied";
        }
        return completer.future;
      //  successful completion of the sign-in process using Dart's Completer
      });
    } catch (e) {
      Get.snackbar(
        "Error ",
        toSentenceCase(e.toString()),
        colorText: Colors.red,
      );
      rethrow;
    } finally {
      isLoading.value = false;
    }
  }
}
