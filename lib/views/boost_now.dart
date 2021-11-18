import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:smartpro_clean_booster/views/sucess_screen.dart';
import 'package:smartpro_clean_booster/widgets/fade_transaction_navigation.dart';
class BoostNow extends StatefulWidget {
  @override
  _BoostNowState createState() => _BoostNowState();
}

class _BoostNowState extends State<BoostNow> {
  int percentage = 0;
  late Timer time;
  int byte = 0;
  int rand = 100;
  void getRandom(){
    rand = Random().nextInt(300);
  }
  @override
  void initState() {
    super.initState();
    getRandom();
    time = Timer.periodic(Duration(milliseconds: 100), (timer) {
      if(percentage == 100){
        setState(() {
          byte = Random().nextInt(6);
        });
        Navigator.pushReplacement(context, FadeRoute(page: SuccessScreen("Released for 2.45GB","")));
        time.cancel();
      }else{
        setState(() {
          percentage++;
        });
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F8F8),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("$percentage%",style: TextStyle(fontSize: 22),),
          SizedBox(height: 30,),
          Image.asset("images/boost.gif"),
          SizedBox(height: 40,),
          Text("Freeing Memory!"),
          SizedBox(height: 20,),
          Text("0.${byte}Byte",style: TextStyle(fontSize: 25),)
        ],
      ),
    );
  }
}
