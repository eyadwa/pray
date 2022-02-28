
import 'package:flutter/material.dart';
import 'package:flutter_app/Home.dart';
import 'package:get/get.dart';

import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:Directionality (textDirection: TextDirection.rtl,child:HomePage() )

    );
  }
}
