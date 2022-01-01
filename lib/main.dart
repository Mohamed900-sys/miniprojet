import 'package:flutter/material.dart';
import 'package:miniprojetflutter/lescartes.dart';
import 'package:miniprojetflutter/lescartesutilisateur.dart';
import 'package:miniprojetflutter/lespc.dart';
import 'package:miniprojetflutter/lestelephonesutilisateur.dart';
import 'package:miniprojetflutter/utilisateurhomepage.dart';

import 'ajout.dart';
import 'homepage.dart';
import 'lespcutilisateur.dart';
import 'lestelephones.dart';
import 'loginpage.dart';
import 'signuppage.dart';
void main() => runApp(new MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home:LoginPage(),
      routes: <String, WidgetBuilder>{
        '/loginpage':(BuildContext context)=> new MyApp(),
        '/signup':(BuildContext context)=> new SignupPage(),
        '/home':(BuildContext context)=> new HomePage(),
        '/homeutilisateur':(BuildContext context)=> new UtilisateursHomePage(),
        '/lescartes':(BuildContext context)=> new LesCartes(),
        '/ajouter':(BuildContext context)=> new AjoutPage(),
        '/lescartesutilisateurs':(BuildContext context)=> new LesCartesUtilisateursPage(),
        '/lespc':(BuildContext context)=> new LesPCPage(),
        '/lespcutilisateurs':(BuildContext context)=> new LesPCUtilisateursPage(),
        '/lestelephones':(BuildContext context)=> new LesTelephonesPage(),
        '/lestelephonesutilisateurs':(BuildContext context)=> new LesTelephonesUtilisateursPage(),
      }
    );
  }
}


