import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled4/cubit/notes_cubit.dart';
import 'package:untitled4/models/note_view_model.dart';
import 'customTextField.dart';
import 'edit_color_list.dart';

class EditNotes extends StatefulWidget {
  const EditNotes({Key? key, required this.note}) : super(key: key);
  final NoteModel note;

  @override
  State<EditNotes> createState() => _EditNotesState();
}

class _EditNotesState extends State<EditNotes> {
  String ?title;
  String ?subtitle;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:SingleChildScrollView(
       child: Padding(
           padding: EdgeInsets.only(left:24.0,right: 24.0,top:50 ,bottom:MediaQuery.of(context).viewInsets.bottom),
           child: Column(
               children:[
                 Row(
                   children: [
                   const  Text('Edit Note',style: TextStyle(
                       fontSize: 28,
                     ),),
                    const SizedBox(height: 6,),
                   GestureDetector(
                     onTap: (){
                       widget.note.title=title??widget.note.title;
                       widget.note.subtitle=subtitle??widget.note.subtitle;
                       widget.note.save();
                       BlocProvider.of<NotesCubit>(context).fetchNote();
                       Navigator.pop(context);
                     },
                     child: Padding(
                       padding: const EdgeInsets.all(10.0),
                       child: Container(
                         width: 46,
                         height: 46,
                         decoration:BoxDecoration(
                           color: Colors.white.withOpacity(0.05),
                           borderRadius:const BorderRadius.all(Radius.circular(16)),
                         ),
                         child:const Center(child:Icon(Icons.check,size:40,)),
                       ),
                     ),
                   ),
                   ],
                 ),
                 const SizedBox(height: 24,),
                 CustomTextField(hintText: widget.note.title,onChanged:(value){
                   title=value;
                 } ,),
               const  SizedBox(height: 10,),
                 CustomTextField(hintText: widget.note.subtitle,maxLines: 5,onChanged:(value){
                   subtitle=value;
                 } ,),
                 const SizedBox(height: 24,),
                 EditColorListItem(note:widget.note),

               ]
           )
       ),
     ),
    );
  }
}
