import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Colors.blueAccent,
                    Colors.lightBlue,
                  ]
              )
          ),
              child: Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/Me.jpg"),
                  radius: 58,
                ),
              )
          ),
          ListTile(
            title: Text("Les Cartes éléctroniques", style: TextStyle(fontSize: 26),),
            leading: Icon(Icons.developer_board_rounded ,color: Colors.lightBlue,),
            trailing: Icon(Icons.arrow_right,color: Colors.grey,),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.pushNamed(context, "/lescartes");
            },
          ),
          Divider(height: 5, color: Colors.black,),
          ListTile(
            title: Text("Les PC ", style: TextStyle(fontSize: 26),),
            leading: Icon(Icons.computer_outlined  ,color: Colors.lightBlue,),
            trailing: Icon(Icons.arrow_right,color: Colors.grey,),
            onTap: (){
              Navigator.of(context).pop();
Navigator.pushNamed(context, "/lespc");
            },
          ),
          Divider(height: 5, color: Colors.black,),
          ListTile(
            title: Text("Les téléphones ", style: TextStyle(fontSize: 26),),
            leading: Icon(Icons.aod_outlined,color: Colors.lightBlue,),
            trailing: Icon(Icons.arrow_right,color: Colors.grey,),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.pushNamed(context, "/lestelephones");
            },
          ),
          Divider(height: 5, color: Colors.black,),
          ListTile(
            title: Text("Ajouter ", style: TextStyle(fontSize: 26),),
            leading: Icon(Icons.add_circle_outline_rounded,color: Colors.lightBlue,),
            trailing: Icon(Icons.arrow_right,color: Colors.grey,),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.pushNamed(context, "/ajouter");
            },
          ),
          Divider(height: 5, color: Colors.black,),
          ListTile(
            title: Text("Déconnexion", style: TextStyle(fontSize: 26),),
            leading: Icon(Icons.door_front_door_outlined ,color: Colors.lightBlue,),
            onTap: (){
              Navigator.pushNamed(context, "/loginpage");
            },

          )
        ],
      ),
    );
  }
}