import 'package:flutter/material.dart';
import 'package:miniprojetflutter/homepage.dart';







class LesCartesUtilisateur extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Les cartes éléctroniques',
      home: LesCartesUtilisateursPage(),
    );
  }
}

class LesCartesUtilisateursPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchSection(),
            CardsSection(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBarSection(),
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => new Size.fromHeight(50);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.grey[800],
          size: 20,
        ),
        onPressed:  () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => HomePage()));
        },
      ),
      title: Text(
        'Explorer',

      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.favorite_outline_rounded,
            color: Colors.grey[800],
            size: 20,
          ),
          onPressed: null,
        ),
        IconButton(
          icon: Icon(
            Icons.place,
            color: Colors.grey[800],
            size: 20,
          ),
          onPressed: null,
        ),
      ],
      centerTitle: true,
      backgroundColor: Colors.white,
    );
  }
}

class SearchSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: EdgeInsets.fromLTRB(10, 25, 10, 10),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 4,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Tunisie',
                      contentPadding: EdgeInsets.all(10),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 4,
                      offset: Offset(0, 4),
                    ),
                  ],
                  borderRadius: BorderRadius.all(
                    Radius.circular(25),
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {

                  },
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 26,
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(10),
                    shape: CircleBorder(),
                    shadowColor: Colors.white,
                    primary: Colors.blueAccent,
                  ),
                ),
              )
            ],
          ),

        ],
      ),
    );
  }
}

class CardsSection extends StatelessWidget {
  final List CardsList = [
    {
      'title': 'Carte Reseau',
      'place': 'tunisianet',
      'quantité': 2,
      'review': 36,
      'picture': 'assets/images/img_1.png',
      'price': '35',
    },
    {
      'title': 'Carte mére',
      'place': 'myteck',
      'quantité': 3,
      'review': 13,
      'picture': 'assets/images/img_2.png',
      'price': '200',
    },
    {
      'title': 'Carte Arduino',
      'place': 'myteck',
      'quantité': 6,
      'review': 88,
      'picture': 'assets/images/img_3.png',
      'price': '20',
    },
    {
      'title': 'Circuit electronique',
      'place': 'tunisianet',
      'quantité': 11,
      'review': 34,
      'picture': 'assets/images/img_4.png',
      'price': '100',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      color: Colors.white,
      child: Column(
        children: [
          Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '550 cartes trouvé',

                ),
                Row(
                  children: [
                    Text(
                      'Filtrer',

                    ),
                    IconButton(
                      icon: Icon(
                        Icons.filter_list_outlined,
                        color: Colors.blueAccent,
                        size: 25,
                      ),
                      onPressed: null,
                    ),
                  ],
                )
              ],
            ),
          ),
          Column(
            children: CardsList.map((carte) {
              return Cards(carte);
            }).toList(),
          ),
        ],
      ),
    );
  }
}

class Cards extends StatelessWidget {
  final Map CardsData;
  Cards(this.CardsData);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 230,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(18),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            spreadRadius: 4,
            blurRadius: 6,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            height: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(18),
                topRight: Radius.circular(18),
              ),
              image: DecorationImage(
                image: AssetImage(
                  CardsData['picture'],
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 5,
                  right: -15,
                  child: MaterialButton(
                    color: Colors.white,
                    shape: CircleBorder(),
                    onPressed: () {},
                    child: Icon(
                      Icons.favorite_outline_rounded,
                      color:Colors.blueAccent,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  CardsData['title'],

                ),
                Text(
                  CardsData['price']+'\dt',

                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  CardsData['place'],

                ),
                Row(
                  children: [
                    Icon(
                      Icons.developer_board_rounded,
                      color: Colors.blueAccent,
                      size: 14.0,
                    ),
                    Text(
                      CardsData['quantité'].toString() + ' cartes en stock',

                    ),
                  ],
                ),

              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 3, 10, 0),
            child: Row(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.star_rate,
                      color: Colors.blueAccent,
                      size: 14.0,
                    ),
                    Icon(
                      Icons.star_rate,
                      color: Colors.blueAccent,
                      size: 14.0,
                    ),
                    Icon(
                      Icons.star_rate,
                      color: Colors.blueAccent,
                      size: 14.0,
                    ),
                    Icon(
                      Icons.star_rate,
                      color: Colors.blueAccent,
                      size: 14.0,
                    ),
                    Icon(
                      Icons.star_border,
                      color: Colors.blueAccent,
                      size: 14.0,
                    ),
                  ],
                ),
                SizedBox(width: 20),
                Text(
                  CardsData['review'].toString() + ' reviews',

                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BottomNavBarSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.grey[600],
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
            color: Colors.blueAccent,
          ),
          label: 'Explore',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite_outline_rounded,
            color: Colors.blueAccent,
          ),
          label: 'Tips',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            color: Colors.blueAccent,
          ),

          label: 'Profile',
        ),
      ],
    );
  }
}
