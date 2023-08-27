import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled4/cubit/notes_cubit.dart';
import 'package:untitled4/cubit/notes_cubit.dart';
import 'package:untitled4/models/note_view_model.dart';
import 'package:untitled4/views/Widgets/edit_notes.dart';
import 'Costum_Card.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded( //we cannot put expanded in stack widget because it is not flexible but row and column is flexible
        child: BlocBuilder<NotesCubit, NotesState>(
          builder: (context, state) {
         List<NoteModel>note=BlocProvider.of<NotesCubit>(context).note??[];
            return ListView.builder(
              itemBuilder: (context, i) =>
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: GestureDetector(onTap: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) {
                        return  EditNotes(note:note[i],);
                      }));
                    }, child: CustomCard(note:note[i])),
                  ),
              itemCount: note.length,
              physics: const BouncingScrollPhysics().parent,

            );
          },
        ));
  }
}
