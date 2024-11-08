import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:route_mangment_pro/view/page_one.dart';
import 'package:route_mangment_pro/view/page_three.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title:const  Text('page tow'),
      ),

      body:  Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start
            ,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              button('page two ',() {
                Get.to(PageTwo());
              }
              ),
              button('page three off',() {
                Get.off(PageThree());
              }
              ),
              button('back',() {
                Get.back();
              }
              ),

            ],

          ),
        ),
      ),


    );
  }

  Widget button(String buttonName,VoidCallback onPressed){

    return ElevatedButton(
      onPressed: onPressed,
      child: Text(buttonName),
    );
  }

}
