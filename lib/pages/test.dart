import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  List<String> imageList=[
    'assets/images/ic_hotel1.jpg',
    'assets/images/ic_hotel2.jpg',
    'assets/images/ic_hotel3.jpg',
    'assets/images/ic_hotel4.jpg',
    'assets/images/ic_hotel5.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          child: Image(
            image: AssetImage(imageList[1]),
          ),
        )
      ),
    );
  }

  @override
  // void initState() {
  //   r(['1','2','3','4','5','6']);
  //   super.initState();
  // }

  @override
  // void dispose() {
  //   super.dispose();
  // }

  String r(List<String> a) {
    List<String>n=[];
    int t=0;
    String f='';
    for (var b = 0;a.length>b;b++) {
      n.add(a[b]);
    }
    Timer.periodic(Duration(seconds: 3), (timer) {
      print(n[Random().nextInt(n.length-1)]);
       f=n[Random().nextInt(n.length-1)];
    });
    return f;
  }




}
