import 'package:flutter/material.dart';
import '../pages/home_page.dart';
import '../pages/item_page.dart';
import '../data/items_data.dart';

class ItemList extends StatelessWidget {
  final Item album;
  const ItemList({super.key, required this.album});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [

          Container(
            width: 300.0,
            height: 300.0,
            decoration: BoxDecoration(
              boxShadow: [BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.25),
                blurRadius: 6.0,
                spreadRadius: 2.0,
              ),],
            ),
            child: Image.network(album.img),
          ),

          Container(
            width: 300.0,
            height: 80.0,
            color: Color.fromRGBO(206, 69, 114, 0.75),
            child: TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ItemPage(album: album)));
              },
              child: Center(
                child: Column(
                  children: [

                    Padding(
                      padding: EdgeInsets.only(top: 4.0),
                      child: Text(
                        album.name,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),

                    Text(
                      "\$${album.cost}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w800,
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}