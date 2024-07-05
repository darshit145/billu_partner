import 'package:billu_partners/pages/other/fiture/services_page/services_setup_screen.dart';
import 'package:billu_partners/pages/other/custom_widget/custom_teftformfield_function.dart';
import 'package:scrollable_list_tab_scroller/scrollable_list_tab_scroller.dart';
import 'package:flutter/material.dart';
import 'package:billu_partners/pages/other/custom_widget/custom_widget_material_button.dart';
import 'package:billu_partners/pages/other/custom_widget/custom_color_function.dart';
import 'package:billu_partners/auth/category_genderselection_screen.dart';
import 'package:billu_partners/pages/other/fiture/services_page/service_setup_back_screen.dart';
import 'package:billu_partners/pages/other/fiture/services_page/custon_moddlebottom_sheet.dart';
List liForAmount=[];
bool byDefaultValue=true;
List maleHairCutStyleList = [
  "Shampoo/Conditioner",
  "Hair Cut",
  "Shave",
  "Normal Beard Trim",
  "Hi-Lights",
  "Low-Lights",
  "Hair Cuts & Shave",
  "Zero Cut",
  "Hair Cut + Hair Wash + Body Dry",
  "Hair Cut + Hair Wash + Body Dry + Head Massage",
  "Trimming",
  "Hair Wash",
  "Moustache Set",
  "Ironing",
  "Beard Set",
];
List femaleHairCutStyleList = [
  "Hair Cut",
  "Trimming",
  "Split End Cut",
  "Blunt Cut",
  "Girl's Hair Cut",
  "Blow Dry & Shampoo",
  "Hair Cut With Wash",
  "Child Hair Cut With Wash",
  "Advance Blow Dry",
  "Creative Hair Style",
  "Hair Cut - fringe",
  "Hair Cut One Length Trim",
];
List maleHairColorList = [
  "Root Touch Up",
  "Beard Color",
  "Highlighting (Per Strike)",
  "Gray Coverage",
  "Global Color With Ammonia (Base Shade)",
  "Global Color Without Ammonia (Base Shade)",
  "Global Fashion Shade",
  "Global Color with Moustache",
  "Global Color & Highlights",
  "Creative Hair Style",
];
List femaleHairColorList = [
  "Color Change Service",
  "Global Color-Long Hair(Natural Base Color)",
  "Global Color Streaks(Inoa)",
  "Grey Coverage",
  "Ombre",
  "Heena",
  "Crown Area Highlights",
  "Root Touch Up (Uptp 2 Inch) With Ammmonia",
  "Root Touch Up (Uptp 2 Inch) Without Ammmonia",
  "Global COlor Loreal Upto Shoulder",
  "Heena + Wash",
  "Highlighting - Medium",
  "Global Hair Color With Ammonia",
  "Balayage Upto Below Shoulder",
  "Full Head Hilighting Upto Neck-Ammonia Free",
];
List maleHairChemica = [
  "Keratine",
  "Smoothening",
  "Rebonding",
  "Smoothening Spa",
];
List femaleHairChemica = [
  "Hair Straightening",
  "Basic Spa",
  "Advance Hair Spa",
  "Any Length Hair Rebonding/Keratin",
  "Karatin - Fringe",
  "Rebounding,Smoothening,Keratin-Loreal",
  "Keratine Treatment By GK",
  "Straightening - Fringe",
  "Keratine",
  "Smoothening",
  "Rebonding",
  "Smoothening Spa",
];
List maleManiPediHygine = [
  "Nail Cut & File",
  "Paraffin Manicure",
  "Paraffin Pedicure",
  "Manicure Advance",
  "Pedicure Advance",
  "Manicure & Pedicure (Premium)",
  "Delux Manicure",
  "Delux Pedicure",
];
List femaleManiPediHygine = [
  "Manicure Advance Crystal",
  "Pedicure Advance Crystal",
  "Paraffin Pedicure",
  "Paraffin Manicure",
  "Heel Peel - Pedicure",
  "Special Manicure",
  "Special Pedicure",
  "03+- Manicure & Pedicure",
];
List maleSpaMassage = [
  "Head Massage With Wash",
  "Hand & Foot Massage",
  "Morrocan Hair Spa",
  "Dry Head Massage",
  "(Head Massage)",
  "Head & Back Massage",
  "Deep Relaxing Massage",
];
List femaleSpaMassage = [
  "Head Massage",
  "Deep Tissue Massage",
  "Aroma Therapy",
  "Head & Foot Massage",
  "Foot Reflexology",
  "Power Spa",
  "Body Massage With Olive Oil",
  "Head Massage With Almond Oil",
];
List maleHairTreatMents = [
  "Anti Dendruff Treatment",
  "Anti Hair Loss Treatment",
  "Sensitive Scalp",
  "Hair Repair Spa (L'oreal)",
  "Keratin Spa",
  "Scalp Repair",
  "Volume Spa",
  "Olaplex",
];
List femaleHairTreatMents = [
  "Hair Spa",
  "Split ends Treatment",
  "Power Dose",
  "Detox Scalp Scrub",
  "Hair CysTenine Upto Sholder",
  "Hair CysTenine Upto Waist & Below",
  "OLAPLEX Treatments",
  "Power Shot - Hair Spa",
  "OlaPlex - Hair Spa",
  "Moroccanoil Repair - Hair Spa",
  "Dendruf Treatment - Hair Spa",
];
List maleSkinCareList = [
  "D Tan - Classic",
  "D Tan - Premium",
  "Clean Up - Basic",
  "Body Polishining",
  "Eyebrows - Threading",
  "Honey Wax - Full Body",
  "D-tan Facial",
  "Facial - Classic",
  "Bleach",
  "Gold Facial",
  "Full Arms - Flavoured Wax",
  "Full Legs - Flavoured Wax",
  "Full Body - Flavoured Wax",
  "Full Face - Threading",
];
List femaleSkinCareList = [
  "Upper Lips Threading",
  "Chin Threading",
  "Forhead - Threading",
  "Eye Brows- Threading",
  "Full Face - Threading",
  "Premium Skin Tightening Facial",
  "Rich Wax,Full Arm,Full Legs,Underarms",
  "Underarms Flavored Wax",
  "Acne Treatment Facial",
  "Full  Legs - Chocolate Wax",
  "Half  Legs - Chocolate Wax",
  "Skin  Brightening Facial",
  "Cheryl's Glo Vita Facial",
  "Skin Llifting - Facial",
  "Fruit Face Bleach",
  "Full Body(With Bikini)- Chocolate Wax",
  "Full Body - Oxy Bleach",
  "Half Front/Back - Oxy Bleach",
  "Full Front/Back - Oxy Bleach",
  "Upperlips- Brazilian Wax",
  "Forhead- Brazilian Wax",
  "SideLocks- Brazilian Wax",
  "Full Face- Brazilian Wax",
  "Bikini - Chocolate Wax",
  "Full Face & Neck - Bleach",
];
List malePreGroom = [
  "Groom Package",
];
List femalePreBridal = [
  "Bridal Package",
  "Bridal Gold",
  "Package Sliver",
  "Pre-Bridal Classic",
  "Pre-Bridal Premium",
];
List maleMakeUp = [
  "Groom Make Up",
];
List femaleMakeUp = [
  "Party Makeup",
  "Engagement Makeup - HD",
  "Reception Makeup - Airbrush",
  "Bridal Makeup - Airbrush",
  "Mehndi Design",
];
List maleFemaleNailArt = [
  "Gel Nail Extension With Gel Nail Paint",
  "Gel Nail Paint",
  "Nail Art",
  "Acrylic Extension",
  "Gel Extensions",
  "Dip Powder Extension",
  "French Nail Extension",
  "Gel Natural Nail Extensions",
  "Gel infills / Acrylic",
];
Map dataForMaleFemale = {};
String indexValue="";
String amountValue='';
class ServicesSetUpScreen extends StatefulWidget {
  const ServicesSetUpScreen({super.key});

