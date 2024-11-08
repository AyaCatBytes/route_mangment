import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:route_mangment_pro/view/page_one.dart';
import 'package:route_mangment_pro/view/page_three.dart';
import 'package:route_mangment_pro/view/page_two.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: const Text('home'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              button('page one ', () {
                //Get.to(PageOne());
                Get.toNamed("/pageone");
              }),
              button('page two off name', () {
                Get.to(PageTwo());
                // Get.offNamed("/pagetwo");
              }),
              button('page three', () {
                Get.to(PageThree());
              }),
              button('back', () {
                Get.back();
              }),
            ],
          ),
        ),
      ),
    );
  }

  Widget button(String buttonName, VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(buttonName),
    );
  }
}
