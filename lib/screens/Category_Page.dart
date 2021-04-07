


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodiie/config/config.dart';
import 'package:foodiie/screens/HomePage.dart';
import 'package:foodiie/widgets/Widgets.dart';

class CategoryPage extends StatefulWidget {
  final String title ;
  CategoryPage({Key key,this.title}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  int orders = 3;
  String _categorytitle ;
  final List<Map> myProducts =
      List.generate(100000, (index) => {"id": index, "name": "Product $index"})
          .toList();

  @override
  void initState() { 
    super.initState();
    _categorytitle = widget.title;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        bottomOpacity: 0,
        backgroundColor: Config.white,
        actions: [
          IconButton(
            onPressed: (){},
            icon:Stack(
              children: [
                Config.bagIcon,
                Align(
                  alignment:  Alignment.topRight,
                  child: Container(
                    height: Config.getWidth(context)/24,
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
        leading: IconButton(
          onPressed: (){
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) {
                return new HomePage();
                }
              )
            );
          },
          icon: FaIcon(FontAwesomeIcons.chevronLeft,color: Config.black,),),
      ),        
      body: SingleChildScrollView(
        child: Container(
          height: Config.getHeight(context),
          width: Config.getWidth(context),
          color: Config.white,
          child: Column(children: [
            Row(
              children: [
                Container(
                        alignment: AlignmentGeometry.lerp(Alignment.topLeft, Alignment.bottomRight,Config.getWidth(context)/9000),
                        margin: EdgeInsets.fromLTRB(Config.getHeight(context)/30, Config.getHeight(context)/35, 0, 0),
                        child: Text('$_categorytitle',style :TextStyle(color: Config.black,fontSize: 20,fontWeight: FontWeight.w500,decoration: TextDecoration.none),),
                        ),
                Container(
                        alignment: AlignmentGeometry.lerp(Alignment.topLeft, Alignment.bottomRight,Config.getWidth(context)/9000),
                        margin: EdgeInsets.fromLTRB(Config.getHeight(context)/200, Config.getHeight(context)/35, 0, 0),
                        child: Text('Types',style :TextStyle(color: Config.black,fontSize: 19,fontWeight: FontWeight.w400,decoration: TextDecoration.none),),
                        ),

                Container(
                            margin: EdgeInsets.only(left:Config.getWidth(context)/1.9, top:20),
                            height: Config.getWidth(context)/11,
                            width:Config.getWidth(context)/11,
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
            SizedBox(height: Config.getHeight(context)/20,),
            Expanded(
              child:   GridView.count(
                childAspectRatio: ( 125/160),
                        crossAxisCount:2,
                        children: List.generate(20, (index) {
                        return Widgets.horisontalcard(context, 23);
                        },
                    )
      ),
            ),
            
          ],),
        ),
      ),
    );
  }
}