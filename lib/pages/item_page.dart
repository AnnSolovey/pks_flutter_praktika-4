import 'package:flutter/material.dart';
import '../data/items_data.dart';
import '../components/item_card.dart';

class ItemPage extends StatelessWidget {
  final Item album;
  const ItemPage({super.key, required this.album});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.center,
          child: Text(
            album.name,
            style: TextStyle(
              color: Color.fromRGBO(105, 89, 66, 1.0),
              fontSize: 32.0,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        backgroundColor: Color.fromRGBO(198, 184, 162, 1.0),
        scrolledUnderElevation: 0.0,
      ),
      backgroundColor: Color.fromRGBO(198, 184, 162, 1.0),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        children: <Widget>[
          ItemCard(album: album),
        ],
      ),
    );
  }
}