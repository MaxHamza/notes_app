import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled4/cubit/notes_cubit.dart';
import 'package:untitled4/models/note_view_model.dart';
import 'package:untitled4/views/Widgets/Costum_Card.dart';
import 'package:untitled4/views/Widgets/Costum_Search_Icon.dart';

import 'custom_notes_app.dart';
class CustomBody extends StatefulWidget {
  const CustomBody({Key? key}) : super(key: key);

  @override
  State<CustomBody> createState() => _CustomBodyState();
}

class _CustomBodyState extends State<CustomBody> {
  @override

  void initState(){
    BlocProvider.of<NotesCubit>(context).fetchNote();
    super.initState();}
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
              CustomIcon(icon: Icons.search_rounded,),
            ],
          ),
         const SizedBox(height: 10,),
         const CustomListView(),
        ],
      ),
    );
  }
}
