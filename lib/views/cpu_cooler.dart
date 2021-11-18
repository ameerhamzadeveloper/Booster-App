import 'package:flutter/material.dart';
import 'package:smartpro_clean_booster/constants.dart';
import 'package:smartpro_clean_booster/views/sucess_screen.dart';
import 'package:smartpro_clean_booster/widgets/fade_transaction_navigation.dart';
class CPUCooler extends StatefulWidget {
  @override
  _CPUCoolerState createState() => _CPUCoolerState();
}

class _CPUCoolerState extends State<CPUCooler> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5),(){
      Navigator.pushReplacement(context, FadeRoute(page: SuccessScreen("Put aside 30s Will be better.","Temperature reduced1${degreeSymbol}C")));
    });
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("images/cpu.gif")
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text("31$degreeSymbol.0",style: TextStyle(fontSize: 32,color: Colors.white,fontWeight: FontWeight.bold),),
            Text("Start Cooling",style: TextStyle(fontSize: 18,color: Colors.white,),),
            SizedBox(height: 120,)
          ],
        ),
      ),
    );
  }
}
