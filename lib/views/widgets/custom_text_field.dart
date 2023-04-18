import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key, required this.hint, this.maxLines = 1, this.onSaved, this.onChanged})
      : super(key: key);
  final String hint;
  final void Function(String?)? onSaved;
  final int maxLines;
  final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      onChanged: onChanged,
      validator: (value) {
        if(value?.isEmpty??true)
          {
            return 'Field is required';
          }
        return null;
      },
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: hint,
        labelText: hint,
        labelStyle:const TextStyle(color: Colors.white),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        disabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: color ?? Colors.white));
  }
}
