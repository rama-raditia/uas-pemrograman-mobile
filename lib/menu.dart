import 'package:flutter/material.dart';
import 'package:uas_pemmob/akun.dart';
import 'package:uas_pemmob/pengaturan.dart';
import 'package:uas_pemmob/about.dart';
import 'package:uas_pemmob/ui/uipenjualan.dart';
import 'package:uas_pemmob/produk.dart';
import 'package:uas_pemmob/barang.dart';
import 'package:uas_pemmob/komputer.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Widget customSearchBar = Center(child: Text("Menu Utama"));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: customSearchBar
        
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Rama"),
              accountEmail: new Text("rama.raditia@gmail.com"),
              currentAccountPicture: new GestureDetector(
                onTap: () {},
                child: new CircleAvatar(
                  backgroundImage: new NetworkImage(
                      'https://asset.kompas.com/crops/ZAI-FTWzAMWkVhQNEQoseu7lv5U=/0x7:426x291/750x500/data/photo/2020/06/04/5ed8daeb95898.jpeg'),
                ),
              ),
            
            ),
            new ListTile(
              title: new Text("Profile"),
              trailing: new Icon(Icons.account_box),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return AccountPage();
                }));
              },
            ),
            new ListTile(
              title: new Text("Pengaturan"),
              trailing: new Icon(Icons.settings_applications_rounded),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SetPage();
                }));
              },
            ),
            new ListTile(
              title: new Text("About us"),
              trailing: new Icon(Icons.east_sharp),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return AboutPage();
                }));
              },
            ),
          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            decoration: BoxDecoration(
              border: Border(
                  top: BorderSide(
                      color: Theme.of(context).dividerColor,
                      style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Theme.of(context).dividerColor,
                      style: BorderStyle.solid)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return FashionPage();
                    }));
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.favorite_outline_rounded,
                        color: Colors.pink,
                        size: 50,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 8),
                        child: Text(
                          "Fashion",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.pinkAccent,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return StarterAkunPage();
                    }));
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.headset_mic_outlined,
                        color: Colors.greenAccent,
                        size: 50,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 8),
                        child: Text(
                          "Aksesoris Handphone",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.lightGreen
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            decoration: BoxDecoration(
              border: Border(
                  top: BorderSide(
                      color: Theme.of(context).dividerColor,
                      style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Theme.of(context).dividerColor,
                      style: BorderStyle.solid)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return KomputerPage();
                    }));
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.computer_rounded,
                        color: Colors.red,
                        size: 50,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 8),
                        child: Text(
                          " Aksesoris Komputer",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.red
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return DataScreen();
                    }));
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.add_shopping_cart_outlined ,
                        color: Colors.blue,
                        size: 50,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 8),
                        child: Text(
                          " Tambah Pesanan",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
