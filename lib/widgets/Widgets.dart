



import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:foodiie/config/config.dart';

class Widgets {
  static bool isEmail(String em) {
    String p =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = new RegExp(p);

    return regExp.hasMatch(em);
  }
  

  static Widget input(IconData icon, String hint, TextEditingController controller, bool obsecure, Widget suffixIcon,dynamic isPassword,Function onTap,Function onSaved,String initialValue,BuildContext context) {
      return  Align(
    child:Container(
      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
        width: Config.getWidth(context)/1.5,                
        height: Config.getWidth(context)/7,
      child: TextFormField(
        initialValue: initialValue,
        onTap: onTap,
        onSaved: onSaved,
          validator: (val) {
            if(isPassword != null){
            if(isPassword){
              if (val.isEmpty) {
                return 'input require';
              } else if (val.trim().length < 6) {
                return 'this password is too short';
              } 
            } else {
                if (val.isEmpty) {
                return 'input require';
                } else if (!isEmail(val)) {
                return 'email invalide';
                }
              } 
            }
              return null;
              },
          controller: controller,
          obscureText: obsecure,
          style: TextStyle(fontSize: 16,  color: Config.darkGray),
          decoration: InputDecoration(
              hintStyle: TextStyle(fontWeight: FontWeight.w400, fontSize: 16,color: Config.darkGray),
              hintText: hint,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(22),
                borderSide: BorderSide(
                  color: Config.yallowWhite2,
                  width: 3,
                ),
              ),
              focusColor: Config.yallowWhite,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                  color: Config.yallowWhite3,
                  width: 3,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                  color: Config.yallowWhite3,
                  width: 3,
                ),
              ),
              suffixIcon: suffixIcon,
              prefixIcon: Padding(
                child: IconTheme(
                  data: IconThemeData(color: Config.darkGray),
                  child: Icon(icon,size: 20,),
                ),
                padding: EdgeInsets.only(left: 10, right: 10),
              )),
        ),
      ));
  }
  static Widget  horisontalcard(context,price){
              return Container(
                      margin: EdgeInsets.fromLTRB(Config.getHeight(context)/25,Config.getHeight(context)/45, Config.getHeight(context)/25,Config.getHeight(context)/26),
                      height: 190,
                      width: 135,
                      decoration: BoxDecoration(
                        color: Config.white,
                        borderRadius:  BorderRadius.circular(16.0), 
                        boxShadow: [BoxShadow(
                            color: Config.shadow.withOpacity(0.16),
                              blurRadius: 10,
                              offset: Offset(10, 15)
                          )]  
                      ),
                      child:Stack(
                        children: [
                        Align(
                          alignment: AlignmentGeometry.lerp(Alignment.topLeft, Alignment.bottomRight,0),
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                          color: Config.yallow,
                          borderRadius:  BorderRadius.circular(26.0),  
                          boxShadow: [
                            BoxShadow(
                              color: Config.yallow.withOpacity(0.18),
                              blurRadius: 10,
                              offset: Offset(10, 15)
                          )]  
                      ),
                        
                        child: Center(child:Text("\$$price",style: TextStyle(color: Config.black,fontSize: 18,fontWeight: FontWeight.w500,decoration: TextDecoration.none),)),
                          ),
                        ),
                        Align(
                          alignment: AlignmentGeometry.lerp(Alignment.topLeft, Alignment.bottomLeft,0.4),
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0,0,0,Config.getHeight(context)/2005),
                            child: Image.asset(Config.pizza,width: 130,height: 110,)),
                        ),
                        Align(
                          alignment: AlignmentGeometry.lerp(Alignment.topLeft, Alignment.bottomCenter,0.78),
                          child: Text("Pepperoni Pizza",style: TextStyle(color: Config.black,fontSize: 16,fontWeight: FontWeight.w500,decoration: TextDecoration.none))),
                          Align(
                          alignment: AlignmentGeometry.lerp(Alignment.topLeft, Alignment.bottomCenter,0.95),
                          child: Row(
                            
                            children: [
                                SizedBox(width: 4,),
                            Text('Most Liked',style: TextStyle(color: Config.darkGray,fontSize: 13,fontWeight: FontWeight.w500,decoration: TextDecoration.none)),
                            SizedBox(width: 36,),
                            Config.bagIcon2,
                          ],),
                          )
                        ],
                      ),                     
                    );
  }
  static Widget verticalFoodCard(context,imageUrl,price,title){

    return  Container(
      margin: EdgeInsets.fromLTRB(Config.getWidth(context)/10, Config.getWidth(context)/25,0, Config.getWidth(context)/10), 
      height: 114,
      width: 327,
    
      decoration: BoxDecoration(
            color: Config.white,
            borderRadius:  BorderRadius.circular(16.0), 
            boxShadow: [
              BoxShadow(
                color: Config.shadow.withOpacity(0.16),
                blurRadius: 10,
                offset: Offset(10, 15)
              )]  
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(Config.getWidth(context)/90, 0,0, 0),
                child: Image.asset(imageUrl)
              ),
              RichText(text: TextSpan(text: "$title\n\n",
              style: TextStyle(color: Config.black,fontSize: 14,fontWeight: FontWeight.w400),
              children: [
                TextSpan(text: "View Product Details",
              style: TextStyle(color: Config.black,fontSize: 14,fontWeight: FontWeight.w300),
                )
              ]
              )),
              SizedBox(width: 20,),
              Column(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Config.yallow,
                      borderRadius:  BorderRadius.circular(22.0), 
                      boxShadow: [
                        BoxShadow(
                        color: Config.yallow.withOpacity(0.18),
                        blurRadius: 10,
                        offset: Offset(10, 15)
                        )]  
                    ),
                    child: Center(child: Text("\$$price", style: TextStyle(color: Config.black,fontSize: 16,fontWeight: FontWeight.w500,decoration: TextDecoration.none),)),
                  ),
                  SizedBox(height: 20,),
                  Config.bagIcon,
                ],
              )
            ],),
        );
  }
  static Widget verticalCard(context,price,imageUrl){
    return  Container(
      margin: EdgeInsets.fromLTRB(Config.getWidth(context)/20, Config.getWidth(context)/25,0, Config.getWidth(context)/10), 
      height: 180,
      width: 370,
    
      decoration: BoxDecoration(
            color: Config.white,
            borderRadius:  BorderRadius.circular(16.0), 
            boxShadow: [
              BoxShadow(
                color: Config.shadow.withOpacity(0.16),
                blurRadius: 10,
                offset: Offset(10, 15)
              )]  
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 20,),
              Column(children: [
                SizedBox(height: 20,),
                RichText(text: TextSpan(text: "Beff & Salad\n",
              style: TextStyle(color: Config.black,fontSize: 18,fontWeight: FontWeight.w400),
              children: [
                TextSpan(text: "We love cooking\n\n",
              style: TextStyle(color: Config.black,fontSize: 12,fontWeight: FontWeight.w300),
                ),
                TextSpan(text: "\$$price",
                style: TextStyle(color: Config.black,fontSize: 18,fontWeight: FontWeight.w500),
                )
              ]
              )),
              SizedBox(height: 10,),
              ElevatedButton(
                onPressed: (){},
                style:OutlinedButton.styleFrom(
                  backgroundColor: Config.yallow,
                  shadowColor: Config.mediumYallow.withOpacity(0.6),
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22.0),
                    )
                ),
                child: Text('Add to cart',style: TextStyle(color: Config.black,fontSize: 16,fontWeight: FontWeight.w500),
                ),
              ),
              ],),
              SizedBox(width: 90,),
              Container(
                margin: EdgeInsets.fromLTRB(Config.getWidth(context)/900, 0,0, 0),
                child: Image.asset(imageUrl)
              ),
            ],),
        );
  }
  static Widget menuItem(context,FaIcon icon ,Text text,Function onPressed){
    return Container(
      child:TextButton(
      onPressed: onPressed,
      child: Row(
        children: [
          icon,
          SizedBox(width: Config.getWidth(context)/15,),
          text
        ],
      )
      ),
    );

  }

}