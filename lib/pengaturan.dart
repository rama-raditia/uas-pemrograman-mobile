import 'package:flutter/material.dart';

class SetPage extends StatefulWidget {
  @override
  _SetPageState createState() => _SetPageState();
}

class _SetPageState extends State<SetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          elevation: 1,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_rounded),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Center(child: Text('Setting')),
        ),
        body: Container(
          child: ListView(
            children: [
              Column(
                children: [
                  Row( mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Notifikasi',
                          style: TextStyle(
                            fontSize: 26,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Penggunaan Data',
                          style: TextStyle(fontSize: 26,),
                        ),
                      ),
                     
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('Tampilan', style: TextStyle(
                              fontSize: 26,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Tentang Aplikasi',
                          style: TextStyle(
                            fontSize: 26,
                          ),
                        ),
                      ),
                    ],
                  ),
                  
                ],
              )
            ],
          ),
        ));
  }
}
