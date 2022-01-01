import 'package:flutter/material.dart';

class UtilisateurDrawer extends StatelessWidget {
  const UtilisateurDrawer({Key? key}) : super(key: key);

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
                  backgroundImage: AssetImage("assets/images/img_16.png"),
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
              Navigator.pushNamed(context, "/lescartesutilisateurs");
            },
          ),
          Divider(height: 5, color: Colors.black,),
          ListTile(
            title: Text("Les PC ", style: TextStyle(fontSize: 26),),
            leading: Icon(Icons.computer_outlined  ,color: Colors.lightBlue,),
            trailing: Icon(Icons.arrow_right,color: Colors.grey,),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.pushNamed(context, "/lespcutilisateurs");
            },
          ),
          Divider(height: 5, color: Colors.black,),
          ListTile(
            title: Text("Les téléphones ", style: TextStyle(fontSize: 26),),
            leading: Icon(Icons.aod_outlined,color: Colors.lightBlue,),
            trailing: Icon(Icons.arrow_right,color: Colors.grey,),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.pushNamed(context, "/lestelephonesutilisateurs");
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