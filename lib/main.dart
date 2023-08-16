import 'package:flutter/material.dart';
import 'package:untitled4/constants/color.dart';
import 'package:untitled4/views/Widgets/Costum_body.dart';
import 'package:untitled4/views/Widgets/edit_notes.dart';
import 'package:untitled4/views/Widgets/notesView.dart';


void main() {
  runApp(const myApp(
  ));
}
class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
        primaryColor: kPrimaryColor,
        fontFamily:'Poppins',
        brightness: Brightness.dark
      ),
      home:const NotesView(),
    );
  }
}