import 'package:flutter/material.dart';

import 'Costum_Search_Icon.dart';
import 'customTextField.dart';

class EditNotes extends StatelessWidget {
  const EditNotes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:  Padding(
         padding: const EdgeInsets.only(left:24.0,right: 24.0,top:50 ,bottom: 15),
         child: Column(
             children:[
               Row(
                 children:const [
                   Text('Edit Note',style: TextStyle(
                     fontSize: 28,
                   ),),
                   Spacer(),
                   CustomIcon(icon: Icons.check,),
                 ],
               ),
               const SizedBox(height: 24,),
               CustomTextField(hintText: 'title',),
             const  SizedBox(height: 10,),
               CustomTextField(hintText: 'content',maxLines: 5,),


             ]
         )
     ),
    );
  }
}
