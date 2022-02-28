import 'package:flutter/gestures.dart';
import 'package:url_launcher/link.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../control/api_youtube.dart';

class youtube_class extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<youtube_class> {
  @override
  Uri uri;

  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    var defultText = TextStyle(color: Colors.black87, fontSize: 20);
    var linktext = TextStyle(color: Colors.blue, fontSize: 10, );
    var titletext = TextStyle(color: Colors.black54, fontSize: 30);
    var containerbox=
    BoxDecoration(
    color: Colors.white.withOpacity(0.5),
    borderRadius: BorderRadius.circular(10),
    boxShadow: [
    BoxShadow(
    offset: const Offset(5, 3),
    blurRadius: 10,
    color:
    Colors.black.withOpacity(0.2))
    ]);

    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/image/family_image.jpg'),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20),


              FutureBuilder(
                future: api_youtube().fetchAlbum(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {

                    return Container(
                      child: Column(
                        children: [
                          Container(
                              height: height * 0.15,
                              width: width * 0.8,
                              decoration: containerbox,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  snapshot.data.data.link[0].title,
                                  style: titletext,textAlign: TextAlign.center,
                                ),

                                RichText(textAlign: TextAlign.center,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                          style: defultText,
                                          text: "Click here",),
                                      TextSpan(
                                        style: linktext,
                                        text:  snapshot
                                            .data.data.link[0].title,
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () async {
                                            var urx = await snapshot
                                                .data.data.link[0].link;
                                            if (await canLaunch(urx)) {
                                              await launch(urx);
                                            } else
                                              throw "Cannort";
                                          },
                                      )
                                    ],
                                  ),

                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 15),
                          Container(
                            height: height * 0.15,
                            width: width * 0.8,
                            decoration: containerbox,
                            child: Column( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  snapshot.data.data.link[1].title,
                                  style: titletext
                                ),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                          style: defultText,
                                          text: "Click here"),
                                      TextSpan(
                                        style: linktext,
                                        text:  snapshot
                                            .data.data.link[1].title,
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () async {
                                            var urx = await snapshot
                                                .data.data.link[1].link;
                                            if (await canLaunch(urx)) {
                                              await launch(urx);
                                            } else
                                              throw "Cannort";
                                          },
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 15 ),
                          Container(
                            height: height * 0.15,
                            width: width * 0.8,
                            decoration: containerbox,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  snapshot.data.data.link[2].title,
                                  style:titletext
                                ),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                          style: defultText,
                                          text: "Click here"),
                                      TextSpan(
                                        style: linktext,
                                        text: snapshot
                                            .data.data.link[2].title,
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () async {
                                            var urx = await snapshot
                                                .data.data.link[2].link;
                                            if (await canLaunch(urx)) {
                                              await launch(urx);
                                            } else
                                              throw "Cannort";
                                          },
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 15 ),
                          Container(
                            height: height * 0.15,
                            width: width * 0.8,
                            decoration: containerbox,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  snapshot.data.data.link[3].title,
                                  style:titletext
                                ),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                          style: defultText,
                                          text: "Click here"),
                                      TextSpan(
                                        style: linktext,
                                        text: snapshot
                                            .data.data.link[3].title,
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () async {
                                            var urx = await snapshot
                                                .data.data.link[2].link;
                                            if (await canLaunch(urx)) {
                                              await launch(urx);
                                            } else
                                              throw "Cannort";
                                          },
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 15 ),

                          Container(
                            height: height * 0.15,
                            width: width * 0.8,
                            decoration: containerbox,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  snapshot.data.data.link[2].title,
                                  style:titletext
                                ),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                          style: defultText,
                                          text: "Click here"),
                                      TextSpan(
                                        style: linktext,
                                        text: snapshot
                                            .data.data.link[4].title,
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () async {
                                            var urx = await snapshot
                                                .data.data.link[4].link;
                                            if (await canLaunch(urx)) {
                                              await launch(urx);
                                            } else
                                              throw "Cannort";
                                          },
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
