import 'package:flutter/material.dart';
import '../components/item_list.dart';
import '../data/items_data.dart';
import '../pages/add_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  void _addAlbum(Item album) {
    setState(() {
      albums.add(album);
    });
  }

  void _navigateToAddPage(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AddPage()),
    );

    if (result != null && result is Item) {
      _addAlbum(result);
    }
  }

  void _removingAlbum(int index) {
    setState(() {
      albums.removeAt(index);
    });
  }

  void _removeAlbum(int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Expanded(
          child: AlertDialog(
            title: Center(
              child: Text(
                'DELETE ALBUM?',
                style: TextStyle(
                  color: Color.fromRGBO(105, 89, 66, 1.0),
                  fontSize: 24.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            content: Text(
              'Do you really want to delete this album?\nThis action cannot be undone.',
              style: TextStyle(
                color: Color.fromRGBO(105, 89, 66, 1.0),
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            actions: [

              TextButton(
                onPressed: () {
                  _removingAlbum(index);
                  Navigator.of(context).pop();
                },
                child: Text(
                  'YES',
                  style: TextStyle(
                    color: Color.fromRGBO(105, 89, 66, 1.0),
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  'NO',
                  style: TextStyle(
                    color: Color.fromRGBO(105, 89, 66, 1.0),
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

            ],
            backgroundColor: Color.fromRGBO(198, 184, 162, 1.0),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.center,
          child: Text(
            "BROKEN BELLS",
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
      body: albums.isEmpty
        ? Center(
            child: Text(
              'There\'re no albums, add new one!',
              style: TextStyle(
                color: Color.fromRGBO(105, 89, 66, 1.0),
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          )
        : Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: ListView.builder(
                itemCount: albums.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [

                      ItemList(
                          album: albums[index]
                      ),

                      Padding(
                        padding: EdgeInsets.only(top: 10.0, bottom: 20.0),
                        child: SizedBox(
                          width: 100.0,
                          height: 25.0,
                          child: GestureDetector(
                            onTap: () {
                              _removeAlbum(index);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(105, 89, 66, 1.0),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Center(
                                child: Row(
                                  children: [

                                    Padding(
                                      padding: EdgeInsets.only(left: 10.0, right: 5.0),
                                      child: Icon(
                                        Icons.delete,
                                        color: Color.fromRGBO(198, 184, 162, 1.0),
                                        size: 16.0,
                                      ),
                                    ),

                                    Padding(
                                      padding: EdgeInsets.only(left: 5.0, right: 10.0),
                                      child: Text(
                                        'DELETE',
                                        style: TextStyle(
                                          color: Color.fromRGBO(198, 184, 162, 1.0),
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                    ],
                  );
                }
              ),
            ),
          ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _navigateToAddPage(context);
        },
        foregroundColor: Color.fromRGBO(198, 184, 162, 1.0),
        backgroundColor: Color.fromRGBO(105, 89, 66, 1.0),
        child: Icon(Icons.add),
      ),

    );
  }
}