  @override
  State<ServicesSetUpScreen> createState() => _DEMOState();
}

List genderForThisStage = [true, false];

class _DEMOState extends State<ServicesSetUpScreen>
    with SingleTickerProviderStateMixin {
  displayer() {
    setState(() {
      dataForMaleFemale = genderForThisStage[1] ? dataForMale : dataForFemale;
    });
  }

  void initState() {
    super.initState();
    print("$detailsForRadio>>>>>>>>>>>>>>>===================>>>");
    if (detailsForRadio[1]) {
      dataForMaleFemale = dataForFemale;
    } else {
      dataForMaleFemale = dataForMale;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.keyboard_arrow_left_sharp,
              size: 33,
            ),
          ),
          title: const Text(
            "Service Setup",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
          ),
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
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(1),
            child: LinearProgressIndicator(
              minHeight: 1.5,
              value: 0.6,
              color: Colors.greenAccent,
            ),
          ),
        ),
        bottomNavigationBar: Container(
          height: 65,
          color: Colors.white,
          width: double.infinity,
          padding:
              const EdgeInsets.only(top: 10, bottom: 15, left: 13, right: 13),
          child: customMaterialButtonWidget(
              buttonColor: Color(customColor("2c2d32")),
              onTap: () {
                customModdleBottomSheet(context,gender: genderForThisStage[0]);

              },
              content: "Continue"),
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(children: [
                Column(
                  children: [
                    serchInput(),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (detailsForRadio[0]) radioServices("Male", 0),
                        const SizedBox(
                          width: 10,
                        ),
                        if (detailsForRadio[0]) radioServices("Female", 1),
                        // radio services ofr male
                        if (detailsForRadio[1]) radioServices("Female", 0),
                        //radio service for female
                        if (detailsForRadio[2]) radioServices("Male", 0),
          
                        Padding(
                          padding: EdgeInsets.only(
                              left: detailsForRadio[0] ? 55 : 129),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return const AddServiceScreen();
                                },
                              ));
                            },
                            child: Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              AddServiceScreen(),
                                        ));
                                  },
                                  child: const CircleAvatar(
                                    radius: 13,
                                    backgroundColor: Colors.black,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 12,
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 3,
                                ),
                                const Text(
                                  "Add Services",
                                  style: TextStyle(fontSize: 12),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
                // Text("dc")
                // Text("dcd"),
                //
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                    child: Container(
                  height: 537,
                  // color: Colors.black,
                  child: ScrollableListTabScroller(
                    scrollDirection: Axis.vertical,
                    itemCount: 10,
                    tabBuilder: (BuildContext context, int index, bool active) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          dataForMaleFemale.keys.elementAt(index),
                          style: !active
                              ? null
                              : TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                        ),
                      );
                    },
                    itemBuilder: (BuildContext context, int index) {
                      List temp = dataForMaleFemale.values.elementAt(index);
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 17, bottom: 15, top: 10),
                            child: Text(
                              "${dataForMaleFemale.keys.elementAt(index)} (${temp.length})  ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ),
                          ...dataForMaleFemale.values
                              .elementAt(index)
                              .asMap()
                              .map(
                                (index, value) => MapEntry(
                                  index,
                                  Column(
                                    children: [
                                      if(indexValue!=temp[index])
                                        ListTile(
                                          onTap: () {
                                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                                              return AddServiceScreen();
                                            },)) ;
                                          } ,
                                        trailing: customMaterialButtonWidget(
                                            height: 35.9,
                                            customFontSize: 10.0,
                                            width: 80.0,
                                            content: "Set Price",
                                            onTap: () {
                                              setState(() {
                                                indexValue=temp[index];
                                                print(">>>>>>>>>> ${temp[index]}<<<<<<<<<<<<<<<<<");
                                              });
                                            }),
                                        title: Text(
                                          value,
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      if(indexValue==temp[index])
                                        ListTile(
                                           onTap: () {
                                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                                              return AddServiceScreen();
                                            },)) ;
                                           } ,
                                          title: Text(
                                            value,
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          trailing:byDefaultValue ? Container(
                                            height: 40,
                                            width: 99,
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.end,
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                Center(
                                                  child: SizedBox(
                                                    height: 35.9 ,
                                                    width: 70,
                                                    child: TextField(
                                                      onChanged: (value) {
                                                        byDefaultValue=!byDefaultValue;
                                                        amountValue=value;
                                                        print(amountValue);
                                                      },
                                                      cursorHeight: 25,
                                                      cursorColor: Colors.black,
                                                      cursorOpacityAnimates: false,
                                                      keyboardType: TextInputType.number,
                                                      decoration: InputDecoration(
                                                         prefix: Text("₹"),
                                                        label: Text("Price",style: TextStyle(color: Colors.black),),
                                                          border: OutlineInputBorder(),
                                                          contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 10 ),
                                                          enabledBorder: OutlineInputBorder(
                                                              borderRadius: BorderRadius.circular(4),
                                                              borderSide: BorderSide(
                                                                  width: 0.9, color: Color(customColor("e2e2e2")))),
                                                          focusedBorder: OutlineInputBorder(
                                                              borderRadius: BorderRadius.circular(4),
                                                              borderSide:
                                                              BorderSide(width: 0.9, color: Colors.black)),


                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 5,),
                                                  Center(
                                                  child: GestureDetector(
                                                    onTap: () {
                                                      if(amountValue==""){
                                                        final msg=SnackBar(backgroundColor: Colors.red,
                                                            duration: Duration(milliseconds: 400),
                                                            content: Text("Please Enter Some Amount",style: TextStyle(color: Colors.white),));
                                                        ScaffoldMessenger.of(context).showSnackBar(msg);
                                                      }else{
                                                        liForAmount.add(amountValue);
                                                        print(">>>>>>>>>>>$liForAmount<<<<<<<<<<<<<<<<<<<<<");
                                                        setState(() {

                                                          byDefaultValue=false;

                                                        });
                                                      }
                                                    },
                                                    child: CircleAvatar(
                                                      radius: 12,
                                                      backgroundColor: Colors.black,
                                                      child: Icon(Icons.check,color: Colors.white,),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ):Text("₹ ${liForAmount[0]}",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),)

                                        ),


                                      Divider(
                                        height: 0.9,
                                        color: Color(customColor("d3d3d3")),
                                      )
                                    ],
                                  ),
                                ),
                              )
                              .values,
                          // Divider()
                        ],
                      );
                    },
                  ),
                ))
              ])),
        ));
  }

  Widget radioServices(String gender, int numForRadio) {
    print("Function claa>>>>>>>>>>>>>.$gender");
    // print();
    return SizedBox(
      // width: 1,
      child: Row(
        children: [
          CircleAvatar(
            radius: 12.6,
            backgroundColor: Colors.black,
            child: GestureDetector(
              onTap: () {
                displayer();
                print("Button Tapped>>>>>>>>>> $gender");
                setState(() {
                  if (genderForThisStage[0] && numForRadio == 1) {
                    genderForThisStage = [false, true];
                  } else if (numForRadio == 0) {
                    genderForThisStage = [true, false];
                  }
                });
              },
              child: CircleAvatar(
                radius: 12,
                backgroundColor: genderForThisStage[numForRadio]
                    ? Color(customColor("ea0a8e"))
                    : Colors.white,
                child: genderForThisStage[numForRadio]
                    ? Icon(
                        Icons.check,
                        color: Colors.white,
                      )
                    : null,
              ),
            ),
          ),
          SizedBox(
            width: 6,
          ),
          Text(gender),
        ],
      ),
    );
  }
}

