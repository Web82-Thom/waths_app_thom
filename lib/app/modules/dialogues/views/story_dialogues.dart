import 'package:flutter/material.dart';

Widget storyButton(String imgUrl, String userName) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(imgUrl),
          radius: 20.0,
        ),
        SizedBox(height: 20.0,),
        Text(
          userName, 
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ],
    ),
  );
}