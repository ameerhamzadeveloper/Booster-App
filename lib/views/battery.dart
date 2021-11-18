import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smartpro_clean_booster/controller/app_controller.dart';
import 'package:smartpro_clean_booster/views/sucess_screen.dart';
import 'package:smartpro_clean_booster/widgets/fade_transaction_navigation.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';
class BatteryPage extends StatefulWidget {
  @override
  _BatteryPageState createState() => _BatteryPageState();
}

class _BatteryPageState extends State<BatteryPage> with TickerProviderStateMixin{
  late AnimationController imageController;
  late Animation<double> imageAnimation;

  List<IconData> icns = [
    Icons.ad_units,
    Icons.battery_alert,
    Icons.cancel,
    Icons.security
  ];
  void imageAnimationDo(){
    final pro = Provider.of<AppController>(context,listen: false);
    imageController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));

    imageAnimation = Tween<double>(begin: 0.1, end: 1.0).animate(
        CurvedAnimation(parent: imageController, curve: Curves.easeIn));
    animatedimageconti();
    imageAnimation.addStatusListener((status) {
      if (status == AnimationStatus.completed){
        if(pro.installedApps.length > 5 ? pro.current == 5 : pro.current == pro.installedApps.length){
          Navigator.pushReplacement(context, FadeRoute(page: SuccessScreen("","3minutes of use time has been extended")));
        }else{
          pro.increment();
          imageController.reverse();
        }
      }
      else if (status == AnimationStatus.dismissed)
        imageController.forward();
    });
  }
  void animatedimageconti(){
    imageController.forward();
  }
  @override
  void initState() {
    super.initState();
    imageAnimationDo();
  }
  @override
  void dispose() {
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final pro = Provider.of<AppController>(context);
    double circleSize = 100;
    double iconSize = 50;
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: WaveWidget(
              config: CustomConfig(
                gradients: [
                  [Colors.red, Color(0xEEF44336)],
                  [Colors.red, Color(0x77E57373)],
                  [Colors.orange, Color(0x66FF9800)],
                  [Colors.yellow, Color(0x55FFEB3B)]
                ],
                durations: [35000, 19440, 10800, 6000],
                heightPercentages: [0.20, 0.23, 0.25, 0.30],
                blur: MaskFilter.blur(BlurStyle.solid, 10),
                gradientBegin: Alignment.bottomLeft,
                gradientEnd: Alignment.topRight,
              ),
              waveAmplitude: 0,
              size: Size(
                double.infinity,
                MediaQuery.of(context).size.height / 2,
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.0,0.7),
            child: Text(pro.batteryLevel,style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 70,),
                AvatarGlow(
                  startDelay: Duration(milliseconds: 1000),
                  glowColor: Colors.black,
                  endRadius: 160.0,
                  duration: Duration(milliseconds: 2000),
                  repeat: true,
                  showTwoGlows: true,
                  repeatPauseDuration: Duration(milliseconds: 100),
                  child: Container(
                    height: 150,
                    width: 150,
                    child: ScaleTransition(
                      scale: imageAnimation,
                      child: Image.asset("images/clean.png",height: 40,width: 40,),
                    ),
                  )
                ),
                Text(pro.installedApps[pro.currentListIcons].appName),
                Text("${pro.currentListIcons+1}/${pro.installedApps.length}",style: TextStyle(fontSize: 20),),
                SizedBox(height: 10,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
