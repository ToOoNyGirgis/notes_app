import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';
import 'package:sizer/sizer.dart';
class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal:5.w ),
      child: Column(
        children: [
          SizedBox(height: 5.h,),
          CustomTextField(
          )
        ],
      ),
    );
  }
}

