import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled4/constants/color.dart';
import 'package:untitled4/models/note_view_model.dart';
part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
 Color color= Color(0xffFB5012);
  addNote(NoteModel note)async{
    note.color= color.value;
  emit(AddNoteLoading());
  try{
    var noteBox=Hive.box<NoteModel>(kNotesBox);
    await noteBox.add(note);
    emit(AddNoteSuccess());
  }
  catch(e){
  emit(AddNoteFailure(errMessage:e.toString()));
  }
  }


}

