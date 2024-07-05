import 'package:billu_partners/pages/other/custom_widget/custom_color_function.dart';
import 'package:billu_partners/pages/other/custom_widget/custom_widget_material_button.dart';
import 'package:flutter/material.dart';
class ShoppingScreen extends StatefulWidget {
  const ShoppingScreen({super.key});

  @override
  State<ShoppingScreen> createState() => _ShoppingScreenState();
}
Widget forDisplayingThe({required String data}){
  return Column(
    children: [
      CircleAvatar(radius: 33,),
      Text("$data",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w600),)
    ],
  );
}
class _ShoppingScreenState extends State<ShoppingScreen> with SingleTickerProviderStateMixin{
  late TabController tabController;
  @override
  void initState(){
    super.initState();
    tabController=TabController(length: 11, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        // toolbarHeight: 300,
        automaticallyImplyLeading: false,
        title:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("image/billulogo.png")
                )
              ),
            ),
            // SizedBox(height: 200,)
          ],
        ),
        actions: [
          SizedBox(
            width: 33,
            child: IconButton(onPressed: () {

            }, icon: Icon(Icons.shopping_bag_outlined,size: 28,color: Color(customColor("e50a8c")),)),
          ),
          SizedBox(width: 5,),

          SizedBox(
            width: 29,
            child: IconButton(onPressed: () {

            }, icon: Icon(Icons.search_sharp,size: 28,)),
          ),
          SizedBox(width: 5,),
          SizedBox(
            width: 29,
            child: IconButton(onPressed: () {

            }, icon: Icon(Icons.settings_outlined,size: 28,)),
          ),
          SizedBox(width: 15,)
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(189),
          child: Column(
            children: [
              TabBar(
                dividerColor: Colors.transparent,
                // indicatorColor: Colors.transparent,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.zero),
                  // border: BoxBorder()
                ),

                isScrollable: true,
                controller: tabController,
                padding: EdgeInsets.only(right: 10),
                tabAlignment: TabAlignment.start,

                tabs: [
                  Tab(height: 103,child: forDisplayingThe(data: "Featured\nProduct"),),
                  Tab(height: 103,child: forDisplayingThe(data: "Hair"),),
                  Tab(height: 103,child: forDisplayingThe(data: "Nail Care"),),
                  Tab(height: 103,child: forDisplayingThe(data: "Lip Care"),),
                  Tab(height: 103,child: forDisplayingThe(data: "Salon\nBundles"),),
                  Tab(height: 103,child: forDisplayingThe(data: "Eye Care"),),
                  Tab(height: 103,child: forDisplayingThe(data: "Helth &\nWellness"),),
                  Tab(height: 103,child: forDisplayingThe(data: "Beard &\nMustach..."),),
                  Tab(height: 103,child: forDisplayingThe(data: "Disposables"),),
                  Tab(height: 103,child: forDisplayingThe(data: "Skin"),),
                  Tab(height: 103,child: forDisplayingThe(data: "Fragrance"),),
                ],
              ),
              SizedBox(
                height: 40,
                child: Row(
                  children: [
                    Text("  Featured Product",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                    SizedBox(width: 90,),
                    CircleAvatar(radius: 19,),
                    SizedBox(width: 5,),
                    Switch(value: true, onChanged: (value) {

                    },)
                  ],
                ),
              ),
              SizedBox(height: 10,)
            ],
          ),
        ),

      ),
      body:TabBarView(
        controller: tabController,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Wrap(
                spacing: 14,
                  children: [
               shoppingItems(),
               shoppingItems(),
               shoppingItems(),
               shoppingItems(),
               shoppingItems(),
               shoppingItems(),
               shoppingItems(),
              
              ]),
            ),
          ),
          Container(color: Colors.pink,),
          Container(color: Colors.pink,),
          Container(color: Colors.pink,),
          Container(color: Colors.pink,),
          Container(color: Colors.pink,),
          Container(color: Colors.pink,),
          Container(color: Colors.pink,),
          Container(color: Colors.pink,),
          Container(color: Colors.pink,),
          Container(color: Colors.pink,),

        ],
      ),
    );
  }
}
Widget shoppingItems(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(height: 165,width: 160,color: Colors.grey,),
      Text("Skull Shaver",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 13),),
      Text("Skull Shaver Babr Beast\nTrimmer with Precision..",style: TextStyle(fontSize: 9),),
      SizedBox(height: 8,),
      SizedBox(
        width: 150,
        child: Row(
          children: [
            Icon(Icons.currency_rupee_outlined),
            Text("2499"),
            Text(" 9999",style: TextStyle(decoration: TextDecoration.lineThrough,fontSize: 10),),
            Text(" 75%Off")
          ],
        ),

      ),
      Icon(Icons.heart_broken_sharp),
      SizedBox(
        width: 150,
          child: Divider()),
      SizedBox(width: 150,
          child: Center(child: Text("Pay with BCP *2379"),)),
      SizedBox(height: 1,),

      customMaterialButtonWidget(content: "Add To Bag",height: 35,redius: 5,textColor: Colors.black, buttonColor: Colors.white,onTap: (){})

    ],
  );
}
