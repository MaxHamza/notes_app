import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:untitled4/views/Widgets/notesView.dart';
=======
>>>>>>> 5cbf59a556590853d2aa91639028712c80692ec4

void main() {
  runApp(const myApp(
  ));
}
class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
        fontFamily:'Poppins',
        brightness: Brightness.dark
      ),
      home:const NotesView(),
    );
  }
}
=======
    return MaterialApp(
      home: DashBoard(),
    );
  }
}

>>>>>>> 5cbf59a556590853d2aa91639028712c80692ec4
