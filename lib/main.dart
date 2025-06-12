import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sign_in_simlator/screens/home_page.dart';
void main() {
  runApp(MyApp2());
}
class MyApp2 extends StatelessWidget {
  const MyApp2({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Sign In Simulator',
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => Login()),
        GetPage(name: '/home', page: () => HomePage()),
      ],
    );
  }
}
