



import 'package:flutter/material.dart';

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
        width: Config.getWidth(context)/1.3,                
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
  static Widget  foodcard(context,price){
              return Container(
                      margin: EdgeInsets.fromLTRB(Config.getHeight(context)/20,Config.getHeight(context)/45, 0,Config.getHeight(context)/26),
                      height: Config.getHeight(context)/3.6,
                      width: Config.getWidth(context)/3.3,
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
                            SizedBox(width: 26,),
                            Config.bagIcon2,
                          ],),
                          )
                        ],
                      ),                     
                    );
                }
}