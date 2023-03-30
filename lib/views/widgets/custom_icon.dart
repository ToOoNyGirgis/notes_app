import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5.h,
      width: 5.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white.withOpacity(0.05),
      ),
      child: Icon(Icons.search,size: 20.sp,),
    );
  }
}
