import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/views/widgets/custom_appbar.dart';
import 'package:notes_app/views/widgets/note_list_view.dart';
import 'package:sizer/sizer.dart';

class CustomNotesBody extends StatefulWidget {
  const CustomNotesBody({Key? key}) : super(key: key);

  @override
  State<CustomNotesBody> createState() => _CustomNotesBodyState();
}

class _CustomNotesBodyState extends State<CustomNotesBody> {
  @override
  void initState() {
BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }
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

