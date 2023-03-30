import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_appbar.dart';
import 'package:notes_app/views/widgets/note_list_view.dart';
import 'package:sizer/sizer.dart';

class CustomNotesBody extends StatelessWidget {
  const CustomNotesBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: Column(
        children: [
          SizedBox(
            height: 6.h,
          ),
          const CustomAppBar(title: 'Notes', icon: Icons.search,),
          const Expanded(child: NotesListView())
        ],
      ),
    );
  }
}

