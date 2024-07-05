import 'package:billu_partners/auth/category_genderselection_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class MobileNoInputScreen extends StatefulWidget {
  const MobileNoInputScreen({super.key});

  @override
  State<MobileNoInputScreen> createState() => _MobileNoInputScreenState();
}

class _MobileNoInputScreenState extends State<MobileNoInputScreen> {
  String resendButtonValue="";


  bool continueButton=false;
  String mobileNo="";
  final GlobalKey<FormState> mobileNoKey=GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text("Mobile Number",style: TextStyle(fontSize: 15),),
        actions: [
         Padding(
           padding:  EdgeInsets.only(right: 10.0),
           child: CircleAvatar(
             backgroundColor: Colors.pink,
             child: IconButton(onPressed: () {

             }, icon: Icon(Icons.headset_mic_sharp,color: Colors.white,))
           ),
         ),

        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: LinearProgressIndicator(minHeight: 1,value: 0.09),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 3,
              child: Column(
                children: [
                  Padding(
                    padding:EdgeInsets.only(top: 15,right: 110),
                    child: Text("Let's make it easier for you",style: TextStyle(fontWeight: FontWeight.w500),),
                  ),
                  Padding(
                    padding:EdgeInsets.all(19),
                    child: Container(
                      height: 75,

                      child: Form(
                        key: mobileNoKey,
                        child: TextFormField(
                          maxLength: 10,
                          textAlign: TextAlign.justify,
                          style: TextStyle(height: 1),


                          onChanged: (value) {
                            mobileNo=value;
                          },
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if(value.toString().length==10){
                              continueButton=true;
                            }else if(value!.isEmpty){
                              continueButton=false;
                              setState(() {
                                final msg=SnackBar(
                                    content:Text("Please Enter Mobile No"),
                                  duration: Duration(seconds: 1),
                                );
                                ScaffoldMessenger.of(context).showSnackBar(msg);
                              });

                            }else{
                              continueButton=false;
                              setState(() {
                                final msg=SnackBar(content: Text("Mobile number must be at 10 digit long."));
                                ScaffoldMessenger.of(context).showSnackBar(msg);
                              });

                            }
                          },

                          decoration: InputDecoration(

                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black54,width: 1),

                                  borderRadius: BorderRadius.circular(8)
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8)
                              ),


                              label: Text("Enter Moblie Number",style: TextStyle(color: Colors.black),)
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              )
          ),
          const Text("By continuing,you agree to our                  ",style: TextStyle(fontSize: 15),),
          const Text("Term of Service Privacy Policy & \nContent Policy",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 18,decoration: TextDecoration.underline),),
          Padding(
            padding: const EdgeInsets.only(bottom: 10,left: 18,right: 18),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10)
              ),
              child: MaterialButton(onPressed: () {
                if(mobileNoKey.currentState!.validate()){
                  if(continueButton){
                    setState(() {
                      displayModalBottomSheet();


                    });

                  }

                }

              },child: Text("Continue",style: TextStyle(color: Colors.white),
                ),
                color: Colors.black,shape: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),

              ),
            ),
          )
        ],
      ),

    );
  }
  displayModalBottomSheet(){
    bool countenerHeight=false;

    return showModalBottomSheet(

      shape:  OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(1))
      ),
      context: context,
      builder: (context) {
        // setState(() {});
        return Container(
          height: countenerHeight?450:396,

          child: Column(
            children: [
              SizedBox(
                height: 1,
              ),
              Row(
                children: [
                  Padding(
                    padding:  EdgeInsets.only(left: 137,right: 100),
                    child: Container(
                      height: 3,
                      width: 80,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade400,
                          borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 25,
                    child: CircleAvatar(
                      backgroundColor: Colors.black54,
                      radius: 15,
                      child: Center(
                        child: IconButton(
                          icon: Icon(Icons.close_rounded,color: Colors.white,size: 15,),
                          onPressed: () {
                            Navigator.pop(context);

                          },
                        ),
                      ),
                    ),
                  )


                ],
              ),
              SizedBox(
                height: 5,
              ),
              Expanded(
                flex: 8,
                child: Column(
                  children: [
                    const Center(
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.pink,
                        child: Icon(Icons.check,size: 60,color: Colors.white,),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Center(
                      child: Text("Enter OTP",style: TextStyle(),),
                    ),
                    SizedBox(height: 10,),
                    Center(
                      child: Text('Enter 4 digit code'),
                    ),
                    Center(
                      child: Text("We Sent to $mobileNo"),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          countenerHeight=true;

                        });
                      },
                      child: Padding(padding: EdgeInsets.all(20),
                        child: Container(
                          height:45,
                          width:280,
                      
                          child: TextField(
                      
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black54,width: 1),
                      
                                  borderRadius: BorderRadius.circular(8)
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8)
                              ),
                      
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    RichText(
                        text:TextSpan(
                          recognizer: TapGestureRecognizer()..onTap=(){
                            print("ok");
                            setState(() {
                              resendButtonValue=" local";

                            });

                        },
                          text: "Resend code",
                          style: TextStyle(color: Colors.black),
                          children: [
                            TextSpan(
                              text: " $resendButtonValue"
                            )

                          ]

                        )
                    ),

                    SizedBox(height: 10,),
                    Center(
                      child: Container(
                        width:310,
                        child: MaterialButton(
                          height: 40,
                          shape: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(9)
                          ),
                          color:Colors.black,
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return GenderSelectionScreen();
                            },));

                          },child: Text("Verify",style: TextStyle(color: Colors.white),),
                        ),
                      ),
                    )


                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}

