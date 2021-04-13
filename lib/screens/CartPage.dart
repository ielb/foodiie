import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodiie/config/config.dart';
import 'package:foodiie/screens/HomePage.dart';
import 'package:foodiie/widgets/Widgets.dart';
import 'package:toast/toast.dart';

class CartPage extends StatefulWidget {
  CartPage({Key key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int items = 4;
  int orders = 1;
  double subtotal ;
  double total ;
  double delevery =10.0;
  int price = 23;
  String title = "Perperoni Piza";
  @override
  void initState() { 
   
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
     subtotal = (price * items).toDouble() ;
    total = subtotal + delevery;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        bottomOpacity: 0,
        backgroundColor: Config.white,
        leading: IconButton(
          onPressed: (){
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) {
                return new HomePage();
              }));
          },
          icon: FaIcon(FontAwesomeIcons.chevronLeft,color: Config.black,),),
      ),       
      body: Container(
        height: Config.getHeight(context),
        width: Config.getWidth(context),
        color: Config.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
          Container(alignment: AlignmentGeometry.lerp(Alignment.topLeft, Alignment.bottomRight, Config.getWidth(context)/5000),
            child: RichText(
              text: TextSpan(text: "Cart ",style: TextStyle(color: Config.black,fontSize: 24,fontWeight: FontWeight.w500),
                children: [
                  TextSpan(text: "($items items)",style:TextStyle(color: Config.black,fontSize: 18,fontWeight: FontWeight.w300) )
                ]
              ),
            )
          ),
          SizedBox(height: Config.getHeight(context)/18,),
          Container(
            height: Config.getHeight(context)/2.3,
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context,i){
                return  Widgets.cartItem(context,title,orders,price,
                (){
                    print("View Product taped");
                },
                (){
                  setState(() {
                    if(orders==0){
                      Toast.show("Please you can't remove more orders", context);
                    }else{
                      orders --;
                    }
                  });
                },
                (){
                  setState(() {
                    if(orders>=9){
                      Toast.show("Please you can't add more orders", context);
                    }else{
                      orders ++;
                    }
                  });
                });
              }
            ),
          ),
          Container(
            margin:  EdgeInsets.fromLTRB(0,0,Config.getHeight(context)/15,Config.getHeight(context)/105), 
            child: RichText(
              text: TextSpan(text: "Sub-Total :\b\b\b",style: TextStyle(color: Config.black,fontSize: 18),
              children: [
                TextSpan(text: "\$$subtotal",style: TextStyle(color: Config.black,fontSize: 16,fontWeight: FontWeight.w400),)
              ]
              )
            ),
          ),
          Container(
            margin:  EdgeInsets.fromLTRB(0,0,Config.getHeight(context)/15,Config.getHeight(context)/105), 
            child: RichText(
              text: TextSpan(text: "Delivery :\b\b\b",style: TextStyle(color: Config.black,fontSize: 18),
              children: [
                TextSpan(text: "\$$delevery",style: TextStyle(color: Config.black,fontSize: 16,fontWeight: FontWeight.w400),)
              ]
              )
            ),
          ),
          Container(
            margin:  EdgeInsets.fromLTRB(0,0,Config.getHeight(context)/15,Config.getHeight(context)/165), 
            child: RichText(
              text: TextSpan(text: "Total :\b\b\b",style: TextStyle(color: Config.black,fontSize: 18),
              children: [
                TextSpan(text: "\$$total",style: TextStyle(color: Config.black,fontSize: 16,fontWeight: FontWeight.w400),)
              ]
              )
            ),
          ),
          SizedBox(height: Config.getHeight(context)/20,),
          Align(
            alignment: Alignment.center,
            child: ElevatedButton(
              onPressed:(){
                print("Chekout pressed");
              },
              child: Container(
                height: 50,
                width: 150,
                child: Center(
                  child: Text("Checkout Now",style: TextStyle(fontSize: 18,color: Config.black),)),
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
        ],),
      ),
    );
  }
}