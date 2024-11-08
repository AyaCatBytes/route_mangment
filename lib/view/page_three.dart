import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:route_mangment_pro/view/page_one.dart';
import 'package:route_mangment_pro/view/page_two.dart';

class PageThree extends StatefulWidget {
  const PageThree({super.key});

  @override
  State<PageThree> createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title:const  Text('page three'),
      ),

      body:  Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start
            ,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              button('page one off all',() {
                Get.offAll(PageOne());
              }
              ),
              button('page two off ',() {
                Get.off(PageTwo());
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
