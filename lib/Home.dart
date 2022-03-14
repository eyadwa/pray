import 'package:flutter_app/view/Sunh.dart';
import 'package:flutter_app/view/adv.dart';
import 'package:flutter_app/view/youtube.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'view/about AS.dart';
import 'view/main-azkar.dart';
import 'view/prey_time.dart';

class HomePage extends StatelessWidget {
  @override


  Widget build(BuildContext context) {
    final Container_Button = BoxDecoration(
      color: Colors.greenAccent,
      borderRadius: BorderRadius.circular(30),
      boxShadow: const [
        BoxShadow(
            // offset: const Offset(5, 3),
            color: Colors.greenAccent,
            blurRadius: 10)
      ],
    );
    final _Edit_text_style = TextStyle(color: Colors.black, fontSize: 15);
    double _width= 150;
    double _highe=75;
    double _sizedbox_width= 10;
    double _sizedbox_hight= 20;

    return Scaffold(
      appBar: AppBar(
        title:const  Text("سبل الرشاد"),
        backgroundColor: Colors.greenAccent,
        centerTitle: true,
      ),
      body: Container(
        // decoration: const BoxDecoration(
        //   image: DecorationImage(
        //       image: AssetImage('assets/image/primary_image.jpg'),
        //       fit: BoxFit.cover),
        // ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: _highe,
                    width: _width,
                    decoration: Container_Button,
                    child: TextButton(
                      onPressed: () {
                        Get.to(() => Adv_class());
                      },
                      child: Text("مواعيد أنشطة",
                          style: _Edit_text_style),
                    ),
                  ),
                   SizedBox(width: _sizedbox_width),
                  Container(
                    height: _highe,
                    width: _width,
                    decoration: Container_Button,
                    child: TextButton(
                      onPressed: () {
                        Get.to(() => youtube_class());
                      },
                      child: Text("روابط ترفيهة",
                          style: _Edit_text_style),
                    ),
                  ),
                ],
              ),
               SizedBox(height:_sizedbox_hight),
              ///////////////////////
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: _highe,
                    width: _width,
                    decoration: Container_Button,
                    child: TextButton(
                      onPressed: () {
                        Get.to(prey_class());
                      },
                      child: Text("أوقات الصلاة  ", style: _Edit_text_style),
                    ),
                  ),
                   SizedBox(width: _sizedbox_width),
                  Container(
                    height: _highe,
                    width: _width,
                    decoration: Container_Button,
                    child: TextButton(
                      onPressed: () {
                        Get.to(() => Sunh_class());
                      },
                      child: Text(
                        "آداب وأخلاق المسلم",
                        style: _Edit_text_style,
                      ),
                    ),
                  ),
                ],
              ),
              /////////////////////////////////

               SizedBox(height:_sizedbox_hight),
              ///////////////////////
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: _highe,
                    width: _width,
                    decoration: Container_Button,
                    child: TextButton(
                      onPressed: () {
                        Get.to(() => Azkar_class());
                      },
                      child: Text(
                        "سنن مهجورة ",
                        style: _Edit_text_style,
                      ),
                    ),
                  ),
                   SizedBox(width:_sizedbox_width),
                  Container(
                    height: _highe,
                    width: _width,
                    decoration: Container_Button,
                    child: TextButton(
                      onPressed: () {
                        Get.to(() => about_as_class());
                      },
                      child: Text("من نحن  ", style: _Edit_text_style),
                    ),
                  ),
                ],
              ),


            ],
          ),
        ),
      ),
    );
  }
}
