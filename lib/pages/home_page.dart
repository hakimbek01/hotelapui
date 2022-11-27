import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> imageList=[
    'assets/images/ic_hotel1.jpg',
    'assets/images/ic_hotel2.jpg',
    'assets/images/ic_hotel3.jpg',
    'assets/images/ic_hotel4.jpg',
    'assets/images/ic_hotel5.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 300,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/ic_header.jpg'),
                    fit: BoxFit.cover
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      colors: [
                        Colors.black.withOpacity(.9),
                        Colors.black.withOpacity(.8),
                        Colors.black.withOpacity(.6),
                        Colors.black.withOpacity(.5),
                        Colors.black.withOpacity(.4)
                      ]
                    )
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 40),
                        child: const Text(
                          "Best Hotels Ever",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      const SizedBox(height: 30,),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 40),
                        padding: const EdgeInsets.symmetric(vertical: 3),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search,color: Colors.grey,),
                            hintText: 'Search for hotels...',
                            hintStyle: TextStyle(color: Colors.grey)
                          ),
                        ),
                      ),
                      const SizedBox(height: 30,)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Busines Hotel",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey.shade800,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          _item('Hotel 1',imageList[0]),
                          _item('Hotel 2',imageList[1]),
                          _item('Hotel 3',imageList[2]),
                          _item('Hotel 4',imageList[3]),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text(
                      "Airport Hotels",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey.shade800,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          _item('Hotel 1',imageList[4]),
                          _item('Hotel 2',imageList[2]),
                          _item('Hotel 3',imageList[1]),
                          _item('Hotel 4',imageList[3]),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text(
                      "Resort Hotels",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey.shade800,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          _item('Hotel 1',imageList[2]),
                          _item('Hotel 2',imageList[0]),
                          _item('Hotel 3',imageList[3]),
                          _item('Hotel 4',imageList[1]),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  String imageRandom(List<String> a) {
    List<String>n=[];
    int t=0;
    String f='';
    for (var b = 0;a.length>b;b++) {
      n.add(a[b]);
    }
    Timer.periodic(Duration(seconds: 5), (timer) {
      print(n[Random().nextInt(n.length-1)]);
      f=n[Random().nextInt(n.length-1)];
    });
    return f;
  }


  Widget _item(title,image) {
    return AspectRatio(
      aspectRatio: 2/2,
      child: Container(
        margin: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover
          )
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.7),
                Colors.black.withOpacity(.4),
                Colors.black.withOpacity(.2),
              ]
            )
          ),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            child: Container(
              margin: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  LikeButton(
                   padding: EdgeInsets.only(top: 150),
                 )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
