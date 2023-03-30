
import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_note_item.dart';
import 'package:sizer/sizer.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding:  EdgeInsets.symmetric(vertical: 1.h),
          child: CustomNoteItem(),
        );
      },
    );
  }
}