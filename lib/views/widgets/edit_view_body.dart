import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_appbar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';
import 'package:sizer/sizer.dart';

class EditViewBody extends StatelessWidget {
  const EditViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal:5.w),
      child: Column(
        children: [
          SizedBox(height: 5.h,),
          const CustomAppBar(title: 'Edit Note',icon: Icons.check),
          SizedBox(height: 2.h,),
          const CustomTextField(hint: 'Title'),
          SizedBox(height: 2.h,),
          const CustomTextField(hint: 'Content',maxLines: 7,),
        ],
      ),
    );
  }
}
