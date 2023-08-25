import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import '../constants/color.dart';
import '../models/note_view_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<NoteModel>?note;
   fetchNote() {
      note = Hive.box<NoteModel>(kNotesBox).values.toList();
   }
  }

