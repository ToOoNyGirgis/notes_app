import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';
import 'package:sizer/sizer.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({Key? key, required this.note}) : super(key: key);

  @override
  final NoteModel note;
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const EditNoteView(),
          ),
        );
      },
      child: Container(
        padding:
            EdgeInsetsDirectional.symmetric(horizontal: 5.w, vertical: 5.w),
        decoration: BoxDecoration(
          color:  Color(note.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                note.title,
                style: TextStyle(fontSize: 20.sp, color: Colors.black),
              ),
              subtitle: Padding(
                padding: EdgeInsets.symmetric(vertical: 2.h),
                child: Text(
                  note.subTitle,
                  style: TextStyle(
                      fontSize: 12.sp, color: Colors.black.withOpacity(.5)),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.delete_rounded,
                  size: 20.sp,
                  color: Colors.black,
                ),
              ),
              contentPadding: EdgeInsetsDirectional.zero,
            ),
            Text(
              note.date,
              style: TextStyle(
                fontSize: 12.sp,
                color: Colors.black.withOpacity(.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
