// ignore_for_file: missing_return

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/control/api-adv.dart';

import '../model/model_Adv.dart';

class Adv_class extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Adv_class> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final Container_direction =BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              offset: const Offset(5, 3),
              blurRadius: 10,
              color: Colors.black.withOpacity(0.3))
        ]);

    return Scaffold(
      body: Container(
        height: height,
        // decoration: const BoxDecoration(
        //   image: DecorationImage(
        //       image: AssetImage('assets/image/family_image.jpg'),
        //       fit: BoxFit.cover),
        // ),
        child: FutureBuilder(
            future: adv_class().adv_api(),
            builder: (context, AsyncSnapshot<dynamic> snapshot) {
              if (snapshot.hasData) {
                List<dynamic> _responseList = snapshot.data['data']['adv'];
                List<AdvElement> _listOfadv = _responseList
                    .map((e) => AdvElement.fromJson(e))
                    .where((element) =>
                        element.text != null &&
                        element.title != null &&
                        element.image != null)
                    .toList();

                return ListView.separated(
                  padding: EdgeInsets.symmetric(vertical: 100),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  primary: false,
                  itemCount: _listOfadv.length,
                  separatorBuilder: (context, index) {
                    return Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      color: Colors.green,
                    );
                  },
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        //SizedBox(height: 52),
                        Container(
                          height: height * 0.4,
                          width: width * 0.9,
                          decoration:Container_direction,
                          child: Column(
                            children: [
                              Container(padding: EdgeInsets.symmetric(vertical: 10),
                                child: SingleChildScrollView(
                                  child: ClipRRect(
                                      borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10)),
                                      child: Image.network(
                                        _listOfadv[index].image,
                                        fit: BoxFit.cover,
                                        width: double.infinity,
                                      )),
                                ),
                                height: height * 0.25,
                              ),

                              Container(
                                margin:
                                EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [const  SizedBox(
                                        height: 10
                                      ),
                                        Text(
                                          _listOfadv[index].title,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: height * .01,
                                        ),
                                        Text(_listOfadv[index].text),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
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
