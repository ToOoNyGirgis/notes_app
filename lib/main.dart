import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(NotesApp());
}

class NotesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Sizer',
          theme: ThemeData(
            brightness: Brightness.dark,
          ),
          home: Scaffold() ,
        );
      },
    );
  }
}