import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:miniprojetflutter/signuppage.dart';
import 'package:miniprojetflutter/utilisateurhomepage.dart';

import 'homepage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final myEmailController = TextEditingController();
  final myPwdController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myEmailController.dispose();
    myPwdController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Container(
                    width: 200,
                    height: 150,
                    child: Image.asset('assets/images/img.png')),
              ),
            ),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                controller: myEmailController,
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
                controller: myPwdController,
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Mot de Passe',
                    hintText: 'inserez votre mot de passe'),
              ),
            ),
            TextButton(
              onPressed: (){
                //TODO FORGOT PASSWORD SCREEN GOES HERE
              },
              child: Text(
                '   mot de passe oublié ?',
                style: TextStyle(color: Colors.blue, fontSize: 15),
              ),
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                onPressed: () {
                  //retireve login input
                  if (myEmailController.text == "admin@gmail.com" && myPwdController.text == "123"){
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => HomePage()));}
                  else if (myEmailController.text == "smirimanel3@gmail.com" && myPwdController.text == "123"){
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => UtilisateursHomePage()));
                  }else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("Votre mail ou mot de passe est incorrect")));
                  }
                },
                child: Text(
                  'Se connecter',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
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
                        context, MaterialPageRoute(builder: (_) => SignupPage()));
                },
                child: Text(
                  'inscription',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            SizedBox(
              height: 280,
            ),


            Text('Nouveau utilisateur? Creer un compte')
          ],
        ),
      ),
    );
  }
}