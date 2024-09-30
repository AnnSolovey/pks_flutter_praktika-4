import 'package:flutter/material.dart';
import '../pages/home_page.dart';
import '../data/items_data.dart';

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  _AddPageState createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  final TextEditingController _imgUrlController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _costController = TextEditingController();
  final TextEditingController _durationMinController = TextEditingController();
  final TextEditingController _durationSecController = TextEditingController();
  final TextEditingController _releaseDateController = TextEditingController();
  final TextEditingController _trackListController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.center,
          child: Text(
            "ADD NEW ALBUM",
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
        children: [

          Column(
            children: [

              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: TextField(
                  controller: _imgUrlController,
                  decoration: InputDecoration(
                    hintText: "Image URL",
                    hintStyle: TextStyle(
                      color: Color.fromRGBO(105, 89, 66, 0.8),
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: TextField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    hintText: "Name",
                    hintStyle: TextStyle(
                      color: Color.fromRGBO(105, 89, 66, 0.8),
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: TextField(
                  controller: _costController,
                  decoration: InputDecoration(
                    hintText: "Cost (\$)",
                    hintStyle: TextStyle(
                      color: Color.fromRGBO(105, 89, 66, 0.8),
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: TextField(
                  controller: _durationMinController,
                  decoration: InputDecoration(
                    hintText: "Duration (mins (\'))",
                    hintStyle: TextStyle(
                      color: Color.fromRGBO(105, 89, 66, 0.8),
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: TextField(
                  controller: _durationSecController,
                  decoration: InputDecoration(
                    hintText: "Duration (secs (\"))",
                    hintStyle: TextStyle(
                      color: Color.fromRGBO(105, 89, 66, 0.8),
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: TextField(
                  controller: _releaseDateController,
                  decoration: InputDecoration(
                    hintText: "Release date (e.g. January 1, 2024)",
                    hintStyle: TextStyle(
                      color: Color.fromRGBO(105, 89, 66, 0.8),
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: TextField(
                  controller: _trackListController,
                  keyboardType: TextInputType.multiline,
                  minLines: 1,
                  maxLines: 20,
                  decoration: InputDecoration(
                    hintText: "Track list (one track name in one line)",
                    hintStyle: TextStyle(
                      color: Color.fromRGBO(105, 89, 66, 0.8),
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 25.0),
                child: ElevatedButton(
                  onPressed: () {
                    if (
                      _imgUrlController.text.isNotEmpty &&
                      _nameController.text.isNotEmpty &&
                      _costController.text.isNotEmpty &&
                      _durationMinController.text.isNotEmpty &&
                      _durationSecController.text.isNotEmpty &&
                      _releaseDateController.text.isNotEmpty &&
                      _trackListController.text.isNotEmpty
                    ) {
                      final newAlbum = Item(
                        _imgUrlController.text,
                        _nameController.text,
                        _costController.text,
                        _durationMinController.text,
                        _durationSecController.text,
                        _releaseDateController.text,
                        _trackListController.text
                      );
                      Navigator.pop(context, newAlbum);
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Color.fromRGBO(105, 89, 66, 1.0),
                    textStyle: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w800,
                    ),
                    fixedSize: Size(250.0, 50.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  child: Text("SAVE NEW ALBUM"),
                ),
              ),

            ],
          ),

        ],
      ),
    );
  }
}
