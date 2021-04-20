

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodiie/config/config.dart';
import 'package:foodiie/screens/CartPage.dart';

// ignore: must_be_immutable
class Payment extends StatefulWidget {
  double total  ;
  Payment(this.total);

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  bool isCashcheck = false;
  bool iscreditCardChecked = false;
  TextEditingController addressController = TextEditingController();
  TextEditingController florController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController codePostalController = TextEditingController();
  var phoneNumberController = TextEditingController();
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
      body: SingleChildScrollView(
        child: Container(
          color: Config.white,
          height: Config.getHeight(context),
          width:  Config.getWidth(context),
          child: Column(
            children: [
              Container(
                alignment: AlignmentGeometry.lerp(Alignment.topLeft, Alignment.bottomRight,Config.getWidth(context)/300000),
                margin: EdgeInsets.fromLTRB(Config.getHeight(context)/30,Config.getHeight(context)/30, 0, 0),
                child: Text('address',style :TextStyle(color: Config.black,fontSize: 24,fontWeight: FontWeight.w500,decoration: TextDecoration.none),),
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
                    Text("Add your address",style :TextStyle(color: Config.black,fontSize: 22,fontWeight: FontWeight.w400,decoration: TextDecoration.none),),
                    SizedBox(width: Config.getWidth(context)/3.5,),
                    GestureDetector(
                      child: Icon(Icons.add_circle_outline,color: Config.black,size: 26,),
                      onTap: (){addingaddress(context);},
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
      ),
    );
  }

  addingaddress(BuildContext context) {
    showDialog(context: context, builder: (context){
      return  Center(
        child: SingleChildScrollView(
          child: AlertDialog(
            contentPadding: const EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 24.0),
            shape: RoundedRectangleBorder( borderRadius:  BorderRadius.circular(18.0)),
            content:Container(
            height: Config.getHeight(context)/1.5,
            width: Config.getWidth(context)/1.1,
            decoration: BoxDecoration(
              color: Config.white,
              borderRadius:  BorderRadius.circular(50.0),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Add Address",style :TextStyle(color: Config.black,fontSize: 20,fontWeight: FontWeight.w500,decoration: TextDecoration.none),),
                    SizedBox(width: Config.getWidth(context)/3.2,),
                    IconButton(icon: FaIcon(Icons.close,size: 26,), onPressed: (){
                      Navigator.pop(context);
                    })
                  ],
                ),
                SizedBox(height: Config.getWidth(context)/15,),
                Form(
                  child: Column(
                    children: [
                      input("Address", addressController, context),
                      input("Unit/Floor", florController, context),
                      input("State", stateController, context),
                      input("Code Postal", codePostalController, context),
                      input("Phone Number", phoneNumberController, context),
                      SizedBox(height: Config.getWidth(context)/10,),
                      Align(
                        alignment: Alignment.center,
                        child: ElevatedButton(
                          onPressed:(){},
                          child: Container(
                            height: 50,
                            width: 150,
                            child: Center(
                              child: Text("Submit",style: TextStyle(fontSize: 18,color: Config.black),)),
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
                    )
                  ],
                ))
              ],
            ),
          )),
        ),
      );
    });
  }


  Widget input(String hint,TextEditingController controller,BuildContext context){
    return   Container(
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      width: Config.getWidth(context)/1.45,                
                      height: Config.getWidth(context)/7,
                      decoration: BoxDecoration(
                        borderRadius:  BorderRadius.circular(22),
                        color: Colors.white,
                      ),
                    child: TextFormField(
                      validator: (val) {
                        return null;
                      },
                      controller: controller,
                      style: TextStyle(fontSize: 16,  color: Config.darkGray),
                      decoration: InputDecoration(
                        hintStyle: TextStyle(fontWeight: FontWeight.w400, fontSize: 16,color: Config.darkGray),
                        hintText: hint,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(22),
                          borderSide: BorderSide(
                            color: Config.darkGray.withOpacity(0.2),
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
                      ),
                    ),
                  );
  }
}