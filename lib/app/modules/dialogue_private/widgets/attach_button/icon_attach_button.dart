import 'package:flutter/material.dart';
import 'package:whats_app_thom/app/modules/dialogue_private/widgets/attach_button/custumAttach.dart';

class IconAttachButton extends StatelessWidget {
  const IconAttachButton({ Key key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showModalBottomSheet(
          backgroundColor: Colors.transparent,
          context: context, 
          builder: (builder)=> Container(
            height: 350,
            width: MediaQuery.of(context).size.width,
            child: Card(
              margin: EdgeInsets.all(18),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20,),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomAttach( Icons.insert_drive_file, Colors.indigo, 'Document'),
                        SizedBox(width: 40,),
                        CustomAttach( Icons.camera_alt, Colors.pink, 'Caméra'),
                        SizedBox(width: 40,),
                        CustomAttach( Icons.insert_photo, Colors.purple, 'Gallery'),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomAttach( Icons.headset, Colors.yellow, 'Audio'),
                        SizedBox(width: 40,),
                        CustomAttach( Icons.group, Colors.orange, 'Salon'),
                        SizedBox(width: 40,),
                        CustomAttach( Icons.location_pin, Colors.green, 'Localisation'),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomAttach( Icons.person, Colors.blue, 'Contact',),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
      icon: Icon(
        Icons.attach_file,
      ),
    );
  }
}
 