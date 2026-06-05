import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomExpansionList extends StatelessWidget {
  const CustomExpansionList({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
  leading: Icon(Icons.favorite),
  trailing: Icon(Icons.arrow_drop_down_sharp),
  title: Row(
    children: [
      Icon(Icons.person),
      SizedBox(width: 8),
      Text('Title'),
    ],
  ),
  children: [
    Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Text('This is some text in the body of the expansion tile'),
          SizedBox(height: 8),
          ElevatedButton(
            onPressed: () {
              // Perform some action when the button is pressed
            },
            child: Text('Button'),
          ),
        ],
      ),
    ),
  ],
);
  }
}