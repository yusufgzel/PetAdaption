import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pati/auth/Login.dart';
import 'package:pati/auth/Register.dart';

import '../HexColor.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: backColor,
        body: Column(
          children: <Widget>[
            Container(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 60.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        width: 150,
                        height: 250,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("asset/dogMan.png"),
                              fit: BoxFit.fill,
                            )))
                  ],
                ),
              ),
              width: MediaQuery.of(context).size.width,
              height: 350,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("asset/welcome.png"), fit: BoxFit.fill),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Renkli Patiye Hoş Geldiniz",
              style: GoogleFonts.gloriaHallelujah(
                  fontWeight: FontWeight.bold, fontSize: 25, color: text2),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Evcil hayvanlarınızı burada birilerine sahiplendirebilir veya"
                    " siz bir hayvan sahiplenebilirsiniz",
                style: GoogleFonts.gloriaHallelujah(
                  fontWeight: FontWeight.w900,
                  color: text1,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Register()),
                );
              },
              child: Container(
                child: Center(child: Text("Kayıt Ol",style: GoogleFonts.gloriaHallelujah(color: Colors.white),)),
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                    color: text2, borderRadius: BorderRadius.circular(10)),
              ),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
              child: Container(
                child: Center(child: Text("Giriş Yap",style: GoogleFonts.gloriaHallelujah(color: Colors.white),)),
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                    color: text1, borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ],
        ),
      ),
    );
  }
  }


