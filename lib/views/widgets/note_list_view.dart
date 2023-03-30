
import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_note_item.dart';
import 'package:sizer/sizer.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 2.h),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return Padding(
            padding:  EdgeInsets.symmetric(vertical: 0.5.h),
            child: const CustomNoteItem(),
          );
        },
      ),
    );
  }
}