import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:route_mangment_pro/view/page_three.dart';
import 'package:route_mangment_pro/view/page_two.dart';
class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}


class _PageOneState extends State<PageOne> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title:const  Text('page one'),
      ),

      body:  Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start
            ,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              button('page two',() {
                Get.to(PageTwo());
              }
              ),
              button('page three',() {
                Get.to(PageThree());
              }
              ),

              button('back',() {
               // Get.back();
                Navigator.of(context).pop();
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
