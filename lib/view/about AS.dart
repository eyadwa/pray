// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class about_as_class extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<about_as_class> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final Box_whitee =BoxDecoration(
      color: Colors.green.withOpacity(0.5),
      borderRadius: BorderRadius.circular(30),
      boxShadow: [
        BoxShadow(
            offset: const Offset(5, 3),
            color: Colors.black.withOpacity(0.3),
            blurRadius: 10)
      ],
    );
    double _height =50;
    double _width =150;
    Color _colors_green_accent=Colors.greenAccent;
    final _Edit_text_style_about = TextStyle(color: Colors.black, fontSize: 15);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Text("من نحن"),
      ),
      body:
      Container(
        // decoration: const BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage('assets/image/primary_image.jpg'),
        //     fit: BoxFit.cover,
        //   ),
        // ),
        padding:const  EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
       // constraints: BoxConstraints.expand(),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const SizedBox(height: 25),
            Container(
              height:_height,
              width:_width,
              decoration: Box_whitee,
              child: MaterialButton(
                onPressed: () {
                  BottmSeets1(context);
                },
                child:  Text("الهيكلية  التنظيمية",style: _Edit_text_style_about,),
                color: _colors_green_accent,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: _height,
              width:_width,
              decoration: Box_whitee,
              child: MaterialButton(
                onPressed: () {
                  BottmSeets2(context);
                },
                child:  Text("أهدافنا",style: _Edit_text_style_about,),
                color: _colors_green_accent,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: _height,
              width: _width,
              decoration: Box_whitee,
              child: MaterialButton(
                onPressed: () {
                  BottmSeets3(context);
                },
                child:  Text("من نحن ",style: _Edit_text_style_about,),
                color: _colors_green_accent,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: _height,
              width:_width,
              decoration:Box_whitee,
              child: MaterialButton(
                onPressed: () {
                  BottmSeets4(context);
                },
                child:  Text("رؤيتنا  " ,style: _Edit_text_style_about,),
                color:_colors_green_accent,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: _height,
              width: _width,
              decoration:Box_whitee,
              child: MaterialButton(
                onPressed: () {
                  BottmSeets5(context);
                },
                child:  Text("رسالتنا" ,style: _Edit_text_style_about,),
                color: _colors_green_accent,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height:_height,
              width:_width,
              decoration:Box_whitee,
              child: MaterialButton(

                onPressed: () {
                  BottmSeets6(context);
                },
                child:  Text("شعارنا" ,style: _Edit_text_style_about,),
                color: _colors_green_accent,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

void BottmSeets1(context) {
  showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
            decoration: const BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    topLeft: Radius.circular(25))),
            child: Column(
              children: [
                SizedBox(height: 15),
                const Text(
                  "الهيكلية التنظيمية",
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(height: 40),
                const Text(
                  "مجلس الأمناء",
                  style: TextStyle(fontSize: 15),
                ),
                const Text(
                  "مجلس الادارة ",
                  style: TextStyle(fontSize: 15),
                ),
                const Text(
                  " قسم العلاقات العامة ",
                  style: TextStyle(fontSize: 15),
                ),
                const Text(
                  "قسم الدعوة النسائية  ",
                  style: TextStyle(fontSize: 15),
                ),
                const Text(
                  "قسم إدارة المشاريع والأبحاث ",
                  style: TextStyle(fontSize: 15),
                ),
                const Text(
                  "قسم الإدارة المالية ",
                  style: TextStyle(fontSize: 15),
                ),
                const Text(
                  "قسم الاعلام",
                  style: TextStyle(fontSize: 15),
                ),


              ],
            ),
          ));
}

void BottmSeets2(context) {
  showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) => Container( padding: EdgeInsets.symmetric(horizontal: 15,vertical: 25),
            decoration: const BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    topLeft: Radius.circular(25))),
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [

                const Text(
                  "أهدافنا",
                  style: TextStyle(fontSize: 30),
                ),
                const SizedBox(height: 20
                ),
                const Text(
                  "تحقيق (ادع الى سبيل ربك بالحكمة والموعظة الحسنة)",textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 15),
                ),
                const SizedBox(height: 15),
                const Text(
                  "تمكين الدين في الفرد والمجتمع ",textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 15),
                ),
                const SizedBox(height: 15),
                const Text(
                  "تحقيق الوعي ونشر العلم المبني على الأسس الصحيحة ",
                  style: TextStyle(fontSize: 15),textAlign: TextAlign.right,
                ),
                const SizedBox(height: 15),
                const Text(
                  "تصحيح المفاهيم الخاطئة لدى بعض المسلمين الناتجة عن الجهل أو الإفراط أ,التفريط ",
                  style: TextStyle(fontSize: 15),textAlign: TextAlign.right,
                ),
                const SizedBox(height: 15),
                const Text(
                  "السعي إلى توحيد رؤى العمل الدعوي وجمع الجهود العوية على مستوى المنطقة ",
                  style: TextStyle(fontSize: 15),textAlign: TextAlign.right,
                ),
              ],
            ),
          ));
}

