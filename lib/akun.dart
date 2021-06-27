import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  bool showPass = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        elevation: 1,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              Center(
                child: Text(
                  "Profile",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 4,
                              color: Theme.of(context).scaffoldBackgroundColor),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 2,
                                blurRadius: 10,
                                color: Colors.black.withOpacity(0.1))
                          ],
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://asset.kompas.com/crops/ZAI-FTWzAMWkVhQNEQoseu7lv5U=/0x7:426x291/750x500/data/photo/2020/06/04/5ed8daeb95898.jpeg'))),
                    ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 4,
                                color: Theme.of(context).scaffoldBackgroundColor,
                              ),
                              color: Colors.black),
                          child: Icon(
                            Icons.settings,
                            color: Colors.white,
                          ),
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 35,
              ),
              TextPlace("Name", "rama", false),
              TextPlace("Email", "rama.raditia@gmail.com", false),
              TextPlace("Password", "******", true),
              SizedBox(
                height: 35,
              ),
              Row(
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Save",
                        style: TextStyle(
                            fontSize: 16,
                            letterSpacing: 2.2,
                            color: Colors.white),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget TextPlace(String labelText, String field, bool passField) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35.0),
      child: TextField(
        obscureText: passField ? showPass : false,
        decoration: InputDecoration(
            suffixIcon: passField
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        showPass = !showPass;
                      });},
                    icon: Icon(
                      Icons.remove_red_eye_outlined,
                      color: Colors.grey,
                    ),
                  )
                : null,
            contentPadding: EdgeInsets.only(bottom: 3),
            labelText: labelText,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: field,
            hintStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
      ),
    );
  }
}