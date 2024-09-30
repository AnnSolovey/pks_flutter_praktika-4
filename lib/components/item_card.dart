import 'package:flutter/material.dart';
import '../data/items_data.dart';
import '../pages/item_page.dart';

class ItemCard extends StatelessWidget {
  final Item album;
  const ItemCard({super.key, required this.album});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Center(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            child: Container(
              width: 350.0,
              height: 350.0,
              decoration: BoxDecoration(
                boxShadow: [BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.25),
                  blurRadius: 6.0,
                  spreadRadius: 2.0,
                ),],
              ),
              child: Image.network(album.img),
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.only(left: 40.0, top: 8.0),
          child: Row(
            children: [
              Text(
                "Duration: ${album.durationMin}\' ${album.durationSec}\"",
                style: TextStyle(
                  color: Color.fromRGBO(105, 89, 66, 1.0),
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),

        Padding(
          padding: EdgeInsets.only(left: 40.0),
          child: Row(
            children: [
              Text(
                "Released on: ${album.releaseDate}",
                style: TextStyle(
                  color: Color.fromRGBO(105, 89, 66, 1.0),
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),

        Padding(
          padding: EdgeInsets.only(left: 40.0, top: 16.0),
          child: Row(
            children: [
              Text(
                "Track list:",
                style: TextStyle(
                  color: Color.fromRGBO(105, 89, 66, 1.0),
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),

        Padding(
          padding: EdgeInsets.only(left: 40.0, top: 5.0),
          child: Row(
            children: [
              Text(
                album.trackList,
                style: TextStyle(
                  color: Color.fromRGBO(105, 89, 66, 1.0),
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),

        Padding(
          padding: EdgeInsets.symmetric(vertical: 25.0),
          child: SizedBox(
            width: 250.0,
            height: 50.0,
            child: GestureDetector(
              onTap: () { print("кнопка нажата!"); },
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(105, 89, 66, 1.0),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: Text(
                    "BUY FOR \$${album.cost}",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),

      ],
    );
  }
}