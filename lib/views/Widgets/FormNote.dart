import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled4/models/note_view_model.dart';
import 'CustomButtom.dart';
import 'customTextField.dart';
import 'package:untitled4/cubit/add_note_cubit.dart';
class FormWidget extends StatefulWidget {
  const FormWidget({Key? key,}) : super(key: key);

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  GlobalKey<FormState>formKey=GlobalKey();
  String ?title ;
 String ?subtitle;
  AutovalidateMode autoValidateMode=AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autoValidateMode,
      key: formKey,
      child: Column(
        children:[
          CustomTextField(hintText:'title',onSaved:(value){
            title=value;
          } ,),
          const SizedBox(height: 16,),
          CustomTextField(hintText: 'content',maxLines: 5,onSaved:(value){
            subtitle=value;
          },),
          const SizedBox(height: 16,),
          BlocBuilder<AddNoteCubit, AddNoteState>(
        builder: (context, state) {
          return CustomButton(
              isLoading:state is AddNoteLoading?true:false,
              onTap:(){
                    if(formKey.currentState!.validate()){
                      formKey.currentState!.save();
                      NoteModel note=NoteModel(title: title!, subtitle: subtitle!, date:DateTime.now().toString(), color:Colors.black.value);
                      BlocProvider.of<AddNoteCubit>(context).addNote(note);

                    }
                    else{
                      autoValidateMode=AutovalidateMode.always;
                      setState(() {});
                    }
                  });
  },
)
        ],
      ),
    );
  }
}
