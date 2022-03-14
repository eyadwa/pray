import 'package:flutter/material.dart';
import 'package:flutter_app/control/constroler/homecontroler.dart';
import 'package:get/get.dart';




class Tasbeh extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var titletext = TextStyle(color: Colors.black54, fontSize: 30);

    return Scaffold(appBar: AppBar(
      title: Text(
        "Tasbeeh",
        style: titletext,
        textAlign: TextAlign.center,
      ),
      backgroundColor: Colors.redAccent,
      centerTitle: true,
    ),
      backgroundColor: Colors.greenAccent,
      body: Container(
        child: Center(
          child: GetBuilder<HomeController>(
            init: HomeController(),
            builder: (controller) => Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 40),
                const Text("Today's Tasbeeh"),
                const SizedBox(height: 25),
                Container(
                  height: 350,
                  width: 300,
                  margin: EdgeInsets.all(10.0),
                  // padding: EdgeInsets.all(100.0),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black12,
                  ),
                  child: Container(
                    height: 200,
                    width: 250,
                    margin: EdgeInsets.all(10.0),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.redAccent,
                    ),
                    child: Center(
                      child: Text(
                        "${controller.counter}",
                        style:titletext,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                FloatingActionButton(
                  onPressed: () {
                    controller.increment();
                  },
                  child: Icon(Icons.add),
                  backgroundColor: Colors.redAccent,
                ),
                const SizedBox(height: 5),
                FloatingActionButton(
                  onPressed: () {
                    controller.restart();
                  },
                  child: Icon(Icons.restart_alt),
                  backgroundColor: Colors.redAccent,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
