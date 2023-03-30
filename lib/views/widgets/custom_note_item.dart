import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
      EdgeInsetsDirectional.symmetric(horizontal: 5.w, vertical: 5.w),
      decoration: BoxDecoration(
        color: Color(0xffF8D590),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              'Flutter tips',
              style: TextStyle(fontSize: 20.sp, color: Colors.black),
            ),
            subtitle: Padding(
              padding: EdgeInsets.symmetric(vertical: 2.h),
              child: Text(
                'build your career with Tony Girgis Aziz Barsom',
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
            'May 21,2022',
            style: TextStyle(
              fontSize: 12.sp,
              color: Colors.black.withOpacity(.5),
            ),
          ),
        ],
      ),
    );
  }
}
