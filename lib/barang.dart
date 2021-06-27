import 'package:flutter/material.dart';
import 'package:uas_pemmob/detailproduk.dart';

class StarterAkunPage extends StatefulWidget {
  @override
  _StarterAkunPageState createState() => _StarterAkunPageState();
}

class _StarterAkunPageState extends State<StarterAkunPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Center(child: Text('Aksesoris Handphone')),
      ),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: <Widget>[
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailProduct(
                  name: "Headphone",
                  description: "Dengan suara 3d berkualitas",
                  image: "",
                  star: 4,
                  price: 5000000,
                ),
              ));
            },
            child: ProductBox(
                name: "Headphone",
                description: "Dengan suara 3d berkualitas",
                image: "",
                price: 5000000,
                star: 4),
          ),
        ],
      ),
    );
  }
}

class ProductBox extends StatelessWidget {
  ProductBox(
      {Key key, this.name, this.description, this.price, this.image, this.star})
      : super(key: key);

  final String name;
  final String description;
  final int price;
  final String image;
  final int star;
  final children = <Widget>[];

  Widget build(BuildContext context) {
    for (var i = 0; i < star; i++) {
      children.add(new Icon(
        Icons.star,
        size: 10,
        color: Colors.yellow,
      ));
    }

    return Container(
        padding: EdgeInsets.all(10),
        child: Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              Image.asset(
                "assets/appimages/" + image,
                width: 150,
              ),
              Expanded(
                  child: Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(this.name,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                          Text(this.description),
                          Text(
                            "Harga: " + this.price.toString(),
                            style: TextStyle(color: Colors.blue),
                          ),
                          Row(
                            children: <Widget>[
                              Row(
                                children: children,
                              )
                            ],
                          )
                        ],
                      )))
            ])));
  }
}