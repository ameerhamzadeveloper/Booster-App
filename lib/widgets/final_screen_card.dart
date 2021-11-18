import 'package:flutter/material.dart';
import 'package:smartpro_clean_booster/constants.dart';

TextStyle whiteText = TextStyle(color: Colors.white);
class FinalCards extends StatelessWidget {
  final String title;
  final String subTitle;
  final Widget icon;
  final VoidCallback onTap;
  final Color circleColr;
  FinalCards(this.title,this.subTitle,this.icon,this.onTap,this.circleColr);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(left:15.0,right: 15,top: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 55,
                      width: 55,
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          color: circleColr,
                          shape: BoxShape.circle
                      ),
                      child: icon
                    ),
                    SizedBox(width: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title,style: TextStyle(fontSize: 22,color: Colors.black),),
                        SizedBox(height: 3,),
                        Text(subTitle,)
                      ],
                    ),
                  ],
                ),
                Icon(Icons.arrow_forward_ios_rounded)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
