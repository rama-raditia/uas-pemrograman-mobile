import 'package:uas_pemmob/menu.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_login/flutter_login.dart';
import 'auth1.dart';

const users = const {
  'admin@gmail.com': 'admin',
};

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Duration get loginTime => Duration(milliseconds: 2000);

  Future<String> _authUserSignUp(LoginData data) {
    return Future.delayed(loginTime).then((_) async {
      try {await Provider.of<Auth>(context, listen: false)
            .signup(data.name, data.password);} 
            catch (err) {
        print(err);
        return err.toString();
      } return null;
    });
  }

  Future<String> _authUserLogin(LoginData data) {
    return Future.delayed(loginTime).then((_) async {
      try { await Provider.of<Auth>(context, listen: false)
            .signin(data.name, data.password);} 
        catch (err) {
        print(err);
        return err.toString();
      }
      return null;
    });
  }

  Future<String> _recoverPassword(String name) {
    print('Nama: $name');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(name)) {
        return 'Username tidak ditemukan';
      }
      return null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(title: 'TOKO AKSESORIS',
      onLogin: _authUserLogin,
      onSignup: _authUserSignUp,
      onSubmitAnimationCompleted: () 

      {
        Provider.of<Auth>(context, listen: false).tempData();
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => Home(),
        ));
      },

      onRecoverPassword: _recoverPassword,
    );
  }
}