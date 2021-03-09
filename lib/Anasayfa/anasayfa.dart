import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pati/Anasayfa/productDetails.dart';
import 'package:pati/Anasayfa/subjects.dart';
import 'package:pati/HexColor.dart';
import 'package:pati/WelcomeScreens/welcome.dart';
import 'package:pati/components/products.dart';
import 'package:pati/components/categories.dart';

class Anasayfa extends StatefulWidget {
  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
        height: 250.0,
        child: CarouselSlider(
          options: CarouselOptions(height: 200),
          items: [
            'https://cdnuploads.aa.com.tr/uploads/Contents/2019/10/24/thumbs_b_c_fb8263ce4f9f43ebdc7634b0d1eb0a08.jpg?v=115427',
            'https://www.hillspet.com.tr/content/dam/cp-sites/hills/hills-pet/global/brands/vetessentials/HP_pods_1_VEcat_Kitten.jpg',
            'https://i.pinimg.com/originals/e5/4f/9c/e54f9c6bfaa7b53d59608f96c964404f.jpg',
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUOSk3FVZFS1OaRSJJ2LpbvfENWl7QdzBw2w&usqp=CAU'
          ].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(color: Colors.amber),
                  child: GestureDetector(
                    child: Image.network(i, fit: BoxFit.fill),
                    onTap: () {
                      Navigator.push<Widget>(
                        context,
                        PageRouteBuilder(
                            transitionDuration: Duration(milliseconds: 200),
                            transitionsBuilder:
                                (context, animation, animationTime, child) {
                              animation = CurvedAnimation(
                                  parent: animation, curve: Curves.linear);
                              return ScaleTransition(
                                alignment: Alignment.center,
                                scale: animation,
                                child: child,
                              );
                            },
                            pageBuilder: (context, animation, animationTime) {
                              return ImageScreen("${i}");
                            }),
                      );
                    },
                  ),
                );
              },
            );
          }).toList(),
        ));

    // Widget image_carousel = new Container(
    //   height: 200.0,
    //   child: CarouselSlider(
    //   items: <Widget>[
    //     Image.asset('asset/catWoman.png'),
    //     Image.asset('asset/dogMan.png'),
    //     Image.asset('asset/dogMan2.png'),
    //   ].map((i) {
    //     return Builder(
    //       builder: (BuildContext context) {
    //         return Container(
    //             width: MediaQuery.of(context).size.width,
    //             margin: EdgeInsets.symmetric(horizontal: 5.0),
    //             decoration: BoxDecoration(color: Colors.amber),);
    //       },
    //     );
    //   }).toList(),
    //   ),
    //   );
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
            color: text2,
            shape: CircularNotchedRectangle(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                IconButton(
                    color: Colors.white,
                    onPressed: () {},
                    icon: Icon(Icons.home, size: 30)),
                IconButton(
                    color: Colors.white,
                    padding: EdgeInsets.only(right: 30),
                    onPressed: () {},
                    icon: Icon(Icons.question_answer, size: 30)),
                IconButton(
                  color: Colors.white,
                  padding: EdgeInsets.only(left: 30),
                  onPressed: () {},
                  icon: Icon(
                    Icons.message,
                    size: 30,
                  ),
                ),
                IconButton(
                    color: Colors.white,
                    onPressed: () {},
                    icon: Icon(
                      Icons.person,
                      size: 30,
                    )),
              ],
            )),
        floatingActionButton: FloatingActionButton(
          backgroundColor: text2,
          heroTag: 'next2',
          child: Icon(
            Icons.pets,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        endDrawerEnableOpenDragGesture: false,
        drawer: new Drawer(
          child: Container(
            color: Colors.white,
            child: new ListView(
              children: <Widget>[
                new UserAccountsDrawerHeader(
                  accountName: Text('Yusuf Güzel'),
                  accountEmail: Text('guzelyusuf10@gmail.com'),
                  currentAccountPicture: GestureDetector(
                    child: new CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  decoration: new BoxDecoration(color: text2),
                ),

//            body

                InkWell(
                  onTap: () {},
                  child: ListTile(
                    title: Text('Home Page'),
                    leading: Icon(Icons.home),
                  ),
                ),

                InkWell(
                  onTap: () {},
                  child: ListTile(
                    title: Text('My account'),
                    leading: Icon(Icons.person),
                  ),
                ),

                InkWell(
                  onTap: () {},
                  child: ListTile(
                    title: Text('My Orders'),
                    leading: Icon(Icons.shopping_basket),
                  ),
                ),

                InkWell(
                  onTap: () {},
                  child: ListTile(
                    title: Text('Categoris'),
                    leading: Icon(Icons.dashboard),
                  ),
                ),

                InkWell(
                  onTap: () {},
                  child: ListTile(
                    title: Text('Favourites'),
                    leading: Icon(Icons.favorite),
                  ),
                ),

                Divider(),

                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Welcome()),
                    );
                  },
                  child: ListTile(
                    title: Text('Log out'),
                    leading: Icon(
                      Icons.transit_enterexit,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
            backgroundColor: text2,
            leading: Builder(
              builder: (context) => // Ensure Scaffold is in context
                  IconButton(
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                onPressed: () => Scaffold.of(context).openDrawer(),
              ),
            ),
            automaticallyImplyLeading: false,
            title: Text(
              "RenkliPati",
              style: GoogleFonts.gloriaHallelujah(color: Colors.white),
            ),
            actions: []),
        body: Column(
          children: <Widget>[
            image_carousel,
//              SingleChildScrollView(
//                scrollDirection: Axis.horizontal,
//                child: Padding(
//                  padding: const EdgeInsets.only(top: 28.0),
//                  child: Row(
//                    mainAxisAlignment: MainAxisAlignment.spaceAround,
//                    children: <Widget>[
//                      Categories(
//                        type: "Cat",
//                        imagePath: "asset/animals/cat.png",
//                      ),
//                      Categories(
//                        type: "Bird",
//                        imagePath: "asset/animals/parrot.png",
//                      ),
//                      Categories(
//                        type: "Dog",
//                        imagePath: "asset/animals/dog.png",
//                      ),
//                    ],
//                  ),
//                ),
//              ),
            //grid view
            Flexible(child: Products()),
          ],
        ));
  }
}

class Categories extends StatelessWidget {
  String imagePath, type;

  Categories({this.imagePath, this.type});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(left: 20),
            decoration: BoxDecoration(
                color: text2, borderRadius: BorderRadius.circular(10)),
            child: GestureDetector(
              onTap: () {},
              child: Image.asset(
                imagePath,
                height: 40,
                width: 40,
                color: Colors.grey[700],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              type,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
