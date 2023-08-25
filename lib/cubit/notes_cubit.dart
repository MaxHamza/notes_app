import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

import '../constants/color.dart';
import '../models/note_view_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

 void fetchNote(){
   try{
     var noteBox=Hive.box<NoteModel>(kNotesBox);
     emit(NotesSuccessState(noteBox.values.toList()));
   }
   catch(e){
     emit(NotesFailureState(errMessage:e.toString()));
   }
 }
}
