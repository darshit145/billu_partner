import 'package:flutter/material.dart';
import 'package:billu_partners/pages/other/custom_widget/custom_color_function.dart';
import 'package:billu_partners/home_page_screen/custom_stack_widget/custom_stack_widget.dart';
class MarcatingScreen extends StatefulWidget {
  const MarcatingScreen({super.key});

  @override
  State<MarcatingScreen> createState() => _MarcatingScreenState();
}

class _MarcatingScreenState extends State<MarcatingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0.0001,
        automaticallyImplyLeading: false,
        title: Text("Marcketing",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
                backgroundColor: Color(customColor("ea0a8e")),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.headset_mic_sharp,
                      color: Colors.white,
                    ))),
          ),
        ],

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(9),
          child: Column(
            children: [
              SizedBox(height: 20,),
              customStackWidget(leadData: "Promotion",contentData: "Promote your salon services with\ncustom Offers & discounts"),
              SizedBox(height: 20,),
              Divider(height: 0.9,indent: 5,endIndent: 5,),

              SizedBox(height: 20,),
              customStackWidget(leadData: "Deal Summary",contentData: "Promote your services,offers &\ndiscounts."),
              SizedBox(height: 20,),
              Divider(height: 0.9,indent: 5,endIndent: 5,),

              SizedBox(height: 20,),
              customStackWidget(leadData: "Happy Hours Summary",contentData: "Offfer discounts to help fill your calendar"),
              SizedBox(height: 20,),
              Divider(height: 0.9,indent: 5,endIndent: 5,),

              SizedBox(height: 20,),
              customStackWidget(leadData: "Message Notifications",contentData: "Create a space and relationship with\nyour existing and new clients."),
              SizedBox(height: 20,),
              Divider(height: 0.9,indent: 5,endIndent: 5,),

              SizedBox(height: 20,),
              customStackWidget(leadData: "Import & Invite Contacts",contentData: "Invite your contacts to download & book\nwith Billu Care app"),
              SizedBox(height: 20,),
              Divider(height: 0.9,indent: 5,endIndent: 5,),

              SizedBox(height: 20,),
              customStackWidget(leadData: "Social Post Share",contentData: "Social Post Shart Description"),
              SizedBox(height: 20,),
            ],
          ),

        ),
      ),
    );
  }
}
