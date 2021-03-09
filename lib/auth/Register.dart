import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pati/Anasayfa/anasayfa.dart';
import 'package:pati/WelcomeScreens/welcome.dart';
import 'package:pati/auth/Login.dart';

import '../HexColor.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: text2,
        body: Column(
          children: <Widget>[
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(left: 118.0),
              child: Row(
                children: <Widget>[
                  Text("Kayıt Ol",
                      style: GoogleFonts.gloriaHallelujah(
                        fontWeight: FontWeight.bold,
                        fontSize: 36,
                        color: backColor,
                      )),
                ],
              ),
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          color: text1, borderRadius: BorderRadius.circular(5)),
                      height: 50,
                      width: 350,
                    ),
                    Positioned(
                      top: 3,
                      left: 3,
                      bottom: 3,
                      right: 3,
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          height: 20,
                          width: 200,
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              style: GoogleFonts.comfortaa(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: Colors.black,
                              ),
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: " Mail",
                                  hintStyle: GoogleFonts.gloriaHallelujah(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                    color: text2,
                                  )),
                            ),
                          ))),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          color: text1, borderRadius: BorderRadius.circular(5)),
                      height: 50,
                      width: 350,
                    ),
                    Positioned(
                      top: 3,
                      left: 3,
                      bottom: 3,
                      right: 3,
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          height: 20,
                          width: 200,
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              style: GoogleFonts.comfortaa(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: Colors.black,
                              ),
                              obscureText: true,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black)),
                                  hintText: " Şifre",
                                  hintStyle: GoogleFonts.gloriaHallelujah(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                    color: text2,
                                  )),
                            ),
                          ))),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Anasayfa()),
                );
              },
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        color: text1, borderRadius: BorderRadius.circular(6)),
                    height: 52,
                    width: 350,
                  ),
                  Positioned(
                      top: 3,
                      left: 3,
                      bottom: 3,
                      right: 3,
                      child: Container(
                        color: text1,
                        height: 20,
                        width: 100,
                        child: Center(
                            child: Text(
                          "KAYIT",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 15),
                        )),
                      )),
                ],
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Zaten bir hesabın var mı?",
                  style: GoogleFonts.gloriaHallelujah(color: Colors.white),
                ),
                SizedBox(width: 10),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                    child: Text(
                      "Giriş Yap",
                      style: GoogleFonts.gloriaHallelujah(color: text1),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
