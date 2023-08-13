import 'package:flutter/material.dart';

import 'Widgets/Costum_Body_Bar.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed:(){},child:const Icon(Icons.add)),
   body:const CustomBody()
     );
  }
}
