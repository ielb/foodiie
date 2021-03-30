

import 'package:flutter/material.dart';
import 'package:foodiie/config/config.dart';
import 'package:foodiie/screens/SignIn.dart';

class GettingStartedone extends StatelessWidget {
  const GettingStartedone({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: Config.getHeight(context),
        width: Config.getWidth(context),
        decoration:  BoxDecoration(
          color: Config.white
        ),
        child: Column(
          children: [
          SizedBox(height: Config.getHeight(context)/18,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Container(width: 30,height: 10,decoration: BoxDecoration(
              color: Config.yallow,
              borderRadius: BorderRadius.all(Radius.circular(6))
            ), ),
            SizedBox(width: Config.getWidth(context)/40,),
            GestureDetector(
              onTap: (){
                  Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) {
                return GettingStartedTwo(); 
              }
              ));
              },
              child: Container(width: 10,height: 10,decoration: BoxDecoration(
                color: Config.gray,
                borderRadius: BorderRadius.all(Radius.circular(30))
              ),),
            ),
            SizedBox(width: Config.getWidth(context)/40,),
            GestureDetector(
              onTap: (){
                  Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) {
                return GettingStartedThree(); 
              }
              ));
              },
              child: Container(width: 10,height: 10,decoration: BoxDecoration(
                color: Config.gray,
                borderRadius: BorderRadius.all(Radius.circular(30))
              ),),
            ),
          ],),
          SizedBox(height: Config.getHeight(context)/10,),
          RichText(textAlign:TextAlign.center,text: TextSpan(text: 'Are you tired of cooking?\nGet in touch!',style: TextStyle(color: Config.black,fontSize: 21,fontWeight: FontWeight.w500))),
          SizedBox(height: Config.getHeight(context)/20,),
          RichText(textAlign:TextAlign.center,text: TextSpan(text: 'We Delivery in Time.',style: TextStyle(color: Config.darkGray,fontSize: 16,fontWeight: FontWeight.w400))),
          SizedBox(height: Config.getHeight(context)/15,),
          Config.getSvg1,
          SizedBox(height: Config.getHeight(context)/10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            TextButton(onPressed: (){
              Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) {
                return GettingStartedThree();
              }
              ));
            }, child: Text('Skip',style: TextStyle(color: Config.darkGray,fontSize: 18,fontWeight: FontWeight.w500))),
            SizedBox(width: Config.getWidth(context)/2.5,),
            Container(
              width: 100,
              height: 40,
              child: ElevatedButton(onPressed: (){
                Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) {
                return GettingStartedTwo();
              }
              ));
              },child: Text('Next',style: TextStyle(color: Config.black,fontSize: 18,fontWeight: FontWeight.w400),),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Config.yallow),
                shape:MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(23.0),
                  )
                )                
              ),),
            )
          ],)           
        ],),
      ),
    );
  }
}




