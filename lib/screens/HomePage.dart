

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodiie/config/config.dart';
import 'package:foodiie/widgets/Widgets.dart';

import 'Category_Page.dart';

class HomePage extends StatefulWidget {
  
  @override
  _HomePageState createState() => _HomePageState();
}
  
  class Category<T> {
    T title;
    bool isSelected = false;
    Category(this.title,this.isSelected);
  }




class _HomePageState extends State<HomePage> {
  
  int orders = 1;
  int price = 17;
  TextEditingController _searchController ;
  String imageUrl = Config.burger1;
  String imageUrl2 = Config.stake;
  String imageUrl3 = Config.cola;
  List<Category> categories = <Category>[
    Category<String> ("Pizza",true), Category("Burger",false), Category("Beef",false), Category("Lunch",false), Category("Diner",false), Category("Breakfest",false) ];
  
  @override
  void initState() { 
    super.initState(); 
  }
 

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      
            extendBody: false,
            backgroundColor: Config.white,
            appBar:AppBar(
              
              elevation: 0,
              bottomOpacity: 0,
              backgroundColor: Config.white,
              actions: [
                IconButton(onPressed: (){
                          },
                icon:Stack(
                  children: [
                  Config.bagIcon,
                    Align(
                      alignment:  Alignment.topRight,
                      child: Container(
                        height:Config.getWidth(context)/24 ,
                        width: Config.getWidth(context)/24,
                        decoration: BoxDecoration(
                          color: Config.yallow,
                          borderRadius:  BorderRadius.circular(22.0),    
                        ),
                        child: Center(child: Text(orders.toString(),textAlign: TextAlign.center,style: TextStyle(color:Config.black,fontSize: 13),)),
                      ),
                    )
                ],
              ),),
                
              ],
              title: GestureDetector(
                  onTap: (){
                  },
                child: Text('FOODIIE',style: TextStyle(color:Config.black,fontSize: 21,fontWeight: FontWeight.w700),)),
                ),
              
            body: SingleChildScrollView(
              child: Container(
                decoration: BoxDecoration(color: Config.white,borderRadius: BorderRadius.circular(22)),
                width: Config.getWidth(context),
                
                child:Column(children: [
                  SizedBox(height: Config.getHeight(context)/50,),
                  Container(alignment: AlignmentGeometry.lerp(Alignment.topLeft, Alignment.bottomRight, Config.getWidth(context)/5000),
                    child: Text("Let's start\nThe day with some food.",style: TextStyle(color: Config.black,fontSize: 21),)),
                  Container(
                    width: Config.getWidth(context),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Widgets.input(FontAwesomeIcons.search, 'Search', _searchController, false, null,true, null,null,null, context),
                        Container(
                          margin: EdgeInsets.only(left:Config.getHeight(context)/35, top:20),
                          height: Config.getWidth(context)/8,
                          width:Config.getWidth(context)/8,
                          decoration: BoxDecoration(
                          color: Config.yallow,
                          borderRadius:  BorderRadius.circular(12.0),    
                        ),
                          child: IconButton(onPressed: (){
                          
                            },
                            icon: Config.sliderIcon,
                            ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: AlignmentGeometry.lerp(Alignment.topLeft, Alignment.bottomRight,Config.getWidth(context)/9000),
                  margin: EdgeInsets.fromLTRB(0, Config.getHeight(context)/35, 0, 0),
                  child: Text('Categories',style: TextStyle(color: Config.black,fontSize: 21,fontWeight: FontWeight.w500,decoration: TextDecoration.none),),
                  ),
                  Container(
                    height: Config.getHeight(context)/12,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context,i){
                        return  GestureDetector(
                          onTap: (){
                            setState(() {
                              categories[i].isSelected ?
                            categories[i].isSelected = false :
                              categories[i].isSelected = true;
                            });
                          },
                          onLongPress: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return new CategoryPage(title:categories[i].title.toString());
                                  }
                                ));
                            
                          },
                            child: Container(
                            margin: EdgeInsets.fromLTRB(Config.getHeight(context)/35,Config.getHeight(context)/35, 0,0),
                            height: Config.getHeight(context)/23,
                            child: Center(child: Text(categories[i].title.toString(),style: TextStyle(color: Config.black,fontSize: 18,fontWeight: FontWeight.w400),)),
                            width: 100,
                            decoration: BoxDecoration(
                              color: categories[i].isSelected?  Config.yallow :Config.gray,
                              borderRadius:  BorderRadius.circular(16.0),   
                            )
                      
                          ),
                        );
                      }),
                  ),
                  Container(
                  alignment: AlignmentGeometry.lerp(Alignment.topLeft, Alignment.bottomRight,Config.getWidth(context)/9000),
                  margin: EdgeInsets.fromLTRB(0, Config.getHeight(context)/35, 0, 0),
                  child: Text('Trendig Food',style: TextStyle(color: Config.black,fontSize: 21,fontWeight: FontWeight.w500,decoration: TextDecoration.none),),
                  ),
                  Container(
                    height:  244,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (contex,i){
                          return GestureDetector(
                            onTap: (){
                            
                            },
                            child: Widgets.horisontalcard(context, price,(){
                                setState(() {
                                  orders ++;                            
                              });
                            }));
                        },
                    )
                    ),
                  Container(
                  alignment: AlignmentGeometry.lerp(Alignment.topLeft, Alignment.bottomRight,Config.getWidth(context)/8000),
                  child: Text('Popular Food',style: TextStyle(color: Config.black,fontSize: 21,fontWeight: FontWeight.w500,decoration: TextDecoration.none),),
                  ),
                  Container(
                    height:  180,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (contex,i){
                          return Widgets.verticalFoodCard(context, imageUrl, price,"Biggie Beef Burger");
                        },
                    )
                    ),
                    Container(
                  alignment: AlignmentGeometry.lerp(Alignment.topLeft, Alignment.bottomRight,Config.getWidth(context)/8000),
                  child: Text('Recommended',style: TextStyle(color: Config.black,fontSize: 21,fontWeight: FontWeight.w500,decoration: TextDecoration.none),),
                  ),
                  Container(
                    height:  220,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (contex,i){
                          return Widgets.verticalCard(context,  price,imageUrl2);
                        },
                    )
                    ),
                    Container(
                  alignment: AlignmentGeometry.lerp(Alignment.topLeft, Alignment.bottomRight,Config.getWidth(context)/8000),
                  child: Text('Things to drink',style: TextStyle(color: Config.black,fontSize: 21,fontWeight: FontWeight.w500,decoration: TextDecoration.none),),
                  ),
                  Container(
                    height:  180,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (contex,i){
                          return Widgets.verticalFoodCard(context, imageUrl3, price,"Coca Cola Zero");
                          },
                    )
                    ),
                    

                ],),
              ),
            )
      );
  }
}