Widget serchInput() {
  return Container(
    height: 41,
    width: double.infinity,
    decoration: BoxDecoration(
        color: Colors.grey.shade200, borderRadius: BorderRadius.circular(6)),
    child: TextField(
      style: TextStyle(height: 0.7),
      cursorHeight: 15,
      decoration: InputDecoration(
          hintText: "Search Services",
          disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 0, color: Colors.grey.shade200)),
          border: OutlineInputBorder(
              borderSide: BorderSide(width: 0, color: Colors.grey.shade200)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 0, color: Colors.grey.shade200)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 0, color: Colors.grey.shade200)),
          prefixIcon: Icon(Icons.search),
          suffixIcon: Icon(Icons.mic)),
    ),
  );
}

final dataForFemale = {
  "Hair Cut & Style": femaleHairCutStyleList,
  "Hair Color": femaleHairColorList,
  "Hair Chemical": femaleHairChemica,
  "Mani Pedi & Hygiene": femaleManiPediHygine,
  "Spa & Massage": femaleSpaMassage,
  "Hair Treatments": femaleHairTreatMents,
  "Skin Care": femaleSkinCareList,
  "Pre Bridal": femalePreBridal,
  "Makeup": femaleMakeUp,
  "Nail Art": maleFemaleNailArt,
};
final dataForMale = {
  "Hair Cut & Style": maleHairCutStyleList,
  "Hair Color": maleHairColorList,
  "Hair Chemical": maleHairChemica,
  "Mani Pedi & Hygiene": maleManiPediHygine,
  "Spa Massage": maleSpaMassage,
  "Hair Treatments": maleHairTreatMents,
  "Skin Care": maleSkinCareList,
  "Pre Groom": malePreGroom,
  "Makeup": maleMakeUp,
  "Nail Art": maleFemaleNailArt,
};
