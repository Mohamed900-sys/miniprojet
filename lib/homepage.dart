import 'package:flutter/material.dart';

import 'drawer_widget.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(title: Text("Accueil Admin"),),
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
    ),
    ));
  }
}