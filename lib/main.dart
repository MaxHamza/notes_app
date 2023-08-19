import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:untitled4/constants/color.dart';
import 'package:untitled4/models/note_view_model.dart';
import 'package:untitled4/views/Widgets/Costum_body.dart';
import 'package:untitled4/views/Widgets/edit_notes.dart';
import 'package:untitled4/views/Widgets/notesView.dart';

import 'cubit/add_note_cubit.dart';


void main()async {
  await Hive.initFlutter();

  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteViewAdapter());
  runApp(const myApp(
  ));
}
class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>AddNoteCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme:ThemeData(
          primaryColor: kPrimaryColor,
          fontFamily:'Poppins',
          brightness: Brightness.dark
        ),
        home:const NotesView(),
      ),
    );
  }

}