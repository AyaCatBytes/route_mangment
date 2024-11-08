import 'package:flutter/material.dart';
import 'package:route_mangment_pro/view/home.dart';
import 'package:get/get.dart';
import 'package:route_mangment_pro/view/page_one.dart';
import 'package:route_mangment_pro/view/page_two.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: const Home(),

      getPages: [
        GetPage(name: '/pageone', page: () => PageOne()),
        GetPage(name: '/pagetwo', page: () => PageTwo()),

      ],



    );
  }
}
