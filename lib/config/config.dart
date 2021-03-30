
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Config {

  static  Color white = Colors.white;
  static  Color skyBlue = Color(0xff0a84ff);
  static  Color darkBlue = Color(0xff3b5998);
  static  Color gray = Color(0xffdbdbdb);
  static  Color mediumYallow = Color(0xffffdb7b);
  static Color yallowWhite = Color(0xfffff9e9);
  static Color yallowWhite2 = Color(0xffffebae);
  static Color yallowWhite3 = Color(0xffffe193);
  static Color yallow = Color(0xffffc529);
  static Color black = Colors.black;
  static Color shadow = Color(0xff9A9A9A);
  static Color darkGray = Color(0xff89898a) ;
  static Color whiteGray = Color(0xfff5f5f5) ;
  static String mainPicture = "assets/mainPicture.jpg";
  static String svg1 = 'assets/svg1.svg';
  static String svg2 = 'assets/svg2.svg';
  static String svg3 = 'assets/svg3.svg';

  static double getHeight(context){
    return MediaQuery.of(context).size.height;
  }
  static double getWidth(context){
    return MediaQuery.of(context).size.width;
  }


  static Widget getSvg1 = SvgPicture.asset(svg1,);
  static Widget getSvg2 = SvgPicture.asset(svg2,);
  static Widget getSvg3 = SvgPicture.asset(svg3,);
  
static String bag = 'assets/shopping_bag.svg';
static Widget bagIcon = SvgPicture.asset(bag,height: 26,width: 26,);
static Widget bagIcon2 = SvgPicture.asset(bag,height: 21,width: 21,);

static String slider = 'assets/slider.svg';
static Widget sliderIcon = SvgPicture.asset(slider,height: 21,width: 21,);

static String pizza = 'assets/pizza.png';
}



