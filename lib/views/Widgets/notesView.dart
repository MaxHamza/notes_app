import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled4/views/Widgets/CustomBottomSheet.dart';
import '../../cubit/notes_cubit.dart';
import 'Costum_body.dart';


class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
          floatingActionButton: FloatingActionButton(onPressed: () {
            showModalBottomSheet(context: context,
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                builder: (context) {
                  return const CustomBottomSheet();
                });
          }, child: const Icon(Icons.add)),
          body: const CustomBody()
      ),
    );
  }
}
