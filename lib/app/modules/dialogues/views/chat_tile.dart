import 'dart:ui';

import 'package:flutter/material.dart';

Widget chatTile(String imgUrl, String userName, String msg, String date, bool seen) {
  return InkWell(
    onTap: () {
      print('ouvre le chat');
    },
      child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(imgUrl),
            radius: 28.0,
          ),
          SizedBox(width: 8.0),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                        child: Text(
                      userName,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                    Text(date),
                  ],
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    Expanded(child: Text(msg)),
                    if(seen) Icon(
                      Icons.check_circle,
                      size: 18.0,
                      color: Colors.green,
                    ),
                    if(!seen) Icon(
                      Icons.check_circle_outline,
                      size: 18.0,
                      color: Colors.grey,
                    ),
                    
                  ],
                ),
                SizedBox(height: 15.0,),
              ],
            ),
          )
        ],
      ),
    ),
  );
}
