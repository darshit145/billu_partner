import 'package:flutter/material.dart';
import 'package:billu_partners/auth/mobileno_textinput_screen.dart';
class LanguageSelectorScreen extends StatefulWidget {
  const LanguageSelectorScreen({super.key});

  @override
  State<LanguageSelectorScreen> createState() => _LanguageSelectorScreenState();
}

class _LanguageSelectorScreenState extends State<LanguageSelectorScreen> {
  List alistForRadio=[false,false,false];
  String language="";
  late bool Urdu;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:  EdgeInsets.only(top: 46),
            child: Row(
              children: [
                SizedBox(width: 12,),
                Text("Choose A Language",style: TextStyle(fontSize: 20),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: LinearProgressIndicator(
              minHeight: 1,
              value: 0.06,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(13),
            child: Text("My prefered language is"),
          ),
          Divider(height: 1,color: Colors.grey,endIndent: 10,indent: 10),
          Padding(
              padding: const EdgeInsets.only(left: 1),
              child: ListTile(
                onTap: () {
                  alistForRadio[0]=alistForRadio=[true,false,false,];
                  setState(() {
                    print(alistForRadio[0]);
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return MobileNoInputScreen();
                    },));
                  });


                },
                title: Text("English"),
                leading: CircleAvatar(
                  radius: 17,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 16,
                    child: alistForRadio[0]?Icon(Icons.check):CircleAvatar(backgroundColor: Colors.white),

                  ),
                ),
              )
          ),
          Divider(height: 1,endIndent: 10,indent: 10),
          Padding(
              padding: const EdgeInsets.only(left: 1),
              child: ListTile(
                onTap: () {
                  alistForRadio[1]=alistForRadio=[false,true,false,];
                  setState(() {
                    print(alistForRadio[1]);
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return MobileNoInputScreen();
                    },));
                  });


                },
                title: Text("Hindi"),
                leading: CircleAvatar(
                  radius: 17,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 16,
                    child: alistForRadio[1]?Icon(Icons.check):CircleAvatar(backgroundColor: Colors.white),

                  ),
                ),
              )
          ),
          Divider(height: 1,indent: 10,endIndent: 10),
          Padding(
            padding: const EdgeInsets.only(left: 1),
            child: ListTile(
              onTap: () {
                alistForRadio[2]=alistForRadio=[false,false,true];
                setState(() {
                  print(alistForRadio[2]);
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return MobileNoInputScreen();
                  },));
                });


              },
              title: Text("Urdu"),
              leading: CircleAvatar(
                radius: 17,
                backgroundColor: Colors.black,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 16,
                  child: alistForRadio[2]?Icon(Icons.check):CircleAvatar(backgroundColor: Colors.white),

                ),
              ),
            )
          ),

        ],
      ),
    );
  }
  radioDisplay(){

  }
}
/*
* Radio(value: "Hindi", groupValue: language, onChanged: (value) {
                setState(() {
                  language=value.toString();
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return MobileNoInputScreen();
                  },));
                });
              },),*/