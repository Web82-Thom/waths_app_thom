import 'package:flutter/material.dart';

class CustomAttach extends StatelessWidget {
  CustomAttach(this.icon, this.color, this.text);
  final IconData icon;
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
          child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: color,
            child: Icon(
              icon, 
              size: 29,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 5,),
          Text(
            text, 
            style: TextStyle(
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}