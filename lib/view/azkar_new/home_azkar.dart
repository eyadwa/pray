import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../preyer_view_test.dart';
import 'After prayer.dart';
import 'Tasbeh.dart';


class Home extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var titles = TextStyle(color: Colors.black54, fontSize: 5);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        centerTitle: true,
        title: Text("Azkar"),
      ),
      body: Container(
        margin: EdgeInsets.all(90),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(10.0),
                  padding: EdgeInsets.all(1.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    border: Border.all(width: 1, color: Colors.greenAccent),
                  ),
                  child: Column(
                    children: [
                      Container(
                          height: 50,
                          width: 50,
                          margin: EdgeInsets.all(15.0),
                          // padding: EdgeInsets.all(100.0),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black12,
                          ),
                          child: IconButton(
                            onPressed: () {
                              Get.to(After_pray());
                            },
                            icon: Icon(Icons.star),
                            color: Colors.red,
                          )),
                      const   Text(
                        "Afer pray",
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10.0),
                  padding: EdgeInsets.all(1.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    border: Border.all(width: 1, color: Colors.greenAccent),
                  ),
                  child: Column(
                    children: [
                      Container(
                          height: 50,
                          width: 50,
                          margin: EdgeInsets.all(15.0),
                          // padding: EdgeInsets.all(100.0),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black12,
                          ),
                          child: IconButton(
                            onPressed: () {
                              Get.to(Get.to(() => Tasbeh()));
                            },
                            icon: Icon(Icons.calculate_outlined),
                            color: Colors.red,
                          )),
                      const   Text(
                        "Tasabeh",
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(10.0),
                  padding: EdgeInsets.all(1.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      border: Border.all(width: 1, color: Colors.greenAccent)),
                  child: Container(
                      height: 50,
                      width: 50,
                      margin: EdgeInsets.all(15.0),
                      // padding: EdgeInsets.all(100.0),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black12,
                      ),
                      child: IconButton(
                        onPressed: () {
                          Get.to(() => PrayTimesView());
                        },
                        icon: Icon(Icons.access_time),
                        color: Colors.red,
                      )),
                ),
                Container(
                  margin: EdgeInsets.all(10.0),
                  padding: EdgeInsets.all(1.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      border: Border.all(width: 1, color: Colors.greenAccent)),
                  child: Container(
                      height: 50,
                      width: 50,
                      margin: EdgeInsets.all(15.0),
                      // padding: EdgeInsets.all(100.0),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black12,
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.my_library_add),
                        color: Colors.red,
                      )),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(10.0),
                  padding: EdgeInsets.all(1.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      border: Border.all(width: 1, color: Colors.greenAccent)),
                  child: Container(
                      height: 50,
                      width: 50,
                      margin: EdgeInsets.all(15.0),
                      // padding: EdgeInsets.all(100.0),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black12,
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.my_library_add),
                        color: Colors.red,
                      )),
                ),
                Container(
                  margin: EdgeInsets.all(10.0),
                  padding: EdgeInsets.all(1.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      border: Border.all(width: 1, color: Colors.greenAccent)),
                  child: Container(
                      height: 50,
                      width: 50,
                      margin: EdgeInsets.all(15.0),
                      // padding: EdgeInsets.all(100.0),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black12,
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.my_library_add),
                        color: Colors.red,
                      )),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(10.0),
                  padding: EdgeInsets.all(1.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      border: Border.all(width: 1, color: Colors.greenAccent)),
                  child: Container(
                      height: 50,
                      width: 50,
                      margin: EdgeInsets.all(15.0),
                      // padding: EdgeInsets.all(100.0),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black12,
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.my_library_add),
                        color: Colors.red,
                      )),
                ),
                Container(
                  margin: EdgeInsets.all(10.0),
                  padding: EdgeInsets.all(1.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      border: Border.all(width: 1, color: Colors.greenAccent)),
                  child: Container(
                      height: 50,
                      width: 50,
                      margin: EdgeInsets.all(15.0),
                      // padding: EdgeInsets.all(100.0),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black12,
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.my_library_add),
                        color: Colors.red,
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
