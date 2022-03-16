import 'package:flutter/material.dart';
import 'package:flutter_app/control/api-azkar.dart';

class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color SeemColor = Colors.greenAccent;

    return Scaffold(
      appBar: AppBar(backgroundColor: SeemColor,
        title: Text("الاعدادات"),
        centerTitle: true,
      ),
      body: Container(),
    );
  }
}