void BottmSeets3(context) {
  showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
            decoration: const BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    topLeft: Radius.circular(25))),
            child: Column(
              children: [
                const SizedBox(height: 15),
                const Text(
                  "من نحن ",
                  style: TextStyle(fontSize: 30),
                ),
                const SizedBox(height: 40),
                const Text(
                  "مركز مجتمعي إصلاحي يعنى بالجوانب الدعوية والإيمانية والفكرية ",
                  style: TextStyle(fontSize: 15),
                ),
                const SizedBox(height: 15),
                const Text(
                  "غير ربحي  ",
                  style: TextStyle(fontSize: 15),
                ),
                const SizedBox(height: 15),
                const Text(
                  "ذو نفع عام",
                  style: TextStyle(fontSize: 15),
                ),
                const SizedBox(height: 15),
                const Text(
                  "مارس نشاطاته في الداخل السوري",
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
          ));
}

void BottmSeets4(context) {
  showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(padding: EdgeInsets.symmetric(horizontal: 25)
            ,decoration: const BoxDecoration(

                color: Colors.orangeAccent,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    topLeft: Radius.circular(25))),
            child: Column(
              children: [
                const SizedBox(height: 15),
                const Text(
                  " رؤيتنا ",
                  style: TextStyle(fontSize: 30),
                ),
                const SizedBox(height: 40),
                const Text(
                  "الوصول إلى مجتمع يحمل القيم الإسلامية ظاهرا وباطنا وتتجلى في أفعال أفراد مكارم الأخلاق",
                  style: TextStyle(fontSize: 15),textAlign: TextAlign.end
                ),
              ],
            ),
          ));
}

void BottmSeets5(context) {
  showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
    padding: EdgeInsets.symmetric(vertical:10,horizontal: 25),
            decoration: const BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    topLeft: Radius.circular(25))),
            child: Column(
              children: [
                const SizedBox(height: 15),
                const Text(
                  "رسالتنا  ",
                  style: TextStyle(fontSize: 30),
                ),
                const SizedBox(height: 40),
                const Text(
                  "امتثالا لأمره تعالى :(ولتكن منكم أمة يدعون إلى بالخير ويأمرون بالمعروف وينهون عن المنكر, وأولئك هم المفلحون )وإيمانا منا بأهمية هذا الواجب العظيم الذي يعد ركيزة أساسية ومنطلقا هاما للنهوض بالأمة على مستوى الفرد والجماعة وسببا من أسباب النجاة من ذاب الدنيا والآخرة أسس هذا المركز ليكون منارة للعمل الدعوي المنظم الهادف راجين من الله تعالى التوفيق والسداد ",
                  style: TextStyle(fontSize: 15),textAlign: TextAlign.end
                ),
              ],
            ),
          ));
}

void BottmSeets6(context) {
  showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
            decoration: const BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    topLeft: Radius.circular(25))),
            child: Column(
              children: [
                const SizedBox(height: 15),
                const Text(
                  "شعارنا ",
                  style: TextStyle(fontSize: 30),
                ),
                const SizedBox(height: 40),
                const Text(
                  "دعوة وإصلاح تكاتف وعمل",
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
          ));
}
