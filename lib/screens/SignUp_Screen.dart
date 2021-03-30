import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodiie/config/config.dart';
import 'package:foodiie/screens/SignIn.dart';
import 'package:foodiie/widgets/Widgets.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class SignUp extends StatefulWidget {
  SignUp({Key key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _obscureText = true;
  TextEditingController  _nameController ,_emailController,_passwordController,_adressController,_phoneNumberController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0,
        foregroundColor: Colors.transparent,
        bottomOpacity: 0,
        backgroundColor: Config.white,
        leading: IconButton(onPressed: (){
            Navigator.pop(context);
        },icon:FaIcon( FontAwesomeIcons.chevronLeft,color: Config.black,),),
        actions: [TextButton(onPressed: (){
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) {
                return new SignIn();
              }
              ));
        }, child: Text('Sign In',style: TextStyle(color: Config.black,fontSize: 18),),)],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: Config.getHeight(context),
          width: Config.getWidth(context),
          decoration: BoxDecoration(color: Config.white),
          child: Column(children: [
            Align(
                  alignment: Alignment.lerp(Alignment.topLeft, Alignment.bottomRight, 0.18),
                  child: Text('Sign Up',style: TextStyle(color: Config.black.withOpacity(0.8),fontSize: Config.getWidth(context)/16,decoration: TextDecoration. none,fontWeight: FontWeight.w600),),
                ),
            Form(child: Column(children: [
              Widgets.input(null,'Full name', _nameController, false,null,false,null,null,null,context),
              Widgets.input(null,'E-mail', _emailController, false,null,false,null,null,null,context),
              Widgets.input(null,'Password', _passwordController, _obscureText,IconButton(icon: Icon( _obscureText ? Icons.visibility : Icons.visibility_off,color: Config.darkGray.withOpacity(0.5) , ),
                          onPressed: () {
                            FocusScope.of(context).requestFocus(FocusNode());
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                        )  ,true,null,null,null,context),
            Widgets.input(null,'Confirme password', _passwordController, _obscureText,IconButton(icon: Icon( _obscureText ? Icons.visibility : Icons.visibility_off,color: Config.darkGray.withOpacity(0.5) , ),
                          onPressed: () {
                            FocusScope.of(context).requestFocus(FocusNode());
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                        )  ,true,null,null,null,context),
              Widgets.input(null,'Adress', _adressController, false,null,false,null,null,null,context),
              Container(
                margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                width: Config.getWidth(context)/1.3,                
                height: Config.getWidth(context)/7,
                child: IntlPhoneField(
                  controller: _phoneNumberController,
                  decoration: InputDecoration(
                  hintStyle: TextStyle(fontWeight: FontWeight.w400, fontSize: 16,color: Config.darkGray),
                  hintText: '\b\b\b\bPhone number',
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
                  )
                  ),
                  initialCountryCode: 'MA',
                  onChanged: (phone) {
                    print(phone.completeNumber);
                  },),
              ),
            ],)),
            Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
              height:Config.getHeight(context)/15 ,
              width: Config.getWidth(context)/1.7,
              child: ElevatedButton(
                onPressed: (){
                
                },
                style:OutlinedButton.styleFrom(
                  backgroundColor: Config.yallow,
                  shadowColor: Config.mediumYallow.withOpacity(0.6),
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22.0),
                    )
                ),
            child: Text('Sign Up',style: TextStyle(color: Config.white.withOpacity(0.8),fontSize: Config.getWidth(context)/16,decoration: TextDecoration. none,fontWeight: FontWeight.w600)),
          ))
          ],),
        ),
      ),
    );
  }
}