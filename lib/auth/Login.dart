import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pati/Anasayfa/anasayfa.dart';
import 'package:pati/WelcomeScreens/welcome.dart';
import 'package:pati/auth/Register.dart';

import '../HexColor.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: text1,
        body: Column(
          children: <Widget>[
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(left: 118.0),
              child: Row(
                children: <Widget>[
                  Text("Giriş Yap",
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
                          color: text2, borderRadius: BorderRadius.circular(5)),
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
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black)),
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
                          color: text2, borderRadius: BorderRadius.circular(5)),
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
                  MaterialPageRoute(builder: (context) => Welcome()),
                );
              },
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        color: text2, borderRadius: BorderRadius.circular(6)),
                    height: 52,
                    width: 350,
                  ),
                  Positioned(
                      top: 3,
                      left: 3,
                      bottom: 3,
                      right: 3,
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Anasayfa()),
                          );
                        },
                        child: Container(
                          color: text2,
                          height: 20,
                          width: 100,
                          child: Center(
                              child: Text(
                            "GİRİŞ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 15),
                          )),
                        ),
                      ))
                ],
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Hesabın yok mu?",
                  style: GoogleFonts.gloriaHallelujah(color: Colors.white),
                ),
                SizedBox(width: 10),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Register()),
                      );
                    },
                    child: Text(
                      "Kayıt Ol",
                      style: GoogleFonts.gloriaHallelujah(color: text2),
                    ))
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 60.0,
                  width: 60.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 2),
                        blurRadius: 6.0,
                      ),
                    ],
                    image: DecorationImage(
                      image: AssetImage("asset/google.jpg"),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  height: 60.0,
                  width: 60.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 2),
                        blurRadius: 6.0,
                      ),
                    ],
                    image: DecorationImage(
                      image: AssetImage("asset/facebook.jpg"),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  height: 60.0,
                  width: 60.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: text2,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 2),
                        blurRadius: 6.0,
                      ),
                    ],
                    image: DecorationImage(
                      image: AssetImage("asset/twitter.png",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
