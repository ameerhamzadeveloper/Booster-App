import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smartpro_clean_booster/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smartpro_clean_booster/controller/app_controller.dart';
import 'package:smartpro_clean_booster/views/battery.dart';
import 'package:smartpro_clean_booster/views/boost_now.dart';
import 'package:smartpro_clean_booster/views/cpu_cooler.dart';
import 'package:smartpro_clean_booster/widgets/fade_transaction_navigation.dart';
import 'package:smartpro_clean_booster/widgets/final_clip_path.dart';
import 'package:smartpro_clean_booster/widgets/final_screen_card.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class FinalScreen extends StatefulWidget {
   @override
  _FinalScreenState createState() => _FinalScreenState();
}

class _FinalScreenState extends State<FinalScreen> {

  TextStyle whiteText = TextStyle(color: Colors.white);

  @override
  Widget build(BuildContext context) {
    final pro = Provider.of<AppController>(context);
    return Scaffold(
      body: Column(
        children: [
          ClipPath(
            clipper: UpperContainerClipper(),
            child: Container(
              height: MediaQuery.of(context).size.height / 2.5,
              decoration: BoxDecoration(
                color: kUprBlueContainer,
              ),
              child: SafeArea(
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Opacity(
                        opacity: 0.5,
                        child: WaveWidget(
                          config: CustomConfig(
                            gradients: [
                              [Colors.white.withOpacity(0.2), Colors.grey.withOpacity(0.2)],
                              [Colors.grey.withOpacity(0.2), Colors.white.withOpacity(0.2)],
                              [Colors.white.withOpacity(0.2), Colors.grey.withOpacity(0.2)],
                              [Colors.grey.withOpacity(0.2), Colors.white.withOpacity(0.2)],
                            ],
                            durations: [35000, 19440, 10800, 6000],
                            heightPercentages: [0.30, 0.23, 0.35, 0.30],
                            blur: MaskFilter.blur(BlurStyle.solid, 10),
                            gradientBegin: Alignment.bottomLeft,
                            gradientEnd: Alignment.topRight,
                          ),
                          waveAmplitude: 0,
                          size: Size(
                            double.infinity,
                            MediaQuery.of(context).size.height / 6,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment(-1.0,-1.0),
                      child: IconButton(
                        icon: Icon(Icons.arrow_back_ios,color: Colors.white,),
                        onPressed: ()=>Navigator.pop(context),
                      ),
                    ),
                    Align(
                      alignment: Alignment(0.0,-0.9),
                      child: Text(pro.pageTitle,style: TextStyle(color: Colors.white,fontSize: 22),)
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 50,),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Opacity(
                                opacity: 0.7,
                                child: pro.finalPageIcon!),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(pro.finalPageTitle,style: TextStyle(fontSize: 20,color: Colors.white),),
                              Text(pro.finalPageSubTitle,style: TextStyle(fontSize: 16,color: Colors.white),)
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                pro.fianlIndex == 2 ? Container(): FinalCards(
                 "Battery Saver",
                  "increase usage time",
                  SvgPicture.string(
                    '<svg viewBox="212.0 406.5 21.0 42.0" ><path transform="translate(205.81, 405.16)" d="M 24.3933277130127 5.574903011322021 L 20.88715934753418 5.574903011322021 L 20.88715934753418 1.37500011920929 L 12.48735427856445 1.37500011920929 L 12.48735427856445 5.574903011322021 L 8.981185913085938 5.574903011322021 C 7.443721294403076 5.574903011322021 6.187501430511475 6.831123352050781 6.187501430511475 8.368588447570801 L 6.187501430511475 40.56159210205078 C 6.187501430511475 42.1178092956543 7.443722248077393 43.37402725219727 8.981185913085938 43.37402725219727 L 24.37457847595215 43.37402725219727 C 25.9307918548584 43.37402725219727 27.18701362609863 42.1178092956543 27.18701362609863 40.58034515380859 L 27.18701362609863 8.368588447570801 C 27.18701362609863 6.831124305725098 25.9307918548584 5.574903011322021 24.3933277130127 5.574903011322021 Z M 14.58730506896973 39.17412567138672 L 14.58730506896973 27.62439155578613 L 10.38740158081055 27.62439155578613 L 18.78720664978027 11.87475681304932 L 18.78720664978027 23.42448806762695 L 22.98711013793945 23.42448806762695 L 14.58730506896973 39.17412567138672 Z" fill="#FAFAFA" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.contain,
                    height: 30,
                  ),
                  (){
                   Navigator.pushReplacement(context, FadeRoute(page: BatteryPage()));
                  },
                  kUprBlueContainer,
                ),
                pro.fianlIndex == 1 ? Container(): FinalCards(
                  "Boost Up",
                  "Memory usage up to 70%,please \noptimize",
                  SvgPicture.string(
                      '<svg viewBox="0.0 12.0 59.1 59.1" ><path transform="matrix(0.731354, -0.681998, 0.681998, 0.731354, 0.0, 40.5)" d="M 41.22674560546875 1.559199213981628 C 41.11960220336914 1.060205578804016 40.72980880737305 0.6704143285751343 40.23081588745117 0.5632708072662354 C 37.60221862792969 0 35.54587554931641 0 33.49687194824219 0 C 25.07229995727539 0 20.01918792724609 4.506167411804199 16.24853897094727 10.44908332824707 L 7.742332458496094 10.44908332824707 C 6.260782718658447 10.45033740997314 4.906625747680664 11.28709030151367 4.242705821990967 12.61155319213867 L 0.208380714058876 20.67693901062012 C -0.09454191476106644 21.28442001342773 -0.0614265613257885 22.00541496276855 0.2959067821502686 22.58256912231445 C 0.6532397270202637 23.15972328186035 1.283865213394165 23.51078224182129 1.962683081626892 23.51043701171875 L 10.43378829956055 23.51043701171875 L 8.599484443664551 25.34474182128906 C 7.579591751098633 26.3648509979248 7.579592704772949 28.01854515075684 8.599484443664551 29.03865432739258 L 12.75462818145752 33.19461441040039 C 13.77483177185059 34.21505355834961 15.42915630340576 34.21505355834961 16.44935989379883 33.19461441040039 L 18.28366088867188 31.36030960083008 L 18.28366088867188 39.83712768554688 C 18.28346061706543 40.51571273803711 18.63440895080566 41.14608001708984 19.21131706237793 41.50336456298828 C 19.78822326660156 41.86064910888672 20.50893211364746 41.89396667480469 21.1163444519043 41.5914306640625 L 29.17356300354004 37.55955505371094 C 30.50033950805664 36.89678955078125 31.33809089660645 35.54058074951172 31.33685111999512 34.0574836730957 L 31.33685111999512 25.53413200378418 C 37.26262283325195 21.75450134277344 41.78593444824219 16.6850643157959 41.78593444824219 8.302123069763184 C 41.79409790039062 6.244959354400635 41.79409790039062 4.187796115875244 41.22674560546875 1.559198975563049 Z M 31.34501457214355 13.71442127227783 C 29.54161262512207 13.71442127227783 28.07967185974121 12.25247955322266 28.07967185974121 10.44908237457275 C 28.07967185974121 8.645686149597168 29.54161262512207 7.183743476867676 31.34501075744629 7.183743476867676 C 33.14840698242188 7.183743476867676 34.6103515625 8.645686149597168 34.6103515625 10.44908237457275 C 34.6103515625 12.25247669219971 33.14840698242188 13.71442031860352 31.34501457214355 13.71442127227783 Z" fill="#0066ff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.contain,
                      height: 40),
                      (){
                        Navigator.pushReplacement(context, FadeRoute(page: BoostNow()));
                      },
                  Colors.orange,
                ),
                pro.fianlIndex == 4 ? Container(): FinalCards(
                  "Cool Temperature",
                  "Decrease CPU usage to ovoid\noverheat",
                  SvgPicture.string(
                    '<svg viewBox="204.0 500.0 38.0 38.0" ><path transform="translate(204.0, 500.0)" d="M 26.16714859008789 9.500019073486328 C 24.08236694335938 9.500019073486328 22.1526985168457 9.835483551025391 20.44791221618652 10.4544620513916 L 21.36895751953125 1.317487120628357 C 21.44911193847656 0.5426515340805054 20.76704788208008 -0.08745907992124557 19.98924446105957 0.009766458533704281 C 14.07407188415527 0.7519462108612061 9.500019073486328 5.762401580810547 9.500019073486328 11.83268928527832 C 9.500019073486328 13.91747188568115 9.835483551025391 15.84713935852051 10.4544620513916 17.55192565917969 L 1.317487120628357 16.63088035583496 C 0.5426515340805054 16.55072593688965 -0.08745907992124557 17.23278999328613 0.009766458533704281 18.01059532165527 C 0.7519462108612061 23.92576599121094 5.762401580810547 28.49981880187988 11.83269023895264 28.49981880187988 C 13.91747379302979 28.49981880187988 15.84714126586914 28.16435241699219 17.55192756652832 27.54537582397461 L 16.63088226318359 36.68235015869141 C 16.55295372009277 37.45644378662109 17.23278999328613 38.08729553222656 18.01059532165527 37.99007034301758 C 23.92576599121094 37.24789047241211 28.49981880187988 32.2374382019043 28.49981880187988 26.16714668273926 C 28.49981880187988 24.08236503601074 28.16435241699219 22.15269660949707 27.54537582397461 20.44791030883789 L 36.68235015869141 21.36895561218262 C 37.45718383789062 21.44688606262207 38.08729553222656 20.76704788208008 37.99007034301758 19.98924446105957 C 37.24789047241211 14.07407188415527 32.2374382019043 9.500018119812012 26.16714668273926 9.500018119812012 Z M 18.99991989135742 21.3748950958252 C 17.68825531005859 21.3748950958252 16.62494468688965 20.31158256530762 16.62494468688965 18.99991989135742 C 16.62494468688965 17.68825531005859 17.68825531005859 16.62494468688965 18.99991989135742 16.62494468688965 C 20.31158256530762 16.62494468688965 21.3748950958252 17.68825531005859 21.3748950958252 18.99991989135742 C 21.3748950958252 20.31158256530762 20.31158256530762 21.3748950958252 18.99991989135742 21.3748950958252 Z" fill="#ffdd00" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                    height: 30,
                  ),
                      (){
                        Navigator.pushReplacement(context, FadeRoute(page: CPUCooler()));
                      },
                  Colors.teal,
                ),
                pro.fianlIndex == 3 ? Container(): FinalCards(
                  "Clean",
                  "increase phone speed by clean\njunk files overheat",
                  SvgPicture.string(
                    '<svg viewBox="204.0 500.0 38.0 38.0" ><path transform="translate(204.0, 500.0)" d="M 26.16714859008789 9.500019073486328 C 24.08236694335938 9.500019073486328 22.1526985168457 9.835483551025391 20.44791221618652 10.4544620513916 L 21.36895751953125 1.317487120628357 C 21.44911193847656 0.5426515340805054 20.76704788208008 -0.08745907992124557 19.98924446105957 0.009766458533704281 C 14.07407188415527 0.7519462108612061 9.500019073486328 5.762401580810547 9.500019073486328 11.83268928527832 C 9.500019073486328 13.91747188568115 9.835483551025391 15.84713935852051 10.4544620513916 17.55192565917969 L 1.317487120628357 16.63088035583496 C 0.5426515340805054 16.55072593688965 -0.08745907992124557 17.23278999328613 0.009766458533704281 18.01059532165527 C 0.7519462108612061 23.92576599121094 5.762401580810547 28.49981880187988 11.83269023895264 28.49981880187988 C 13.91747379302979 28.49981880187988 15.84714126586914 28.16435241699219 17.55192756652832 27.54537582397461 L 16.63088226318359 36.68235015869141 C 16.55295372009277 37.45644378662109 17.23278999328613 38.08729553222656 18.01059532165527 37.99007034301758 C 23.92576599121094 37.24789047241211 28.49981880187988 32.2374382019043 28.49981880187988 26.16714668273926 C 28.49981880187988 24.08236503601074 28.16435241699219 22.15269660949707 27.54537582397461 20.44791030883789 L 36.68235015869141 21.36895561218262 C 37.45718383789062 21.44688606262207 38.08729553222656 20.76704788208008 37.99007034301758 19.98924446105957 C 37.24789047241211 14.07407188415527 32.2374382019043 9.500018119812012 26.16714668273926 9.500018119812012 Z M 18.99991989135742 21.3748950958252 C 17.68825531005859 21.3748950958252 16.62494468688965 20.31158256530762 16.62494468688965 18.99991989135742 C 16.62494468688965 17.68825531005859 17.68825531005859 16.62494468688965 18.99991989135742 16.62494468688965 C 20.31158256530762 16.62494468688965 21.3748950958252 17.68825531005859 21.3748950958252 18.99991989135742 C 21.3748950958252 20.31158256530762 20.31158256530762 21.3748950958252 18.99991989135742 21.3748950958252 Z" fill="#ffdd00" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                    height: 30,
                  ),
                      (){},
                  Colors.blue,
                )
              ],
            ),
          )
        ],
      )
    );
  }
}
