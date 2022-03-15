import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../prey_time.dart';
import '../preyer_view_test.dart';
import 'After prayer.dart';
import 'Tasbeh.dart';

class Hom_eAzkar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var titles = TextStyle(color: Colors.black54, fontSize: 5);
    final _BoxDecoration_out_side = BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        border: Border.all(width: 1, color: Colors.greenAccent));
    final _BoxDecoration_in_side = BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.black12,
    );
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
                  decoration: _BoxDecoration_out_side,
                  child: Column(
                    children: [
                      Container(
                          height: 50,
                          width: 50,
                          margin: EdgeInsets.all(15.0),
                          // padding: EdgeInsets.all(100.0),
                          decoration: _BoxDecoration_in_side,
                          child: IconButton(
                            onPressed: () {
                              Get.to(After_pray());
                            },
                            icon: Icon(Icons.star),
                            color: Colors.red,
                          )),
                      const Text(
                        "Afer pray",
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10.0),
                  padding: EdgeInsets.all(1.0),
                  decoration: _BoxDecoration_out_side,
                  child: Column(
                    children: [
                      Container(
                          height: 50,
                          width: 50,
                          margin: EdgeInsets.all(15.0),
                          // padding: EdgeInsets.all(100.0),
                          decoration: _BoxDecoration_in_side,
                          child: IconButton(
                            onPressed: () {
                              Get.to(Get.to(() => Tasbeh()));
                            },
                            icon: Icon(Icons.calculate_outlined),
                            color: Colors.red,
                          )),
                      const Text(
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
                  decoration: _BoxDecoration_out_side,
                  child: Container(
                      height: 50,
                      width: 50,
                      margin: EdgeInsets.all(15.0),
                      // padding: EdgeInsets.all(100.0),
                      decoration: _BoxDecoration_in_side,
                      child: IconButton(
                        onPressed: () {
                          Get.to(() => prey_class());
                        },
                        icon: Icon(Icons.access_time),
                        color: Colors.red,
                      )),
                ),
                Container(
                  margin: EdgeInsets.all(10.0),
                  padding: EdgeInsets.all(1.0),
                  decoration: _BoxDecoration_out_side,
                  child: Container(
                    height: 50,
                    width: 50,
                    margin: EdgeInsets.all(15.0),
                    // padding: EdgeInsets.all(100.0),
                    decoration: _BoxDecoration_in_side,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.my_library_add),
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(10.0),
                  padding: EdgeInsets.all(1.0),
                  decoration: _BoxDecoration_out_side,
                  child: Container(
                    height: 50,
                    width: 50,
                    margin: EdgeInsets.all(15.0),
                    // padding: EdgeInsets.all(100.0),
                    decoration: _BoxDecoration_in_side,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.my_library_add),
                      color: Colors.red,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10.0),
                  padding: EdgeInsets.all(1.0),
                  decoration: _BoxDecoration_out_side,
                  child: Container(
                    height: 50,
                    width: 50,
                    margin: EdgeInsets.all(15.0),
                    decoration: _BoxDecoration_in_side,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.my_library_add),
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(10.0),
                  padding: EdgeInsets.all(1.0),
                  decoration: _BoxDecoration_out_side,
                  child: Container(
                    height: 50,
                    width: 50,
                    margin: EdgeInsets.all(15.0),
                    decoration: _BoxDecoration_in_side,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.my_library_add),
                      color: Colors.red,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10.0),
                  padding: EdgeInsets.all(1.0),
                  decoration: _BoxDecoration_out_side,
                  child: Container(
                      height: 50,
                      width: 50,
                      margin: EdgeInsets.all(15.0),
                      // padding: EdgeInsets.all(100.0),
                      decoration: _BoxDecoration_in_side,
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
