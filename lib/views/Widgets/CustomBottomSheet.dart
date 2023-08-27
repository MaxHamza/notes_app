import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:untitled4/cubit/add_note_cubit.dart';
import 'package:untitled4/cubit/notes_cubit.dart';
import 'package:untitled4/views/Widgets/CustomButtom.dart';
import 'package:untitled4/views/Widgets/customTextField.dart';
import 'FormNote.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color(0xff312F31),
        ),
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteFailure) {
              print('Failed: ${state.errMessage}');
            }
            if (state is AddNoteSuccess) {
              BlocProvider.of<NotesCubit>(context).fetchNote();
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return  AbsorbPointer(
              absorbing: state is AddNoteLoading?true:false,
              child: Padding(
                padding: EdgeInsets.only(top: 28, left: 28,right: 28,bottom:MediaQuery.of(context).viewInsets.bottom),
                child:const SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 10.0),
                      child: FormWidget(),
                    )
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}