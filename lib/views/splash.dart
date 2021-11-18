import 'dart:async';
import 'package:adobe_xd/adobe_xd.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:provider/provider.dart';
import 'package:smartpro_clean_booster/constants.dart';
import 'package:smartpro_clean_booster/controller/app_controller.dart';
import 'package:smartpro_clean_booster/views/home_page.dart';
import 'package:smartpro_clean_booster/widgets/fade_transaction_navigation.dart';
class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  String value = "0.0";
  int indc = 0;
  late Timer time;
  @override
  void initState() {
    super.initState();
    final pro = Provider.of<AppController>(context,listen: false);
    pro.getBatteryData();
    pro.getApp();
    Future.delayed(Duration(seconds: 5),(){
      Navigator.pushReplacement(context, FadeRoute(page: HomePage()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("images/splash.png",height: 200,),
                Hero(
                  tag: "name",
                  child: Text("Boost your Phone",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                ),
                Text("increase your phone speed with Smart Cleaner\n increase usage of battery, avoid your\n phone from junk,",textAlign: TextAlign.center,)
              ],
            )),
          Align(
            alignment: Alignment(-1.6,-1.2),
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kUprBlueContainer
              ),
            ),
          ),
          Align(
            alignment: Alignment(-1.6,1.3),
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kUprBlueContainer
              ),
            ),
          ),
          Align(
            alignment: Alignment(1.4,0.1),
            child: Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kUprBlueContainer
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.9,-0.5),
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kUprBlueContainer.withOpacity(0.4)
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.3,0.5),
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kUprBlueContainer.withOpacity(0.4)
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.6,-0.3),
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kUprBlueContainer.withOpacity(0.4)
              ),
            ),
          )
        ],
      )
    );
  }
}
