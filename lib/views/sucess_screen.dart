import 'package:flutter/material.dart';
import 'package:smartpro_clean_booster/constants.dart';
import 'package:smartpro_clean_booster/widgets/fade_transaction_navigation.dart';

import 'final_screen.dart';
class SuccessScreen extends StatefulWidget {
  final String message;
  final String value;
  SuccessScreen(this.message,this.value);
  @override
  _SuccessScreenState createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacement(context, FadeRoute(page: FinalScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEEEEEE),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("images/success.gif",height: 100,width: 100,fit: BoxFit.fill,),
            SizedBox(height: 80,),
            Text(widget.message,style: TextStyle(fontSize: 20),),
            SizedBox(height: 30,),
            Text(widget.value)
          ],
        ),
      ),
    );
  }
}
