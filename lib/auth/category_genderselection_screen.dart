import 'dart:io';

import 'package:billu_partners/auth/basic_namemail_info_screen.dart';
import 'package:flutter/material.dart';
List detailsForRadio=[false,false,false];

class GenderSelectionScreen extends StatefulWidget {
  const GenderSelectionScreen({super.key});

  @override
  State<GenderSelectionScreen> createState() => _GenderSelectionScreenState();
}

class _GenderSelectionScreenState extends State<GenderSelectionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       automaticallyImplyLeading: false,
       title: Text("Catogory",style: TextStyle(fontSize: 17),),
       actions: [
         IconButton(onPressed: () {
           exit(0);

         }, icon: Icon(Icons.exit_to_app_sharp))
       ],
       bottom: PreferredSize(
         preferredSize: Size.fromHeight(1),
         child: LinearProgressIndicator(
           minHeight: 1,
           value: 0.109,
           color: Colors.greenAccent,
         ),
       ),
     ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Text("Knock knock,who's there?",style: TextStyle(fontSize: 14),),
            Divider(),
            ListTile(
              onTap: () {
                setState(() {
                  detailsForRadio=[!detailsForRadio[0],false,false];
                  if(detailsForRadio[0]){
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return BasicInformationScreen();
                    },));
                  }

                });
              },
              title: Text("Unisex Salon",style: TextStyle(fontSize: 13),),
              leading: CircleAvatar(
                radius: 17,
                backgroundColor: Colors.black,
                child: CircleAvatar(
                  radius: 16,
                  backgroundColor: detailsForRadio[0]?Colors.black:Colors.white,
                  child: detailsForRadio[0]?Icon(Icons.check,color: Colors.white,):CircleAvatar(backgroundColor: Colors.white,),

                ),
              ),
            ),


            Divider(),
            ListTile(
              onTap: () {
                setState(() {
                  detailsForRadio=[false,!detailsForRadio[1],false];
                  if(detailsForRadio[1]){
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return BasicInformationScreen();
                    },));
                  }
                });
              },
              title: Text("Beauty Parlor",style: TextStyle(fontSize: 13),),
              leading: CircleAvatar(
                radius: 17,
                backgroundColor: Colors.black,
                child: CircleAvatar(
                  radius: 16,
                  backgroundColor: detailsForRadio[1]?Colors.black:Colors.white,
                  child: detailsForRadio[1]?Icon(Icons.check,color: Colors.white,):CircleAvatar(backgroundColor: Colors.white,),

                ),
              ),
            ),

            Divider(),
            ListTile(
              onTap: () {
                setState(() {
                  detailsForRadio=[false,false,!detailsForRadio[2]];
                  if(detailsForRadio[2]){
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return BasicInformationScreen();
                    },));
                  }

                });
              },
              title: Text("Men's Parlour",style: TextStyle(fontSize: 13),),
              leading: CircleAvatar(
                radius: 17,
                backgroundColor: Colors.black,
                child: CircleAvatar(
                  radius: 16,
                  backgroundColor: detailsForRadio[2]?Colors.black:Colors.white,
                  child: detailsForRadio[2]?Icon(Icons.check,color: Colors.white,):CircleAvatar(backgroundColor: Colors.white,),

                ),
              ),
            ),





          ],
        ),
      ),
    );
  }
}