part of 'notes_cubit.dart';

@immutable
abstract class NotesState {}

class NotesInitial extends NotesState {}
class NotesSuccessState extends NotesState {
 final List<NoteModel>notes;
  NotesSuccessState(this.notes);
}
class NotesFailureState extends NotesState {
  final String errMessage;
  NotesFailureState({required this.errMessage});
}
