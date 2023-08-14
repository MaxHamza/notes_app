import 'package:flutter/material.dart';
import 'package:untitled4/views/Widgets/CustomBottomSheet.dart';
import 'Costum_body.dart';


class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed:(){
        showModalBottomSheet(context: context, 
           backgroundColor: Colors.transparent,
            builder:(context){
          return const CustomBottomSheet();
        });
      },child:const Icon(Icons.add)),
   body:const CustomBody()
     );
  }
}
