import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:uas_pemmob/ui/uipenjualan.dart';
import 'package:http/http.dart' as http;

class InputPenjualan extends StatefulWidget {
  @override
  _InputPenjualanState createState() => _InputPenjualanState();
}

class _InputPenjualanState extends State<InputPenjualan> {
  final _fromkey = GlobalKey<FormState>();
  Future saveUpload() async {
    var deskripsiController;
        final response =
            await http.post(Uri.parse("http://192.168.43.104:80/api/products"), body: {
          "Nama_barang": nameController.text,
          "Deskripsi": deskripsiController.text,
          "Jumlah": jumlahController.text,
          "harga": hargaController.text,
    });
    return jsonDecode(response.body);
  }

  TextEditingController nameController = TextEditingController();
  TextEditingController dekripsiController = TextEditingController();
  TextEditingController jumlahController = TextEditingController();
  TextEditingController hargaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.keyboard_arrow_left),
      ),
      body: Form(
        key: _fromkey,
        child: Padding(
          padding: EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
          child: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10.0),
                child: TextFormField(
                  controller: nameController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: "Nama Barang",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(3.0))),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Form tidak boleh ada yang kosong";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: TextFormField(
                  controller: dekripsiController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: "Keterangan Barang",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(3.0))),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Form tidak boleh ada yang kosong";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: TextFormField(
                  controller: jumlahController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: "Jumlah Barang",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(3.0))),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Form tidak boleh ada yang kosong";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: TextFormField(
                  controller: hargaController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: "Harga Barang",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(3.0))),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Form tidak boleh ada yang kosong";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: RaisedButton(
                        color: Theme.of(context).primaryColorDark,
                        textColor: Theme.of(context).primaryColorLight,
                        child: Text(
                          "Simpan",
                          textScaleFactor: 1.5,
                        ),
                        onPressed: () {
                          if (_fromkey.currentState.validate()) {
                            saveUpload().then((value) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DataScreen()));
                            });
                          }
                        },
                      ),
                    ),
                    Container(
                      width: 5.0,
                    ),
                    Expanded(
                        child: RaisedButton(
                      color: Theme.of(context).primaryColorDark,
                      textColor: Theme.of(context).primaryColorLight,
                      child: Text(
                        "Batal",
                        textScaleFactor: 1.5,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}