class GettingStartedTwo extends StatelessWidget {
  const GettingStartedTwo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: Config.getHeight(context),
        width: Config.getWidth(context),
        decoration:  BoxDecoration(
          color: Config.white
        ),
        child: Column(
          children: [
          SizedBox(height: Config.getHeight(context)/18,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            GestureDetector(
              onTap: (){
                  Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) {
                return GettingStartedone(); 
              }
              ));
              },
              child: Container(width: 10,height: 10,decoration: BoxDecoration(
                color: Config.gray,
                borderRadius: BorderRadius.all(Radius.circular(30))
              ),),
            ),
            SizedBox(width: Config.getWidth(context)/40,),
            Container(width: 30,height: 10,decoration: BoxDecoration(
              color: Config.yallow,
              borderRadius: BorderRadius.all(Radius.circular(6))
            ), ),
            SizedBox(width: Config.getWidth(context)/40,),
            GestureDetector(
              onTap: (){
                  Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) {
                return GettingStartedThree(); 
              }
              ));
              },
              child: Container(width: 10,height: 10,decoration: BoxDecoration(
                color: Config.gray,
                borderRadius: BorderRadius.all(Radius.circular(30))
              ),),
            ),
          ],),
          SizedBox(height: Config.getHeight(context)/10,),
          RichText(textAlign:TextAlign.center,text: TextSpan(text: 'Working from home and\nWithout time to cook.',style: TextStyle(color: Config.black,fontSize: 21,fontWeight: FontWeight.w500))),
          SizedBox(height: Config.getHeight(context)/20,),
          RichText(textAlign:TextAlign.center,text: TextSpan(text: 'We Delivery in Time.',style: TextStyle(color: Config.darkGray,fontSize: 16,fontWeight: FontWeight.w400))),
          SizedBox(height: Config.getHeight(context)/15,),
          Config.getSvg2,
          SizedBox(height: Config.getHeight(context)/10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            TextButton(onPressed: (){
              Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) {
                return GettingStartedThree();
              }
              ));
              }, child: Text('Skip',style: TextStyle(color: Config.darkGray,fontSize: 18,fontWeight: FontWeight.w500))),
            SizedBox(width: Config.getWidth(context)/2.5,),
            Container(
              width: 100,
              height: 40,
              child: ElevatedButton(onPressed: (){
                Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) {
                return GettingStartedThree(); 
              }
              ));
              },child: Text('Next',style: TextStyle(color: Config.black,fontSize: 18,fontWeight: FontWeight.w400),),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Config.yallow),
                shape:MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(23.0),
                  )
                )                
              ),),
            )
          ],)           
        ],),
      ),
    );
  }
}

class GettingStartedThree extends StatelessWidget {
  const GettingStartedThree({Key key}) : super(key: key);

 @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: Config.getHeight(context),
        width: Config.getWidth(context),
        decoration:  BoxDecoration(
          color: Config.white
        ),
        child: Column(
          children: [
          SizedBox(height: Config.getHeight(context)/18,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            GestureDetector(
              onTap: (){
                  Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) {
                return GettingStartedone(); 
              }
              ));
              },
              child: Container(width: 10,height: 10,decoration: BoxDecoration(
                color: Config.gray,
                borderRadius: BorderRadius.all(Radius.circular(30))
              ),),
            ),
            SizedBox(width: Config.getWidth(context)/40,),
            GestureDetector(
              onTap: (){
                  Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) {
                return GettingStartedTwo(); 
              }
              ));
              },
              child: Container(width: 10,height: 10,decoration: BoxDecoration(
                color: Config.gray,
                borderRadius: BorderRadius.all(Radius.circular(30))
              ),),
            ),
            SizedBox(width: Config.getWidth(context)/40,),
            Container(width: 30,height: 10,decoration: BoxDecoration(
              color: Config.yallow,
              borderRadius: BorderRadius.all(Radius.circular(6))
            ), ),
          ],),
          SizedBox(height: Config.getHeight(context)/10,),
          RichText(textAlign:TextAlign.center,text: TextSpan(text: "We're #1 Food App\nDelivery in the country.",style: TextStyle(color: Config.black,fontSize: 21,fontWeight: FontWeight.w500))),
          SizedBox(height: Config.getHeight(context)/20,),
          RichText(textAlign:TextAlign.center,text: TextSpan(text: 'We Delivery in Time.',style: TextStyle(color: Config.darkGray,fontSize: 16,fontWeight: FontWeight.w400))),
          SizedBox(height: Config.getHeight(context)/15,),
          Config.getSvg3,
          SizedBox(height: Config.getHeight(context)/10,),
          Container(
              width: 150,
              height: 45,
              child: ElevatedButton(onPressed: (){
              Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) {
                return new SignIn();
              }
              ));
              },child: Text('Get Started',style: TextStyle(color: Config.black,fontSize: 18,fontWeight: FontWeight.w400),),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Config.yallow),
                shape:MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(23.0),
                  )
                )                
              ),),
            )           
        ],),
      ),
    );
  }
}