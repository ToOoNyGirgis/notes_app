import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';
import 'package:sizer/sizer.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 5.h,
            ),
            const CustomTextField(hint: 'Title'),
            SizedBox(
              height: 2.h,
            ),
            const CustomTextField(
              hint: 'Description',
              maxLines: 7,
            ),
            SizedBox(
              height: 2.h,
            ),
            CustomButton(),
            SizedBox(
              height: 2.h,
            ),
          ],
        ),
      ),
    );
  }
}
