import 'package:flutter/material.dart';

class DetailProduct extends StatefulWidget {
  DetailProduct(
      {Key key, this.name, this.star, this.description, this.price, this.image,})
      : super(key: key);

  final String name;
  final int price;
  final String image;
  final int star;
  final String description;
  

  @override
  _DetailProductState createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct> {
  final childrenstar = <Widget>[];
  @override
  Widget build(BuildContext context) {
    for (var i = 0; i < widget.star; i++) {
      childrenstar.add(new Icon(
        Icons.star, size: 20, color: Colors.yellow,
      ));
    }
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.lightGreen,
        title: new Text("${widget.name}"),
      ),
      body: new Container(
        width: double.infinity,
        child: new ListView(
          children: <Widget>[
            Column(
              children: <Widget>[ new Image.asset("assets/appimages/" + widget.image)],
            ),
            Container(
              decoration: new BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [const Color(0xff0356a1), const Color(0xff0356a1)],
              )),
              padding: EdgeInsets.all(10),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: childrenstar,
                  ),
                  new Container(
                    child: new Text(
                      this.widget.price.toString(),
                      style: new TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: "TimesNewRomanBold"),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              color: Colors.black,
              width: double.infinity,
              height: double.maxFinite,
              child: new Text(widget.description),
            )
          ],
        ),
      ),
    );
  }
}
