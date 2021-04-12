import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodiie/config/config.dart';
import 'package:toast/toast.dart';

import 'HomePage.dart';




class ItemInfo extends StatefulWidget {
  ItemInfo({Key key}) : super(key: key);

  @override
  _ItemInfoState createState() => _ItemInfoState();
}

class _ItemInfoState extends State<ItemInfo> {
  List<Category> categories = <Category>[
    Category ("Small",false), Category("Medium",true), Category("Large",false) ];

    List<Ingredient> ingredient = <Ingredient>[
      Ingredient("Meat",Config.p), Ingredient("Cheese",Config.p1), Ingredient("Sauce",Config.p2), Ingredient("Peper",Config.p3), Ingredient("onions",Config.p4),
    ];
  
  int orders = 1;
  bool isSelected=false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
        bottomOpacity: 0,
        backgroundColor: Config.white,
        actions: [
          IconButton(
            onPressed: (){},
            icon:FaIcon(FontAwesomeIcons.heart,color: Config.black,),
            ),
        ],
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: FaIcon(FontAwesomeIcons.chevronLeft,color: Config.black,),),
      ),        
      body: SingleChildScrollView(
        child: Container(
          height: Config.getHeight(context),
          width: Config.getWidth(context),
          color: Config.white,
          child: Column(
            children: [
                Container(
                  alignment: AlignmentGeometry.lerp(Alignment.topLeft, Alignment.bottomRight,Config.getWidth(context)/300000),
                  margin: EdgeInsets.fromLTRB(Config.getHeight(context)/30, Config.getHeight(context)/35, 0, 0),
                  child: Text('Pepperoni Pizza',style :TextStyle(color: Config.black,fontSize: 21,fontWeight: FontWeight.w500,decoration: TextDecoration.none),),
                ),
                Stack(
                  children:[ Container(
                    margin: EdgeInsets.fromLTRB(Config.getHeight(context)/30, Config.getHeight(context)/35, Config.getHeight(context)/30, 0),
                    height: Config.getWidth(context)/1.5,
                    width: Config.getWidth(context)/1.5,
                    decoration: BoxDecoration(
                      color: Config.yallow,
                      borderRadius: BorderRadius.all(Radius.circular(20))
                      
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Image.asset(Config.pizza,height: 400,width:400,)),
                  ),
                  
                  Container(
                    margin:  EdgeInsets.fromLTRB(0, Config.getHeight(context)/13,0, 0),
                    height: Config.getWidth(context)/5,
                    width: Config.getWidth(context)/5,
                    decoration: BoxDecoration(
                      color: Config.yallowWhite2,
                      borderRadius: BorderRadius.all(Radius.circular(40))
                      ),
                    child: Center(child: Text("\$26",style: TextStyle(color: Config.black,decoration: TextDecoration.none,fontSize: 26,fontWeight: FontWeight.w500),),),
                  ),
                    Container(
                    margin:  EdgeInsets.fromLTRB(Config.getHeight(context)/3.4, Config.getHeight(context)/3.3,0, 0),
                    height: Config.getWidth(context)/4.5,
                    width: Config.getWidth(context)/4.5,
                    decoration: BoxDecoration(
                      color: Config.yallowWhite2,
                      borderRadius: BorderRadius.all(Radius.circular(60))
                      ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Row(
                        children: [ 
                          SizedBox(width: Config.getWidth(context)/50,),
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                if(orders==0){
                                  Toast.show("Please you can't remove more orders", context);
                                }else{
                                  orders --;
                                }
                              });
                          },
                            child: Icon(Icons.remove,size: 28)),
                          Text("$orders",style: TextStyle(color: Config.black,decoration: TextDecoration.none,fontSize: 26,fontWeight: FontWeight.w500),),
                          GestureDetector(
                            onTap: (){ 
                              setState(() {
                                if(orders>=9){
                                  Toast.show("Please you can't add more orders", context);
                                }else{
                                  orders ++;
                                }
                              });
                          },
                            child:Icon(Icons.add,size: 28)),
                        ],
                      ),
                    ),
                  ),
                  ]
                ),
                
                  Container(
                      height: Config.getHeight(context)/12,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                          itemCount: 3,
                          itemBuilder: (context,i){
                          return  GestureDetector(
                            onTap: (){
                              setState(() {
                                if(categories[i].isSelected ){
                                  categories[i].isSelected = false ;
                                }else{
                                  if(i==0){
                                    categories[i].isSelected = true;
                                    categories[i+1].isSelected = false;
                                    categories[i+2].isSelected = false;
                                  }
                                  if(i==1){
                                    categories[i].isSelected = true;
                                    categories[i-1].isSelected = false;
                                    categories[i+1].isSelected = false;
                                  }
                                  if(i==2){
                                    categories[i].isSelected = true;
                                    categories[i-1].isSelected = false;
                                    categories[i-2].isSelected = false;
                                  }
                                  
                                  
                                }
                              });
                            },
                              child: Container(
                              margin: EdgeInsets.fromLTRB(Config.getHeight(context)/35,Config.getHeight(context)/35, 0,0),
                              child: Center(child: Text(categories[i].title.toString(),style: TextStyle(color: categories[i].isSelected?  Config.black :Config.darkGray,fontSize: 18,fontWeight: FontWeight.w500),)),
                              width: 100,
                              decoration: BoxDecoration(
                                color: categories[i].isSelected?  Config.yallowWhite2 :Config.white,
                                borderRadius:  BorderRadius.circular(26.0),   
                              )
                        
                            ),
                          );
                        }),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(Config.getHeight(context)/35,Config.getHeight(context)/35, Config.getHeight(context)/135,0),
                      height: 70,
                      width: 400,
                      child: Text("Lorem ipsum dolor sit amet, consetetur sadip scing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna.",
                      style: TextStyle(color: Config.black ,fontSize: 16,fontWeight: FontWeight.w400),)
                    ),
                    Container(
                      alignment: AlignmentGeometry.lerp(Alignment.topLeft, Alignment.bottomRight,Config.getWidth(context)/300000),
                      margin: EdgeInsets.fromLTRB(Config.getHeight(context)/30, Config.getHeight(context)/75, 0, 0),
                      child: Text('Ingredients',style :TextStyle(color: Config.black,fontSize: 21,fontWeight: FontWeight.w500,decoration: TextDecoration.none),),
                    ),
                    
                  Container(
                    height: Config.getHeight(context)/12,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                        itemCount: ingredient.length,
                        itemBuilder: (context,i){
                        return  Container(
                        margin: EdgeInsets.fromLTRB(Config.getHeight(context)/35,Config.getHeight(context)/35, 0,0),
                        height: Config.getHeight(context)/23,
                        child: Center(child: Text(ingredient[i].title.toString(),style: TextStyle(color: Config.whiteGray,fontSize: 18,fontWeight: FontWeight.w400),)),
                        width: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage(ingredient[i].picture) ,fit: BoxFit.cover,colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.colorBurn),),
                          borderRadius:  BorderRadius.circular(16.0),   
                        )
                          );
                      }),
                  ),
                  SizedBox(height: Config.getHeight(context)/30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      OutlinedButton(onPressed: (){},child: Container(
                        height: 40,
                        width: 110,
                        child: Center(child: Text("See Reviews",style: TextStyle(fontSize: 18,color: Config.black))),),
                        style:OutlinedButton.styleFrom(
                          backgroundColor: Config.white,
                          shadowColor: Config.gray.withOpacity(0.6),
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22.0),
                          )
                      ) ,
                        ),
                      SizedBox(width: Config.getWidth(context)/15,),
                      ElevatedButton(onPressed: (){}, child: Container(
                        height: 40,
                        width: 100,
                        child: Center(child: Text("Add to Cart",style: TextStyle(fontSize: 18),)),
                      ),
                      style:OutlinedButton.styleFrom(
                          backgroundColor: Config.yallow,
                          shadowColor: Config.mediumYallow.withOpacity(0.6),
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22.0),
                          )
                      ),)
                    ],
                  )

            ],
            ),
          ),
      ),
    );
  }

}


class Ingredient{
  String title;
  String picture;
  Ingredient(this.title,this.picture);
}