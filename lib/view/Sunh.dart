// ignore_for_file: missing_return

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/control/api-azkar.dart';
import '../model/model-azkar.dart';

class Sunh_class extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Sunh_class> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final Container_diraction = BoxDecoration(
        color: Colors.white.withOpacity(0.5),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              offset: const Offset(5, 3),
              blurRadius: 10,
              color: Colors.black.withOpacity(0.2))
        ]);
    final Container_green = BoxDecoration(
        color: Colors.green.withOpacity(0.5),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
              offset: const Offset(5, 3),
              blurRadius: 10,
              color: Colors.black.withOpacity(0.3))
        ]);
    final style_text = const TextStyle(fontSize: 13, color: Colors.black,);
    return Scaffold(
      body: Container(
        height: height,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/image/primarrrry.png'),
              fit: BoxFit.cover),
        ),
        child: FutureBuilder(
            future: APIAzkar().getapi(),
            builder: (context, AsyncSnapshot<dynamic> snapshot) {
              if (snapshot.hasData) {
                List<dynamic> _responseList = snapshot.data['data']['all'];
                List<SunehModel> _listOfSuneh = _responseList
                    .map((e) => SunehModel.fromJson(e))
                    .where((element) => element.type == "2")
                    .toList();

                return ListView.separated(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  primary: false,
                  itemCount: _listOfSuneh.length,
                  separatorBuilder: (context, index) {
                    return Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        color: Colors.green,
                        height: 1);
                  },
                  itemBuilder: (context, index) {
                    return Center(
                      child: Container(
                        height: height * 0.4,
                        margin: EdgeInsets.symmetric(horizontal: 40),
                        decoration: Container_green,
                        child: Column(
                          children: [
                            SizedBox(height: 25),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.symmetric(vertical:10,horizontal: 25),
                                  height: height * 0.3,
                                  width: width * 0.7,
                                  decoration: Container_diraction,
                                  child: SingleChildScrollView(
                                    child: Column(
                                      // mainAxisAlignment:
                                      //     MainAxisAlignment.center,
                                      children: [
                                        Text(_listOfSuneh[index].text,
                                            style: style_text,textAlign: TextAlign.end )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              } else {
                return Center(child: CircularProgressIndicator());
              }
            }),
      ),
    );
  }
}
