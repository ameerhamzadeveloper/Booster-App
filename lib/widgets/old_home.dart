import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
class OldHomePAge extends StatefulWidget {
  @override
  _OldHomePAgeState createState() => _OldHomePAgeState();
}

class _OldHomePAgeState extends State<OldHomePAge> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: Column(
          children: [
            Container(
              width: size.width,
              height: size.height / 1.6,
              decoration:const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)
                ),
              ),
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(),
                      Container(),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 8,
                              blurRadius: 10,
                              offset: Offset(0, 1), // changes position of shadow
                            ),
                          ],
                        ),
                        child: CircularPercentIndicator(
                          radius: 200.0,
                          lineWidth: 20.0,
                          animation: true,
                          percent: 0.7,
                          center: Text(
                            "70.0%",
                            style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                          ),
                          footer:  Text(
                            "Optimization",
                            style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
                          ),
                          circularStrokeCap: CircularStrokeCap.round,
                          progressColor: Colors.deepOrangeAccent,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: MaterialButton(
                          shape: StadiumBorder(),
                          color: Colors.orange,
                          onPressed: (){},
                          child: Text("Boost Now",style: TextStyle(color: Colors.white),),
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment(-0.5,-0.4),
                    child: Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.orange,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 8,
                            blurRadius: 10,
                            offset: Offset(0, 1), // changes position of shadow
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(0.6,-0.3),
                    child: Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.orange,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 8,
                            blurRadius: 10,
                            offset: Offset(0, 1), // changes position of shadow
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(-0.3,-0.1),
                    child: Container(
                      height: 7,
                      width: 7,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.orange,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 8,
                            blurRadius: 10,
                            offset: Offset(0, 1), // changes position of shadow
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(0.1,0.1),
                    child: Container(
                      height: 7,
                      width: 7,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.orange,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 8,
                            blurRadius: 10,
                            offset: Offset(0, 1), // changes position of shadow
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(-0.4,0.2),
                    child: Container(
                      height: 5,
                      width: 5,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.orange,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 8,
                            blurRadius: 10,
                            offset: Offset(0, 1), // changes position of shadow
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(0.4,0.2),
                    child: Container(
                      height: 5,
                      width: 5,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.orange,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 8,
                            blurRadius: 10,
                            offset: Offset(0, 1), // changes position of shadow
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:8.0,right: 8.0,top: 8.0),
              child: Column(
                children: [
                  CardClass(),
                  CardClass(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:8.0,right: 8.0),
              child: Expanded(
                child: Container(
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    elevation: 3.0,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Performance"),
                          SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.battery_alert),
                              SizedBox(width: 10,),
                              Expanded(
                                child: LinearProgressIndicator(
                                  value: 0.7,
                                ),
                              ),
                              SizedBox(width: 10,),
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(100)
                                ),
                                child: Text("Optimize"),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        )
    );
  }
}
class CardClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              ),
              elevation: 3.0,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Colors.white,
                                      Colors.yellow
                                    ]
                                )
                            ),
                            child: Center(child: Icon(Icons.battery_alert,color: Colors.deepOrangeAccent,)))
                      ],
                    ),
                    SizedBox(width: 5,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Battery Saver"),
                        Text("Use 77%"),
                        Text("Health Good")
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5)
            ),
            elevation: 3.0,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                          padding: EdgeInsets.all(10),
                          decoration:const BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.white,
                                    Colors.yellow
                                  ]
                              )
                          ),
                          child: Center(child: Icon(Icons.battery_alert,color: Colors.deepOrangeAccent,)))
                    ],
                  ),
                  const SizedBox(width: 5,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Battery Saver"),
                      Text("Use 77%"),
                      Text("Health Good")
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
