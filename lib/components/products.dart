import 'package:flutter/material.dart';
import 'package:pati/Anasayfa/productDetails.dart';

import '../HexColor.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var add_list = [
    {
      "user": "Batu",
      "location": "İstanbul",
      "name": "Can",
      "picture": "asset/animals/images.jpg",
      "age": 5,
      "type": "Kedi",
      "desc":
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
    },
    {
      "user": "Anıl",
      "location": "İstanbul",
      "name": "Mamiş",
      "picture": "asset/animals/images.jpg",
      "age": 5,
      "type": "Köpek",
      "desc":
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
    },
    {
      "user": "YusufBey",
      "location": "İstanbul",
      "name": "Asena",
      "picture": "asset/dogMan.png",
      "age": 6,
      "type": "Köpek",
      "desc":
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
    },
    {
      "user": "Yusuf",
      "location": "İstanbul",
      "name": "Asesna",
      "picture": "asset/dogMan.png",
      "age": 6,
      "type": "Köpek",
      "desc":
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
    },
    {
      "user": "Yusuf",
      "location": "İstanbul",
      "name": "Asesna",
      "picture": "asset/dogMan2.png",
      "age": 6,
      "type": "Köpek",
      "desc":
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
    },
    {
      "user": "Yusuf",
      "location": "İstanbul",
      "name": "Asesna",
      "picture": "asset/dogMan.png",
      "age": 6,
      "type": "Köpek",
      "desc":
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: add_list.length,
      gridDelegate:
          new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return Single_prod(
          prod_desc: add_list[index]['desc'],
          prod_location: add_list[index]['location'],
          prod_user: add_list[index]['user'],
          prod_name: add_list[index]['name'],
          prod_picture: add_list[index]['picture'],
          prod_age: add_list[index]['age'],
          prod_type: add_list[index]['type'],
        );
      },
    );
  }
}

class Single_prod extends StatelessWidget {
  final prod_user;
  final prod_name;
  final prod_picture;
  final prod_age;
  final prod_type;
  final prod_desc;
  final prod_location;

  Single_prod(
      {this.prod_name,
      this.prod_user,
      this.prod_location,
      this.prod_picture,
      this.prod_age,
      this.prod_type,
      this.prod_desc});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Material(
        child: InkWell(
          onTap: () {
            Navigator.push(
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
                    return HotelDetailsPage(
                      product_detail_description: prod_desc,
                      product_detail_location: prod_location,
                      product_detail_user: prod_user,
                      product_detail_name: prod_name,
                      product_detail_age: prod_age,
                      product_detail_picture: prod_picture,
                      product_detail_type: prod_type,
                    );
                  }),
            );
          },
          child: GridTile(
              footer: Container(
                decoration: BoxDecoration(color: Colors.white30),
                child: ListTile(
                  leading: Text(
                    prod_name,
                    style: TextStyle(
                        color: text1,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  title: Text(
                    "Yaş: $prod_age",
                    style: TextStyle(color: text2, fontWeight: FontWeight.w900),
                  ),
                  subtitle: Text(
                    "Tür: $prod_type",
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
              child: Image.asset(
                prod_picture,
                fit: BoxFit.cover,
              )),
        ),
      ),
    );
  }
}
