import 'package:flutter/material.dart';

import 'loginpage.dart';
class SignupPage extends StatefulWidget {

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Center(
          child: Container(
            padding: EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 60.0),
                  child: Center(
                    child: Container(
                        width: 200,
                        height: 150,
                        child: Image.asset('assets/images/img_13.png')),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                  //padding: EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    //controller:
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                        hintText: 'inserez un e-mail valide sous la forme abc@gmail.com'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15, bottom: 0),
                  //padding: EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    //controller:
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Mot de Passe',
                        hintText: 'inserez votre mot de passe'),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                      color: Colors.blue, borderRadius: BorderRadius.circular(20)),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (_) => LoginPage()));
                    },
                    child: Text(
                      'inscription',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}
