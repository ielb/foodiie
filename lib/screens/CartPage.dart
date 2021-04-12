import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodiie/config/config.dart';
import 'package:foodiie/screens/HomePage.dart';

class CartPage extends StatefulWidget {
  CartPage({Key key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
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
      ),
    );
  }
}