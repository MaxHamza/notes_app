import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/date_symbol_data_file.dart';
import 'package:intl/intl.dart';
import 'package:untitled4/models/note_view_model.dart';
import 'CustomButtom.dart';
import 'color_note_list.dart';
import 'customTextField.dart';
import 'package:untitled4/cubit/add_note_cubit.dart';
class FormWidget extends StatefulWidget {
  const FormWidget({Key? key,}) : super(key: key);

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  void initState() {
    super.initState();
    initializeDateFormatting;
  }
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
          const SizedBox(height: 32,),
         const ColorListItem(),
          const SizedBox(height: 32,),
          BlocBuilder<AddNoteCubit, AddNoteState>(
        builder: (context, state) {
          return CustomButton(
              isLoading:state is AddNoteLoading?true:false,
              onTap:(){
                    if(formKey.currentState!.validate()){
                      formKey.currentState!.save();
                      NoteModel note=NoteModel(title: title!, subtitle: subtitle!,
                          date:DateFormat('dd-MM-yyyy').format(DateTime.now()),
                          color:Colors.white.value);
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
