import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../HexColor.dart';

class HotelDetailsPage extends StatefulWidget {
  final product_detail_name;
  final product_detail_user;
  final product_detail_age;
  final product_detail_picture;
  final product_detail_type;
  final product_detail_location;
  final product_detail_description;

  HotelDetailsPage(
      {this.product_detail_name,
      this.product_detail_user,
      this.product_detail_location,
      this.product_detail_age,
      this.product_detail_picture,
      this.product_detail_type,
      this.product_detail_description});

  static final String path = "lib/src/pages/hotel/details.dart";

  @override
  _HotelDetailsPageState createState() => _HotelDetailsPageState();
}

class _HotelDetailsPageState extends State<HotelDetailsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
              foregroundDecoration: BoxDecoration(color: Colors.black26),
              height: 450,
              child: Image.asset(widget.product_detail_picture,
                  fit: BoxFit.fitHeight)),
          SingleChildScrollView(
            padding: const EdgeInsets.only(top: 16.0, bottom: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 250),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    "İsim: ${widget.product_detail_name} "
                        "\nYaş: ${widget.product_detail_age} "
                        "\nTür: ${widget.product_detail_type}",
                    style: GoogleFonts.gloriaHallelujah(
                      fontSize: 22.0,
                      fontWeight: FontWeight.normal,
                      color: text2),
                  ),
                ),
                Row(
                  children: <Widget>[
                    const SizedBox(width: 16.0),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 16.0,
                      ),
                      decoration: BoxDecoration(
                          color: text2,
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Text(
                        "8.4/85 puanlama",
                        style: TextStyle(color: Colors.white, fontSize: 13.0),
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      color: Colors.white,
                      icon: Icon(Icons.favorite_border),
                      onPressed: () {},
                    )
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(32.0),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.star,
                                      color: text2,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: text2,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: text2,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: text2,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      color: text2,
                                    ),
                                  ],
                                ),
                                Text.rich(
                                  TextSpan(children: [
                                    WidgetSpan(
                                        child: Icon(
                                      Icons.location_on,
                                      size: 30.0,
                                      color: text2,
                                    )),
                                    TextSpan(text: "İstanbul")
                                  ]),
                                  style: TextStyle(
                                      color: text2, fontSize: 18.0),
                                )
                              ],
                            ),
                          ),
                          Column(
                            children: <Widget>[
                              RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                    text: "Favoriler",
                                    style: GoogleFonts.gloriaHallelujah(
                                        color: text2, fontSize: 25),
                                  ),
                                  WidgetSpan(
                                      child: Icon(Icons.favorite,
                                          size: 25, color: Colors.red))
                                ]),
                              ),
                              Text(
                                "158 Kullanıcı",
                                style: TextStyle(
                                    fontSize: 12.0, color: text2),
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 30.0),
                      SizedBox(
                        width: double.infinity,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 2,color: text1),
                              borderRadius: BorderRadius.circular(30.0)),
                          color: text2,
                          textColor: Colors.white,
                          child: Text(
                            "Sahiplen",
                            style: TextStyle(fontWeight: FontWeight.normal),
                          ),
                          padding: const EdgeInsets.symmetric(
                            vertical: 16.0,
                            horizontal: 32.0,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      const SizedBox(height: 30.0),
                      Text(
                        "Açıklama".toUpperCase(),
                        style: TextStyle(color: text1,
                            fontWeight: FontWeight.w900, fontSize: 18.0),
                      ),
                      const SizedBox(height: 10.0),
                      Text(
                        "${widget.product_detail_description}",
                        textAlign: TextAlign.justify,
                        style: TextStyle(color: text2,
                            fontWeight: FontWeight.w900, fontSize: 16.0),
                      ),
                      const SizedBox(height: 10.0),
                      SizedBox(height: 20),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              height: 50,
                              width: 100,
                              decoration: BoxDecoration(
                                color: text2,
                                borderRadius: BorderRadius.circular(25)
                              ),
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: text1,width: 2)),
                                onPressed: () {},
                                color: text2,
                                textColor: Colors.white,
                                child: Text("Mesaj At".toUpperCase(),
                                    style: TextStyle(fontSize: 14)),
                              ),
                            ),
                          ),
                          SizedBox(width: 100),
                          Expanded(
                            child: Container(
                              height: 50,
                              width: 100,
                              decoration: BoxDecoration(
                                color: text2,
                                borderRadius: BorderRadius.circular(25)
                              ),
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: text1,width: 2)),
                                onPressed: () {},
                                color: text2,
                                textColor: Colors.white,
                                child: Text("Soru Sor".toUpperCase(),
                                    style: TextStyle(fontSize: 14)),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              centerTitle: true,
              title: Text(
                "@${widget.product_detail_user}",
                style: GoogleFonts.gloriaHallelujah(
                    fontSize: 35.0,
                    fontWeight: FontWeight.normal,
                    color: text2),
              ),
            ),
          ),
          // Align(
          //   alignment: Alignment.bottomLeft,
          //   child: BottomNavigationBar(
          //     backgroundColor: Colors.white54,
          //     elevation: 0,
          //     selectedItemColor: Colors.black,
          //     items: [
          //       BottomNavigationBarItem(
          //           icon: Icon(Icons.search), title: Text("Search")),
          //       BottomNavigationBarItem(
          //           icon: Icon(Icons.favorite_border),
          //           title: Text("Favorites")),
          //       BottomNavigationBarItem(
          //           icon: Icon(Icons.settings), title: Text("Settings")),
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}

