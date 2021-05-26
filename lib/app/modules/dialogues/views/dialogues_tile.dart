import 'dart:ui';

import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

Widget dialoguesTile(
    String imgUrl, String userName, String msg, String date, bool seen) {
  return InkWell(
    onTap: () {
      print('ouvre le chat');
    },
      child: Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(imgUrl),
            radius: 30.0,
            // child: SvgPicture.asset(
            //   'assets/icons/groups.svg',
            //   color: Colors.white,
            //   height: 38.0,
            //   width: 38.0,
            // ),
            backgroundColor: Colors.blueGrey[50],
          ),
          title: Text(
            userName,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Row(
            children: [
              Icon(Icons.done_all),
              SizedBox(
                width: 3.0,
              ),
              Text(
                'Salut c\'est moi',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ],
          ),
          trailing: Text('14h30'),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10, left: 80,),
          child: Divider(
            thickness: 1.0,
          ),
        )
      ],
    ),
  );
}
