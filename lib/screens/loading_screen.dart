import 'package:flutter/material.dart';
import 'package:foodiie/config/config.dart';

class LoadingScreen extends StatefulWidget {
  LoadingScreen({Key key}) : super(key: key);

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return  Container(
        height: Config.getHeight(context),
        width: Config.getWidth(context),
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.colorBurn),
            image: AssetImage(Config.mainPicture),
            fit: BoxFit.fill,
          ),
        ),
        child: 
          Column(
              children: [
                SizedBox(height: Config.getHeight(context)/3,),
                RichText(textAlign: TextAlign.center,
                  text: TextSpan( text: 'FOODIIE\n',style: TextStyle(textBaseline:TextBaseline.ideographic,color: Config.white,fontSize: 58,fontWeight: FontWeight.w800),
                children: [
                  TextSpan(text: 'Want Food?We deliver',
                  style: TextStyle(textBaseline:TextBaseline.ideographic,color: Config.white,fontSize: 18,fontWeight: FontWeight.normal)
                  )
                  ]
                ),
                ),
              SizedBox(height: Config.getHeight(context)/3,),
              RichText(textAlign: TextAlign.center,
                  text: TextSpan( text: 'Loading ...\n',style: TextStyle(textBaseline:TextBaseline.ideographic,color: Config.white,fontSize: 22,fontWeight: FontWeight.w600),
                  )),
              // SizedBox(height: Config.getHeight(context)/8,),
              CircularProgressIndicator.adaptive(valueColor: AlwaysStoppedAnimation<Color>(Config.mediumYallow),)
              ],
            ),
    );
  }
}