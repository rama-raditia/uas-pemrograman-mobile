import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        elevation: 1,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Center(child: Text('About')),
      ),
      body: Container(
        child: ListView(
          children: [
            Center(
              child: Stack(
                children: [
                  Container( width: 100, height: 150,
                    decoration: BoxDecoration(
                        border: Border.all( width: 4, color: Theme.of(context).scaffoldBackgroundColor),
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 2,
                              blurRadius: 20,
                              color: Colors.blueAccent.withOpacity(0.1))
                        ],
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/appimages/about.jpg'))),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            
          ],
        ),
      ),
    );
  }
}