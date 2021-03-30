import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodiie/config/config.dart';
import 'package:foodiie/widgets/Widgets.dart';

class ResetPage extends StatefulWidget {
  ResetPage({Key key}) : super(key: key);

  @override
  _ResetPageState createState() => _ResetPageState();
}

class _ResetPageState extends State<ResetPage> {
  TextEditingController _nameController = new TextEditingController();
    TextEditingController _emailController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0,
        foregroundColor: Colors.transparent,
        bottomOpacity: 0,
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){
            Navigator.pop(context);
        },icon:FaIcon( FontAwesomeIcons.chevronLeft,color: Config.black,),),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: Config.getHeight(context),
          width: Config.getWidth(context),
          decoration: BoxDecoration(color: Config.white),
          child: Column(
            children: [
              SizedBox(height: Config.getWidth(context)/20,),
              Align(
                alignment: Alignment.lerp(Alignment.topLeft, Alignment.bottomRight, 0.25),
                child: Text('Reset password',style: TextStyle(color: Config.black.withOpacity(0.8),fontSize: Config.getWidth(context)/16,decoration: TextDecoration. none,fontWeight: FontWeight.w600),),
              ),
              SizedBox(height: Config.getWidth(context)/20,),
              Form(child: Column(
                children: [
                    Widgets.input(FontAwesomeIcons.user, 'Full name', _nameController, false, null, false,null,null,null,context)
                    ,Widgets.input(FontAwesomeIcons.envelope, 'E-mail', _emailController, false, null, false,null,null,null,context)

                ],
              )),
              SizedBox(     height:Config.getHeight(context)/8 ),
              Container(
              height:Config.getHeight(context)/15 ,
              width: Config.getWidth(context)/1.7,
              child: ElevatedButton(
                onPressed: (){
                
                },
                style:OutlinedButton.styleFrom(
                  backgroundColor: Config.yallow,
                  shadowColor: Config.mediumYallow,
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22.0),
                    )
                ),
            child: Text('Send',style: TextStyle(color: Config.white.withOpacity(0.8),fontSize: Config.getWidth(context)/16,decoration: TextDecoration. none,fontWeight: FontWeight.w600)),
          ),
        ),
            ],
          ),
        ),
      ),
    );
  }
}