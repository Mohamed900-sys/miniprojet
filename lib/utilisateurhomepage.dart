import 'package:flutter/material.dart';
import 'package:miniprojetflutter/ytilisateur_drawer.dart';


import 'ytilisateur_drawer.dart';

class UtilisateursHomePage extends StatelessWidget {
  const UtilisateursHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: UtilisateurDrawer(),
      appBar: AppBar(title: Text("Accueil"),),
      body:SingleChildScrollView(
        child: Column(
            children: <Widget>[
        Padding(
        padding: const EdgeInsets.only(top: 60.0),
        child: Center(
          child: Container(
              width: 500,
              height: 600,
              child: Image.asset('assets/images/img_15.png')),
        ),
      ),

]



    )
      )
    );
  }
}