import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/auth_controller.dart'; 

class HomePage extends StatelessWidget {
  final AuthController controller = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      appBar: AppBar(title: Text("My Profile"),centerTitle: true,),
      body: Center(
        child: Text("Welcome, ${controller.user.value?.email ?? ''}"),
      ),
    );
  }
}
