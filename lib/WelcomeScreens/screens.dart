import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pati/WelcomeScreens/sliderModel.dart';
import 'package:pati/WelcomeScreens/welcome.dart';

import '../HexColor.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<SliderModel> mySLides = new List<SliderModel>();
  int slideIndex = 0;
  PageController controller;

  Widget _buildPageIndicator(bool isCurrentPage) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.0),
      height: isCurrentPage ? 10.0 : 6.0,
      width: isCurrentPage ? 10.0 : 6.0,
      decoration: BoxDecoration(
        color: isCurrentPage ? text2 : text1,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mySLides = getSlides();
    controller = new PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height - 100,
        child: PageView(
          controller: controller,
          onPageChanged: (index) {
            setState(() {
              slideIndex = index;
            });
          },
          children: <Widget>[
            SlideTile(
              imagePath: mySLides[0].getImageAssetPath(),
              title: mySLides[0].getTitle(),
              desc: mySLides[0].getDesc(),
            ),
            SlideTile(
              imagePath: mySLides[1].getImageAssetPath(),
              title: mySLides[1].getTitle(),
              desc: mySLides[1].getDesc(),
            ),
            SlideTile(
              imagePath: mySLides[2].getImageAssetPath(),
              title: mySLides[2].getTitle(),
              desc: mySLides[2].getDesc(),
              height: 360,
            )
          ],
        ),
      ),
      bottomSheet: slideIndex != 2
          ? Container(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {
                      controller.animateToPage(2,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.linear);
                    },
                    splashColor: Colors.blue[50],
                    child: Text(
                      "GEÇ",
                      style: GoogleFonts.gloriaHallelujah(
                          fontWeight: FontWeight.bold, color: text2),
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        for (int i = 0; i < 3; i++)
                          i == slideIndex
                              ? _buildPageIndicator(true)
                              : _buildPageIndicator(false),
                      ],
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      print("this is slideIndex: $slideIndex");
                      controller.animateToPage(slideIndex + 1,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.linear);
                    },
                    splashColor: Colors.blue[50],
                    child: Text(
                      "İLERİ",
                      style: GoogleFonts.gloriaHallelujah(
                          fontWeight: FontWeight.bold, color: text1),
                    ),
                  ),
                ],
              ),
            )
          : InkWell(
              onTap: () {
                print("HADİ BAŞLİYALIM");
              },
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Welcome()),
                  );
                },
                child: Container(
                  height: Platform.isIOS ? 70 : 60,
                  color: text1,
                  alignment: Alignment.center,
                  child: Text(
                    "Başlıyalım",
                    style: GoogleFonts.gloriaHallelujah(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 25),
                  ),
                ),
              ),
            ),
    );
  }
}

class SlideTile extends StatelessWidget {
  String imagePath, title, desc;
  double height;

  SlideTile({this.imagePath, this.title, this.desc,this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(imagePath,height: height,),
          Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.gloriaHallelujah(color: text1, fontSize: 30),
          ),
          Text(
            desc,
            textAlign: TextAlign.center,
            style: GoogleFonts.gloriaHallelujah(
                color: text2, fontWeight: FontWeight.w900),
          )
        ],
      ),
    );
  }
}
