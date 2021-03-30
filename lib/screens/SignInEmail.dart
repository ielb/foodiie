import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodiie/config/config.dart';
import 'package:foodiie/screens/HomePage.dart';
import 'package:foodiie/screens/Reset_page.dart';
import 'package:foodiie/screens/SignUp_Screen.dart';
import 'package:foodiie/widgets/Widgets.dart';
import 'package:foodiie/widgets/clipPath.dart';

class SignInEmail extends StatefulWidget {
  SignInEmail({Key key}) : super(key: key);

  @override
  _SignInEmailState createState() => _SignInEmailState();
}

class _SignInEmailState extends State<SignInEmail> {

  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  var _obscureText = true;
  var key = Key('form');



  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: SingleChildScrollView(
          child: Container(
          height: Config.getHeight(context),
          width: Config.getWidth(context),
          color: Config.white,
          child: Column(
            children:<Widget> [
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
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Form(
                key:key,
                child:Column(
                  children:<Widget> [
                    Widgets.input(FontAwesomeIcons.envelope,'E-mail', _emailController, false, null, false,null,null,null,context),
                    Widgets.input(FontAwesomeIcons.lock,'Password', _passwordController, _obscureText,IconButton(icon: Icon( _obscureText ? Icons.visibility : Icons.visibility_off,color: Config.darkGray.withOpacity(0.5) , ),
                        onPressed: () {
                          FocusScope.of(context).requestFocus(FocusNode());
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                      )  ,true,null,null,null,context),
                  ],
                ) 
              ),
            ),
            Container( margin: EdgeInsets.fromLTRB(Config.getWidth(context)/2.8, 0, 0, 0),
              child: TextButton(onPressed: (){
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return new ResetPage();
              }
              ));
              }, child: Text('Forget password ?',style: TextStyle(color: Config.black,fontSize: 18,fontWeight: FontWeight.w400),),)),

            Container(
              height:Config.getHeight(context)/15 ,
              width: Config.getWidth(context)/1.55,
              child: ElevatedButton(onPressed: (){
                Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return new HomePage();
                        }
                        ));
              }, 
              child: Text('Sign In',style: TextStyle(color: Config.black,fontSize: 21,fontWeight: FontWeight.w500),),
              style:OutlinedButton.styleFrom(
                  backgroundColor: Config.yallow,
                  shadowColor: Config.yallow.withOpacity(0.4),
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22.0),
                    )
                ),
              )
              
            ),
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
              ],)])
          ),
        ),
      );
  }
}