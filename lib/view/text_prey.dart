

// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'package:flutter_app/model/model_prey.dart';
import 'package:intl/intl.dart';

class prey_class extends StatefulWidget {
  const prey_class({Key key}) : super(key: key);

  @override
  _prey_time createState() => _prey_time();
}

class _prey_time extends State<prey_class> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getPTData();
  }

  Future getPTData() async {
    Data list;
    var request = http.Request(
        'GET',
        Uri.parse(
            'https://api.aladhan.com/v1/timingsByCity?city=gaziantep&country=turkey%20Arab&method=4'));

    http.StreamedResponse response = await request.send();
    final jsonResponse = json.decode(await response.stream.bytesToString());

    list = Data.fromJson(jsonResponse);
    return list;
  }

  final _time = DateTime.now();
  final Box_green = BoxDecoration(
    color: Colors.green.withOpacity(0.5),
    borderRadius: BorderRadius.circular(15),
    boxShadow: [
      BoxShadow(
          offset: const Offset(5, 3),
          blurRadius: 10,
          color: Colors.black.withOpacity(0.3))
    ],
  );
  final Box_white =BoxDecoration(
    color: Colors.white.withOpacity(0.5),
    borderRadius: BorderRadius.circular(10),
    boxShadow: [
      BoxShadow(
          offset: const Offset(5, 3),
          blurRadius: 10,
          color:
          Colors.black.withOpacity(0.2))
    ],);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/image/prey_image.jpg'),
                fit: BoxFit.cover),
          ),
          child: Center(
            child: FutureBuilder(
              future: getPTData(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.data == null)
                  return   const Center(child: CircularProgressIndicator());
                else{
                  var howManyMinutesToAdd = 01;
                  var fadjr = DateTime.parse(
                      "0000-00-00 ${snapshot.data.data.timings.fajr}");
                  var fadjrEdit = fadjr.add(Duration(minutes: howManyMinutesToAdd));
                  return Center(
                    child: Column(
                      children: [
                        const SizedBox(height: 100),
                        RichText(
                          text: TextSpan(
                            style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                              TextSpan(
                                text: '${_time.year}/',
                                style: const TextStyle(
                                    fontSize: 35, color: Colors.black87),
                              ),
                              TextSpan(
                                  text: '${_time.month}/',
                                  style: const TextStyle(
                                      fontSize: 35, color: Colors.black87)),
                              TextSpan(
                                  text: '${_time.day}',
                                  style: const TextStyle(
                                      fontSize: 35, color: Colors.black87)),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        RichText(
                          text: TextSpan(
                            style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                              TextSpan(
                                  text: '${_time.hour}:',
                                  style: const TextStyle(
                                      fontSize: 50, color: Colors.black54)),
                              TextSpan(
                                  text: '${_time.minute}',
                                  style: const TextStyle(
                                      fontSize: 50, color: Colors.black54)),
                            ],
                          ),
                        ),
                        const SizedBox(height: 50),
                        Container(
                          height: height * 0.5,
                          margin: const EdgeInsets.symmetric(horizontal: 40),
                          decoration: Box_green,
                          child: Column(
                            children: [
                              const SizedBox(height: 25),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    height: height * 0.05,
                                    width: width * 0.7,
                                    decoration:Box_white,
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          snapshot.data.data.timings.sunrise,
                                          style: const TextStyle(
                                              fontSize: 25,
                                              color: Colors.green),
                                        ),                                      //Edit/////////////////////////
                                        const Text('شروق الشمس',
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.green,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    height: height * 0.05,
                                    width: width * 0.7,
                                    decoration: Box_white,
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          '${DateFormat('kk:mm').format(fadjrEdit)}',
                                          style: const TextStyle(
                                              fontSize: 25,
                                              color: Colors.black54),
                                        ),
                                        const Text('صلاة الفجر',
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black54,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    height: height * 0.05,
                                    width: width * 0.7,
                                    decoration: Box_white,
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          snapshot.data.data.timings.dhuhr,
                                          style: const TextStyle(
                                              fontSize: 25,
                                              color: Colors.black54),
                                        ),
                                        const Text('صلاة الضهر',
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black54,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    height: height * 0.05,
                                    width: width * 0.7,
                                    decoration: Box_white,
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          snapshot.data.data.timings.asr,
                                          style: const TextStyle(
                                              fontSize: 25,
                                              color: Colors.black54),
                                        ),
                                        const Text('صلاة العصر ',
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black54,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    height: height * 0.05,
                                    width: width * 0.7,
                                    decoration:Box_white,
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          snapshot.data.data.timings.maghrib,
                                          style: const TextStyle(
                                              fontSize: 25,
                                              color: Colors.black54),
                                        ),
                                        const Text('صلاة المغرب',
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black54,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    height: height * 0.05,
                                    width: width * 0.7,
                                    decoration:Box_white,
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          snapshot.data.data.timings.isha,
                                          style: const TextStyle(
                                              fontSize: 25,
                                              color: Colors.black54),
                                        ),
                                        const Text('صلاة العشاء',
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black54,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );}
              },
            ),
          ),
        ),
      ),
    );
  }
}

//       Text(
//         snapshot.data.data.timings.fajr,
//         style: const TextStyle(fontSize: 25),
//       ),
//       Text(snapshot.data.data.timings.dhuhr,
//           style: const TextStyle(fontSize: 25)),
//       Text(snapshot.data.data.timings.asr,
//           style: const TextStyle(fontSize: 25)),
//       Text(snapshot.data.data.timings.maghrib,
//           style: const TextStyle(fontSize: 25)),
//       Text(snapshot.data.data.timings.isha,
//           style: const TextStyle(fontSize: 25)),
