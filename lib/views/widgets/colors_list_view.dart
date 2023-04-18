
import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.red,
      radius: 24,
    );
  }
}

class ColorsListView extends StatelessWidget {
  const ColorsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24*2,
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const  ColorItem();
        },
      ),
    );
  }
}
