import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_icon.dart';
import 'package:sizer/sizer.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.title, required this.icon, this.onPressed}) : super(key: key);
  final String title;
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 20.sp,
          ),
        ),
        const Spacer(),
         CustomIcon(icon: icon,onPressed: onPressed),
      ],
    );
  }
}
