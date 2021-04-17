

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodiie/config/config.dart';
import 'package:foodiie/screens/CartPage.dart';

class Payment extends StatefulWidget {
  double total  ;
  Payment(this.total);

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  bool isCashcheck = false;
  bool iscreditCardChecked = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: Container(
          width: 250,
          height: 50,
          margin: EdgeInsets.fromLTRB(Config.getHeight(context)/10,0, Config.getHeight(context)/10, Config.getHeight(context)/20),
        child: ElevatedButton(
          onPressed:(){
          
          },
          child:Center(
              child: Text("Place order",style: TextStyle(fontSize: 21,color: Config.black),)
          ),
          style:OutlinedButton.styleFrom(
            backgroundColor: Config.yallow,
            shadowColor: Config.mediumYallow.withOpacity(0.6),
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(28.0),
            )
          ),
        ),
      ) ,),
      appBar: AppBar(
        title: Text('Checkout',style :TextStyle(color: Config.black,fontSize: 26,fontWeight: FontWeight.w500,decoration: TextDecoration.none),),
        elevation: 0,
        bottomOpacity: 0,
        backgroundColor: Config.white,
        leading: IconButton(
          onPressed: (){
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) {
                return new CartPage();
              }));
          },
          icon: FaIcon(FontAwesomeIcons.chevronLeft,color: Config.black,),),
      ),       
      body: Container(
        color: Config.white,
        height: Config.getHeight(context),
        width:  Config.getWidth(context),
        child: Column(
          children: [
            Container(
              alignment: AlignmentGeometry.lerp(Alignment.topLeft, Alignment.bottomRight,Config.getWidth(context)/300000),
              margin: EdgeInsets.fromLTRB(Config.getHeight(context)/30,Config.getHeight(context)/30, 0, 0),
              child: Text('Adress',style :TextStyle(color: Config.black,fontSize: 24,fontWeight: FontWeight.w500,decoration: TextDecoration.none),),
            ),
            SizedBox(height: Config.getHeight(context)/25,),
            Container(
              height: 60,
              width: 340,
              decoration: BoxDecoration(
                color: Config.whiteGray,
                borderRadius:  BorderRadius.circular(16.0), 
                boxShadow: [
                  BoxShadow(
                    color: Config.shadow.withOpacity(0.16),
                    blurRadius: 10,
                    offset: Offset(10, 15)
                  )]  
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Add your adress",style :TextStyle(color: Config.black,fontSize: 22,fontWeight: FontWeight.w400,decoration: TextDecoration.none),),
                  SizedBox(width: Config.getWidth(context)/3,),
                  GestureDetector(
                    child: Icon(Icons.add_circle_outline,color: Config.black,size: 26,),
                    onTap: (){
                      print("Add Adress tapes");
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: Config.getHeight(context)/25,),
            Container(
              alignment: AlignmentGeometry.lerp(Alignment.topLeft, Alignment.bottomRight,Config.getWidth(context)/300000),
              margin: EdgeInsets.fromLTRB(Config.getHeight(context)/30,Config.getHeight(context)/30, 0, 0),
              child: Text('Payment',style :TextStyle(color: Config.black,fontSize: 24,fontWeight: FontWeight.w500,decoration: TextDecoration.none),),
            ),
            SizedBox(height: Config.getHeight(context)/25,),
            Container(
              height: 60,
              width: 340,
              decoration: BoxDecoration(
                color: Config.whiteGray,
                borderRadius:  BorderRadius.circular(16.0), 
                boxShadow: [
                  BoxShadow(
                    color: Config.shadow.withOpacity(0.16),
                    blurRadius: 10,
                    offset: Offset(10, 15)
                  )]  
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Config.visa,
                  SizedBox(width:5,),
                  Config.masterCard,
                  SizedBox(width:10,),
                  Text("Credits Card",style :TextStyle(color: Config.black,fontSize: 22,fontWeight: FontWeight.w400,decoration: TextDecoration.none),),
                  SizedBox(width: Config.getWidth(context)/5.2,),
                  GestureDetector(
                    child: FaIcon(iscreditCardChecked ? FontAwesomeIcons.checkCircle : FontAwesomeIcons.circle,color: Config.black,size: 26,),
                    onTap: (){
                      setState(() {
                        if(iscreditCardChecked){
                          iscreditCardChecked = false;
                          
                        }else{
                          isCashcheck = false;
                          iscreditCardChecked = true;   
                        }                
                      });  
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: Config.getHeight(context)/25,),
            Container(
              height: 60,
              width: 340,
              decoration: BoxDecoration(
                color: Config.whiteGray,
                borderRadius:  BorderRadius.circular(16.0), 
                boxShadow: [
                  BoxShadow(
                    color: Config.shadow.withOpacity(0.16),
                    blurRadius: 10,
                    offset: Offset(10, 15)
                  )]  
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon( FontAwesomeIcons.wallet,color: Config.black,size: 25,),
                  SizedBox(width:10,),
                  Text("Cash on delivery",style :TextStyle(color: Config.black,fontSize: 22,fontWeight: FontWeight.w400,decoration: TextDecoration.none),),
                  SizedBox(width: Config.getWidth(context)/5.5,),
                  GestureDetector(
                    child: FaIcon( isCashcheck ? FontAwesomeIcons.checkCircle : FontAwesomeIcons.circle,color: Config.black,size: 25,),
                    onTap: (){
                      setState(() {
                        if(isCashcheck){
                          isCashcheck = false;
                          
                        }else{
                          isCashcheck = true;
                          iscreditCardChecked = false;   
                        }    
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: Config.getHeight(context)/25,),
            Container(
              alignment: AlignmentGeometry.lerp(Alignment.topLeft, Alignment.bottomRight,Config.getWidth(context)/300000),
              margin: EdgeInsets.fromLTRB(Config.getHeight(context)/30,Config.getHeight(context)/30, 0, 0),
              child: Text('Total',style :TextStyle(color: Config.black,fontSize: 24,fontWeight: FontWeight.w500,decoration: TextDecoration.none),),
            ),
            Container(
              alignment: AlignmentGeometry.lerp(Alignment.topLeft, Alignment.bottomRight,Config.getWidth(context)/300000),
              margin: EdgeInsets.fromLTRB(Config.getHeight(context)/30,Config.getHeight(context)/50, 0, 0),
              child:  Text("\$${widget.total}",style :TextStyle(color: Config.black,fontSize: 22,fontWeight: FontWeight.w400,decoration: TextDecoration.none),),
            ),
            
          ],
        ),
      ),
    );
  }
}