// class ProductDetails extends StatefulWidget {

//
// class _ProductDetailsState extends State<ProductDetails> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0.1,
//         backgroundColor: text2,
//         title: Text("Kullanıcı: ${widget.product_detail_user}"),
//         actions: <Widget>[
//           IconButton(
//             icon: Icon(Icons.search),
//           )
//         ],
//       ),
//       body: ListView(
//         children: <Widget>[
//           Container(
//             height: 300,
//             child: GridTile(
//               child: Center(
//                 child: Container(
//                   color: text1,
//                   child: Image.asset(
//                     widget.product_detail_picture,
//                   ),
//                 ),
//               ),
//               footer: Container(
//                 color: text2,
//                 child: ListTile(
//                   title: Row(
//                     children: <Widget>[
//                       Expanded(
//                         child: Text(
//                           "Tür: ${widget.product_detail_type}",
//                           style: TextStyle(fontWeight: FontWeight.bold),
//                         ),
//                       ),
//                       Expanded(
//                           child: Text(
//                         "İsim: ${widget.product_detail_name}",
//                         style: TextStyle(fontWeight: FontWeight.bold),
//                       )),
//                       Expanded(
//                           child: Text(
//                         "Yaş: ${widget.product_detail_age}",
//                         style: TextStyle(fontWeight: FontWeight.bold),
//                       )),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Divider(),
//           Row(
//             children: <Widget>[
//               Expanded(
//                 child: Padding(
//                   padding: const EdgeInsets.only(left: 15.0),
//                   child: MaterialButton(
//                     onPressed: () {},
//                     color: text1,
//                     textColor: Colors.white,
//                     elevation: 0.2,
//                     child: Text("Sahiplen"),
//                   ),
//                 ),
//               ),
//               IconButton(
//                 icon: Icon(
//                   Icons.message,
//                   color: text2,
//                 ),
//               ),
//               IconButton(
//                 icon: Icon(
//                   Icons.call,
//                   color: text2,
//                 ),
//               ),
//             ],
//           ),
//           Container(
//             decoration: BoxDecoration(
//                 color: text1,
//                 borderRadius: BorderRadius.only(
//                     topRight: Radius.circular(35),
//                     topLeft: Radius.circular(35))),
//             child: ListTile(
//               title: Padding(
//                 padding: const EdgeInsets.all(18.0),
//                 child: Text(
//                   "DETAYLAR",
//                   style: GoogleFonts.comfortaa(color: text2),
//                 ),
//               ),
//               subtitle: Text(
//                 "${widget.product_detail_description}",
//                 style: GoogleFonts.gloriaHallelujah(color: text2),
//               ),
//             ),
//           ),
//
//         ],
//       ),
//     );
//   }
// }
