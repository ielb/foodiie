



import 'package:flutter/material.dart';
import 'package:foodiie/config/config.dart';
import 'package:foodiie/screens/SignInEmail.dart';
import 'package:foodiie/screens/SignUp_Screen.dart';
import 'package:foodiie/widgets/clipPath.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignIn extends StatefulWidget {
  SignIn({Key key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Config.getHeight(context),
      width: Config.getWidth(context),
      color: Config.white,
      child: Column(
        children: [
          ClipPath(
            clipper: ClipPathClass(),
            child: Container(
        height: Config.getHeight(context)/1.9,
        width: Config.getWidth(context),
        decoration: BoxDecoration(
            image: DecorationImage(
              colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.colorBurn),
              image: AssetImage(Config.mainPicture),
              fit: BoxFit.fitWidth,
             // alignment: Alignment.lerp(Alignment.topCenter, Alignment.bottomCenter, 0)
            ),
          
        ),
        child:  Column(
              children: [
                SizedBox(height: Config.getHeight(context)/5,),
                RichText(textAlign: TextAlign.center,
                  text: TextSpan( text: 'FOODIIE\n',style: TextStyle(textBaseline:TextBaseline.ideographic,color: Config.white,fontSize: 58,fontWeight: FontWeight.w800),
                children: [
                  TextSpan(text: 'Want Food?We deliver',
                  style: TextStyle(textBaseline:TextBaseline.ideographic,color: Config.white,fontSize: 18,fontWeight: FontWeight.normal)
                  )
                  ]
                ),
                ),]),
        ),
          ),
      SizedBox(height: 45,),
      Container(
        height:Config.getHeight(context)/16 ,
        width: Config.getWidth(context)/1.35,
        child: ElevatedButton(
          onPressed: (){
              Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) {
                return new SignInEmail();
              }
              ));
              },
              style:OutlinedButton.styleFrom(
                  backgroundColor: Config.yallow,
                  shadowColor: Config.mediumYallow.withOpacity(0.6),
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22.0),
                    )
                ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FaIcon(FontAwesomeIcons.envelope,color: Config.black,size: 22,),
              SizedBox(width: Config.getWidth(context)/30,),
              RichText(
                    text: TextSpan( text: 'Continue with E-mail',style:  TextStyle(color: Config.black,fontSize: 18,fontWeight: FontWeight.w400),)
              )],
          ),
        ),
      ),
      SizedBox(height: 18,),
      Container(
        height:Config.getHeight(context)/16 ,
        width: Config.getWidth(context)/1.35,
        child: ElevatedButton(
          onPressed: (){
              Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) {
                return new SignIn();
              }
              ));
              },
              style:OutlinedButton.styleFrom(
                  backgroundColor: Config.black,
                  shadowColor: Config.black.withOpacity(0.6),
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22.0),
                    )
                ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FaIcon(FontAwesomeIcons.apple,color: Config.white,size: 20,),
              SizedBox(width: Config.getWidth(context)/30,),
              RichText(
                    text: TextSpan( text: 'Continue with Appel',style:  TextStyle(color: Config.white,fontSize: 18,fontWeight: FontWeight.w400),)
              )],
          ),
        ),
      ),
      SizedBox(height: 18,),
      Container(
        height:Config.getHeight(context)/16 ,
        width: Config.getWidth(context)/1.35,
        child: ElevatedButton(
          onPressed: (){
              Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) {
                return new SignIn();
              }
              ));
              },
              style: OutlinedButton.styleFrom(
                  backgroundColor: Config.darkBlue,
                  shadowColor: Config.darkBlue.withOpacity(0.6),
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22.0),
                    )
                ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FaIcon(FontAwesomeIcons.facebook,color: Config.white,size: 20,),
              SizedBox(width: Config.getWidth(context)/30,),
              RichText(
                    text: TextSpan( text: 'Continue with Facebook',style:  TextStyle(color: Config.white,fontSize: 18,fontWeight: FontWeight.w400),)
              )],
          ),
        ),
      ),
      SizedBox(height: 20,),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        RichText(text: TextSpan(text:"Don't have an account? ",style: TextStyle(color: Config.darkGray,fontSize: 16))),
        TextButton(onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return new SignUp();
              }
              ));
        }, child: Text('SignUp',style: TextStyle(color: Config.black,fontSize: 18),),)
      ],)
      ],),
    );
  }
}