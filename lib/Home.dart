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
  final Container_Button =BoxDecoration(
    color: Colors.green.withOpacity(0.5),
    borderRadius: BorderRadius.circular(30),
    boxShadow: [
      BoxShadow(
          offset: const Offset(5, 3),
          color: Colors.black.withOpacity(0.3),
          blurRadius: 10)
    ],
  );  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/image/primary_image.jpg'),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: 250,
                decoration: Container_Button,
                child: TextButton(
                  onPressed: () {
                    Get.to(() => Adv_class());
                  },
                  child: const Text(
                    "مواعيد أنشطة تربوية وتعليمية",
                    style: TextStyle(color: Colors.orangeAccent, fontSize: 15),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 50,
                width: 250,
                decoration: Container_Button,
                child: TextButton(
                  onPressed: () {
                    Get.to(() => youtube_class());

                  },
                  child: const Text(
                    "روابط ترفيهة وتعليمية لفئة الاطفال",
                    style: TextStyle(color: Colors.orangeAccent, fontSize: 15),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 50,
                width: 250,
                decoration: Container_Button,
                child: TextButton(
                  onPressed: () {
                    Get.to(prey_class());
                  },
                  child: const Text(
                    "أوقات الصلاة  ",
                    style: TextStyle(color: Colors.orangeAccent, fontSize: 15),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 50,
                width: 250,
                decoration:Container_Button,
                child: TextButton(
                  onPressed: () {
                    Get.to(() => Sunh_class());
                  },
                  child: const Text(
                    "آداب وأخلاق المسلم",
                    style: TextStyle(color: Colors.orangeAccent, fontSize: 15),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 50,
                width: 250,
                decoration: Container_Button,
                child: TextButton(
                  onPressed: () {
                    Get.to(() => Azkar_class());
                  },
                  child: const Text(
                    "سنن مهجورة ",
                    style: TextStyle(color: Colors.orangeAccent, fontSize: 15),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 50,
                width: 250,
                decoration: Container_Button,
                child: TextButton(
                  onPressed: () {
                    Get.to(() => about_as_class());
                  },
                  child: const Text(
                    "من نحن  ",
                    style: TextStyle(color: Colors.orangeAccent, fontSize: 15),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
