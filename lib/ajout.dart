import 'package:flutter/material.dart';

import 'lestelephones.dart';


class AjoutPage extends StatefulWidget {

  @override
  _AjoutPageState createState() => _AjoutPageState();
}

class _AjoutPageState extends State<AjoutPage> {
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
                        child: Image.asset('assets/images/img_14.png')),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                  //padding: EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    //controller:
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'identifiant',
                        hintText: 'id produit'),
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
                        labelText: 'Nom',
                        hintText: 'Nom produit'),
                  ),
                ),
                SizedBox(
                  height: 10,
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
                        labelText: 'Prix',
                        hintText: 'Prix du produit'),
                  ),
                ),
                SizedBox(
                  height: 10,
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
                        labelText: 'Quantité',
                        hintText: 'Quantité en stock'),
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
                          context, MaterialPageRoute(builder: (_) => LesTelephonesPage()));
                    },
                    child: Text(
                      'Ajouter',
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