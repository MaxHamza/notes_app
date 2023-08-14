import 'package:flutter/material.dart';
import 'package:untitled4/views/Widgets/Costum_Card.dart';
import 'package:untitled4/views/Widgets/Costum_Search_Icon.dart';

import 'custom_notes_app.dart';
class CustomBody extends StatelessWidget {
  const CustomBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left:24.0,right: 24.0,top:50 ,bottom: 15),
      child: Column(
        children:[
          Row(
            children:const [
              Text('Notes',style: TextStyle(
               fontSize: 28,
             ),),
              Spacer(),
              SearchIcon(),
            ],
          ),
         const SizedBox(height: 10,),
         const CustomListView(),
        ],
      ),
    );
  }
}
