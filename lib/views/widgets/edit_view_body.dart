import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/custom_appbar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';
import 'package:sizer/sizer.dart';

class EditViewBody extends StatefulWidget {
  const EditViewBody({Key? key, required this.note}) : super(key: key);
  final NoteModel note;

  @override
  State<EditViewBody> createState() => _EditViewBodyState();
}

class _EditViewBodyState extends State<EditViewBody> {
   String? title,content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal:5.w),
      child: Column(
        children: [
          SizedBox(height: 5.h,),
           CustomAppBar(title: 'Edit Note',icon: Icons.check,onPressed: () {
            widget.note.title=title?? widget.note.title;
            widget.note.subTitle=content?? widget.note.subTitle;
            widget.note.save();
            Navigator.pop(context);
            BlocProvider.of<NotesCubit>(context).fetchAllNotes();
          },),
          SizedBox(height: 2.h,),
           CustomTextField(hint: widget.note.title,onChanged: (value) {
            title=value;
          },),
          SizedBox(height: 2.h,),
           CustomTextField(hint: widget.note.subTitle,maxLines: 7,onChanged: (value) {
            content=value;
          }),
        ],
      ),
    );
  }
}
