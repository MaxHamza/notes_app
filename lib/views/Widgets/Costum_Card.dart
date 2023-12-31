import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled4/constants/color.dart';
import 'package:untitled4/cubit/add_note_cubit.dart';
import 'package:untitled4/cubit/notes_cubit.dart';
import '../../models/note_view_model.dart';
class CustomCard extends StatelessWidget {
   CustomCard({Key? key, required this.note}) : super(key: key);
  final NoteModel note;
  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
      color:Color(note.color),
        borderRadius:const BorderRadius.all(Radius.circular(16))
      ),
      child: Padding(
        padding: const EdgeInsets.only(top:24,bottom: 22,left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children:[
            ListTile(
              title:Text(note.title,style:const TextStyle(
                fontSize: 24,
                color: Colors.black,
                fontWeight: FontWeight.bold
              ),),
              subtitle: Padding(
                padding:const  EdgeInsets.symmetric(vertical:10.0),
                child:  Text(note.subtitle,style:const TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),),
              ),
              trailing: IconButton(onPressed: (){
                note.delete();//i can do that because i extends HiveObject;
                BlocProvider.of<NotesCubit>(context).fetchNote();
              }, icon:const Icon(Icons.delete_rounded,color: Colors.black,)),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Text(note.date,style: TextStyle(color: Colors.black.withOpacity(.54),fontSize: 12),
              ),
            ),
            const SizedBox(height: 10,),
          ],
        ),
      ),
);
  }
}
