import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled4/constants/color.dart';
import '../../cubit/add_note_cubit.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, this.onTap, this.isLoading=false}) : super(key: key);
  final void Function()?onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddNoteCubit, AddNoteState>(
  builder: (context, state) {
    return GestureDetector(
          onTap:onTap,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 55,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius:const BorderRadius.all(Radius.circular(8))
            ),
            child: Center(
              child:isLoading?const SizedBox(
                 height: 24,
                width: 24,
                child:  CircularProgressIndicator(
                    color: Colors.black),
              ):
              const Text('Add',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black
                ),
              ),
            ),
          ),
        );
  },
);
  }
}
