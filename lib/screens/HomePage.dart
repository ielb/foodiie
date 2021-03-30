

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodiie/config/config.dart';
import 'package:foodiie/widgets/Widgets.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

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
  List<Category> categories = <Category>[
    Category<String> ("Pizza",true), Category("Burger",false), Category("Beef",false), Category("Lunch",false), Category("Diner",false), Category("Breakfest",false) ];
  
  @override
  void initState() { 
    super.initState(); 
  }
  @override
  Widget build(BuildContext context) { 
  
    return Scaffold(
      appBar:  new AppBar(
        elevation: 0,
        foregroundColor: Colors.transparent,
        bottomOpacity: 0,
        backgroundColor: Colors.white,
        actions: [
              IconButton(onPressed: (){
                Navigator.pop(context);
        },
        icon:Stack(
          children: [
            Config.bagIcon,
              Align(
                alignment:  Alignment.topRight,
                child: Container(
                  height: Config.getHeight(context)/45,
                  width: Config.getWidth(context)/28,
                  decoration: BoxDecoration(
                    color: Config.yallow,
                    borderRadius:  BorderRadius.circular(22.0),    
                  ),
                  child: Text(orders.toString(),textAlign: TextAlign.center,style: TextStyle(color:Config.black,fontSize: 13),),
                ),
              )
          ],
        ),),
          
        ],
        title: Text('FOODIIE',style: TextStyle(color:Config.black,fontSize: 21,fontWeight: FontWeight.w700),),),
        
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(color: Config.white),
          height: Config.getHeight(context),
          width: Config.getWidth(context),
          child:Column(children: [
            SizedBox(height: Config.getHeight(context)/50,),
            Container(alignment: AlignmentGeometry.lerp(Alignment.topLeft, Alignment.bottomRight, Config.getWidth(context)/5000),
              child: Text("Let's start\nThe day with some food.",style: TextStyle(color: Config.black,fontSize: 21),)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Widgets.input(FontAwesomeIcons.search, 'Search', _searchController, false, null,true, null,null,null, context),
                Container(
                  margin: EdgeInsets.only(left:Config.getHeight(context)/35, top:20),
                  height: 50,
                  width:50,
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
              height:  Config.getHeight(context)/2.8,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (contex,i){
                    return Widgets.foodcard(context, price);
                  },
              )
              ),
          ],),
        ),
      )
    );
  }
}