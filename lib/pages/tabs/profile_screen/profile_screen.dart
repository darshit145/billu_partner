import 'package:billu_partners/pages/other/custom_widget/custom_color_function.dart';
import 'package:billu_partners/pages/other/custom_widget/custom_widget_material_button.dart';
import 'package:flutter/material.dart';
import 'package:billu_partners/auth/basic_namemail_info_screen.dart';
import 'package:billu_partners/pages/tabs/profile_transaction_screen.dart';
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        // backgroundColor: Colors.black,
        toolbarHeight: 55,
        automaticallyImplyLeading: false,
        actions: [
          Padding(padding: EdgeInsets.only(right: 20),
            child: CircleAvatar(
              backgroundColor: Colors.black,
              radius: 18,
              child: CircleAvatar(
                radius: 17,
                backgroundColor: Colors.white,
                child: Icon(Icons.notifications,size: 25,),
              ),
            ),
          )
        ],
      ),
      body: RefreshIndicator(
        onRefresh: ()async {

        },
        child: Padding(
          padding: EdgeInsets.only(left: 10,right: 10,bottom: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 195,
                  child: Stack(
                    children: [
                      Card(color: Colors.white,
                        child: Container(height: 145,),
                      ),
                      Positioned(
                        top: 5,
                        left: 15,
                        child: customMaterialButtonWidget2(
                          height: 27,
                          width: 60,
                          content:Text("Add Cover",style: TextStyle(color: Colors.white),) , onTap: () {
                            showModalBottomSheet(

                              context: context, builder: (context) {
                              return Container();
                            },);

                        },),
                      ),
                      Positioned(
                        top: 105,
                        left: 50,
                        right: 50,
                        child: CircleAvatar(
                          radius: 45,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            backgroundColor: Color(customColor("d5d5d5")),
                            radius: 37,
                            child: Column(
                              children: [
                                SizedBox(height: 12,),
                                Icon(Icons.camera_alt),
                                SizedBox(height: 5,),
                                Text("Add Logo",style: TextStyle(fontSize: 11,fontWeight: FontWeight.w500),)
                              ],
                            ),

                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Text("${globalListForDetailofForm[0]}",style: TextStyle(fontWeight: FontWeight.w600),),
                Text("@(0 Reviews)",style: TextStyle(fontSize: 12),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("${globalListForDetailofForm[2]}"),
                    SizedBox(width: 4,),
                    Text("Verify Now",style: TextStyle(fontWeight: FontWeight.w600,decoration: TextDecoration.underline),)
                  ],
                ),
                SizedBox(height: 25,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Account Information",style: TextStyle(fontWeight: FontWeight.w700),),
                    SizedBox(width: double.infinity,),
                    Text("Find all Your profile related information",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
                    SizedBox(height: 10,),
                    Container(
                      width: double.infinity,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Color(customColor("6363d3")),
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: ListTile(
                        trailing: Container(width:10 ,child: Icon(Icons.keyboard_arrow_right,size: 30,color: Colors.white,)),

                        leading: Icon(Icons.verified,color: Colors.white,size: 29,),
                        title: Text("Business Verification",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w600),),
                        subtitle: Text("Complete  your KYC to start earn\nmoney.",style: TextStyle(color: Colors.white,fontSize: 12),),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      width: double.infinity,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Color(customColor("dbdbf3")),
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: ListTile(
                        trailing: Container(width:10 ,child: Icon(Icons.keyboard_arrow_right,size: 30,)),
                        leading: Icon(Icons.account_balance,color: Colors.black,size: 29,),
                        title: Text("Bank Details",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w600),),
                        subtitle: Text("The account is used to facilitate all\nyour withdrawals.",style: TextStyle(color: Colors.black,fontSize: 12),),
                      ),

                    ),
                    SizedBox(height: 10,),
                    ListTile(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return ProfileTranctionScreen();
                        },));
                      },
                      tileColor: Color(customColor("f5f9fc")),
                      leading: CircleAvatar(
                        radius: 19,
                        backgroundColor: Colors.black,
                        child: CircleAvatar(
                          radius: 18,
                          backgroundColor: Colors.white,
                          child: Icon(Icons.currency_rupee_sharp)
                          //Text("₹",style: TextStyle(fontSize: 25),),
                        ),
                      ),
                      trailing: Icon(Icons.keyboard_arrow_right),
                      title: Text("Payment History",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),
                    ),
                    SizedBox(height: 10,),
                    ListTile(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return ProfileTranctionScreen();
                        },));
                      },
                      tileColor: Color(customColor("f5f9fc")),
                      leading: Icon(Icons.notes_sharp),
                      trailing: Icon(Icons.keyboard_arrow_right),
                      title: Text("Performance Report",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),
                    ),
                    SizedBox(height: 30,),
                    Text("Business Settings",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),
                    Text("Get the best out of your Billu profile",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),),
                    SizedBox(height: 5,),
                    customListTile(onTap: (){},iconWidget: Icon(Icons.bar_chart_sharp),titleText: "Business name & Info"),
                    customListTile(onTap: (){},iconWidget: Icon(Icons.location_on),titleText: "Location"),
                    customListTile(onTap: (){},iconWidget: Icon(Icons.clean_hands),titleText: "Facilities"),
                    customListTile(onTap: (){},iconWidget: Icon(Icons.notifications_none),titleText: "Personal Settings"),
                    customListTile(onTap: (){},iconWidget: Icon(Icons.record_voice_over_sharp),titleText: "Refer & Earn"),
                    customListTile(onTap: (){},iconWidget: CircleAvatar(backgroundColor: Colors.black,radius: 16,child: CircleAvatar(radius: 15,backgroundColor: Colors.white,child:Text("B",style: TextStyle(fontSize: 15),) ,),),titleText: "Billu Cash Points(BCP)"),
                    customListTile(onTap: (){},iconWidget: Icon(Icons.settings_suggest_outlined),titleText: "Services Setup"),
                    customListTile(onTap: (){},iconWidget: Icon(Icons.hotel),titleText: "Working\nHours/Holidays"),
                    customListTile(onTap: (){},iconWidget: Icon(Icons.card_travel),titleText: "Portfolio"),
                    customListTile(onTap: (){},iconWidget: Icon(Icons.slow_motion_video_sharp),titleText: "Training Videos"),
                    customListTile(onTap: (){},iconWidget: Icon(Icons.list_alt_sharp),titleText: "Customer List"),
                    SizedBox(height: 40,),
                    Text("Others",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
                    SizedBox(height: 10,),
                    customListTile(onTap: (){},iconWidget: Icon(Icons.shopping_cart),titleText: "Ecommerce Orders"),
                    customListTile(onTap: (){},iconWidget: Icon(Icons.co_present_rounded),titleText: "Ecommerce Orders"),
                    SizedBox(height: 40,),
                    Text("How Can We Help",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),
                    SizedBox(height: 10,),
                    customListTile(onTap: (){}, iconWidget: Icon(Icons.headset_mic_sharp), titleText: "Help & Support"),
                    customListTile(onTap: (){}, iconWidget: Icon(Icons.person_3), titleText: "Follow us on Social Media"),
                    customListTile(onTap: (){}, iconWidget: Icon(Icons.star_rate_rounded), titleText: "Rate Us"),
                    customListTile(onTap: (){}, iconWidget: Icon(Icons.currency_bitcoin_sharp), titleText: "About Bilu"),
                    SizedBox(height: 30,),
                    customMaterialButtonWidget2(
                      height: 40,
                        width: double.infinity,
                        buttonColor: Color(customColor("e3e9ff")),

                        content: Text("Logout",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),), onTap: (){})


                  ],
                )


              ],
            ),
          ),
        ),
      ),

    );
  }
  Widget customListTile({required onTap,required iconWidget,required String titleText}){
    return   Column(
      children: [

        ListTile(
          shape: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(6))
          ),

          onTap: onTap,
          tileColor: Color(customColor("f5f9fc")),
          leading: iconWidget,
          trailing: Icon(Icons.keyboard_arrow_right),
          title: Text("$titleText",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),
        ),
        SizedBox(height: 10,)
      ],
    );
  }
}
