import 'package:flutter/material.dart';
class ProfileTranctionScreen extends StatefulWidget {
  const ProfileTranctionScreen({super.key});

  @override
  State<ProfileTranctionScreen> createState() => _ProfileTranctionScreenState();
}

class _ProfileTranctionScreenState extends State<ProfileTranctionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },icon: Icon(Icons.keyboard_arrow_left,size: 40,),
        ),
        title: Text("Transaction...",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700),),
        actions: [
          Padding(padding:EdgeInsets.all(1),
            child: IconButton(
              icon: Icon(Icons.settings_outlined,size: 30,),
              onPressed: () {

              },
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
                backgroundColor: Colors.pink,
                child: IconButton(onPressed: () {

                }, icon: Icon(Icons.headset_mic_sharp,color: Colors.white,))
            ),
          ),
        ],
      ),
    );
  }
}
