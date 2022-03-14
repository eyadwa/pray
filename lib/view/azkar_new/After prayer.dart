import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Tasbeh.dart';

class After_pray extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var titletext = TextStyle(color: Colors.white, fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "After Pray",
          style: titletext,
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.greenAccent,
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                height: 150,
                width: 350,
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border.all(width: 2, color: Colors.greenAccent),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Icon(
                          Icons.motion_photos_on_sharp,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text("Evening")
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          children: const [
                            Text(
                              "أَسْـتَغْفِرُ الله، أَسْـتَغْفِرُ الله، أَسْـتَغْفِرُ الله",
                              textAlign: TextAlign.end,
                            ),
                            SizedBox(height: 4),
                            Text(
                              "اللّهُـمَّ أَنْـتَ السَّلامُ ، وَمِـنْكَ السَّلام ، تَبارَكْتَ يا ذا الجَـلالِ وَالإِكْـرام",
                              textAlign: TextAlign.center,
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 200,
                width: 350,
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border.all(width: 2, color: Colors.greenAccent),
                ),
                child: Column(
                  children: [
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Icon(
                          Icons.motion_photos_on_sharp,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text("Evening")
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: const [
                            Text(
                              "لا إلهَ إلاّ اللّهُ وحدَهُ لا شريكَ لهُ، لهُ المُـلْكُ ولهُ الحَمْد",
                              textAlign: TextAlign.end,
                            ),
                            Text(
                              "وهو على كل شيء قدير",
                              textAlign: TextAlign.end,
                            ),
                            SizedBox(height: 10),
                            Text(
                              "اللهـم لا مانع لما أعطـيت",
                              textAlign: TextAlign.end,
                            ),
                            Text(
                              "ولا معطـي لما منـعت، ولا ينفـع ذا الجـد منـك الجـد ",
                              textAlign: TextAlign.end,
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 200,
                width: 350,
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border.all(width: 2, color: Colors.greenAccent),
                ),
                child: Column(
                  children: [
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Icon(
                          Icons.motion_photos_on_sharp,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text("Evening")
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "سـبحان الله، والحمـد لله ، والله أكـبر. ",
                              textAlign: TextAlign.end,
                            ),
                            const SizedBox(height: 10),
                            FloatingActionButton(
                              child: Icon(Icons.arrow_back),
                              backgroundColor: Colors.greenAccent,
                              onPressed: () {
                                Get.to(
                                      () =>  Tasbeh(),
                                );
                              },
                            ),
                            const SizedBox(height: 10),
                            const Text("33مرة ")
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 200,
                width: 350,
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border.all(width: 2, color: Colors.greenAccent),
                ),
                child: Column(
                  children: [
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Icon(
                          Icons.motion_photos_on_sharp,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text("Evening")
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: const [
                            Text(
                              "بسم الله الرحمن الرحيم",
                              textAlign: TextAlign.end,
                            ),
                            SizedBox(height: 10),
                            Text(
                              "قل هو ٱلله أحد، ٱلله ٱلصمد، لم يلد ولم يولد،ۢ",
                              textAlign: TextAlign.end,
                            ),
                            Text(
                              "ولم يكن لهۥ كفوا أحدۢ",
                              textAlign: TextAlign.end,
                            ),
                            SizedBox(height: 5),
                            Text(
                              "3 مرات",
                              textAlign: TextAlign.end,
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 200,
                width: 350,
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border.all(width: 2, color: Colors.greenAccent),
                ),
                child: Column(
                  children: [
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Icon(
                          Icons.motion_photos_on_sharp,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text("Evening")
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: const [
                            Text(
                              "بسم الله الرحمن الرحيم",
                              textAlign: TextAlign.end,
                            ),
                            SizedBox(height: 10),
                            Text(
                              "قل أعوذ برب ٱلفلق، من شر ما خلق،ۢ",
                              textAlign: TextAlign.end,
                            ),
                            Text(
                              "ومن شر غاسق إذا وقب، ومن شر ٱلنفٰثٰت فى ٱلعقد،ۢ",
                              textAlign: TextAlign.end,
                            ),
                            Text(
                              "ومن شر حاسد إذا حسد.ۢ",
                              textAlign: TextAlign.end,
                            ),
                            SizedBox(height: 2),
                            Text(
                              "3 مرات",
                              textAlign: TextAlign.end,
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 200,
                width: 350,
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border.all(width: 2, color: Colors.greenAccent),
                ),
                child: Column(
                  children: [
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Icon(
                          Icons.motion_photos_on_sharp,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text("Evening")
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: const [
                            Text(
                              "بسم الله الرحمن الرحيم",
                              textAlign: TextAlign.end,
                            ),
                            SizedBox(height: 10),
                            Text(
                              "قل أعوذ برب ٱلناس، ملك ٱلناس، إلٰه ٱلناسۢ",
                              textAlign: TextAlign.end,
                            ),
                            Text(
                              "من شر ٱلوسواس ٱلخناس، ٱلذى يوسوس فى صدور ٱلناس، ۢ",
                              textAlign: TextAlign.end,
                            ),
                            Text(
                              " من ٱلجنة وٱلناس.ۢ",
                              textAlign: TextAlign.end,
                            ),
                            SizedBox(height: 2),
                            Text(
                              "3 مرات",
                              textAlign: TextAlign.end,
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 250,
                width: 350,
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border.all(width: 2, color: Colors.greenAccent),
                ),
                child: Column(
                  children: [
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Icon(
                          Icons.motion_photos_on_sharp,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text("Evening")
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: const [
                            Text(
                              "أعوذ بالله من الشيطان الرجيم",
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 10),
                            Text(
                              "الله لا إلـه إلا هو الحي القيوم لا تأخذه سنة ولا نوم ۢ",
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              " له ما في السماوات وما في الأرض ۢ",
                              textAlign: TextAlign.end,
                            ),
                            Text(
                              "من ذا الذي يشفع عنده إلا بإذنه يعلمۢ",
                              textAlign: TextAlign.end,
                            ),
                            Text(
                              "ما بين أيديهم وما خلفهم ولا يحيطون بشيء من علمه ۢ",
                              textAlign: TextAlign.end,
                            ),
                            Text(
                              "إلا بما شاء وسع كرسيه السماوات والأرضۢ",
                              textAlign: TextAlign.end,
                            ),
                            Text(
                              "ولا يؤوده حفظهما وهو العلي العظيم",
                              textAlign: TextAlign.end,
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
