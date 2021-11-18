import 'package:adobe_xd/adobe_xd.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smartpro_clean_booster/controller/app_controller.dart';

class HomeCard extends StatelessWidget {
  final String title;
  final String condition;
  final Widget icon;
  final Widget nextPage;
  final String helthCount;
  final bool isDotSet;
  final int index;
  final Color color;

  HomeCard(this.index, this.title, this.condition, this.icon, this.helthCount,
      this.nextPage, this.isDotSet, this.color);

  @override
  Widget build(BuildContext context) {
    final pro = Provider.of<AppController>(context);
    return Expanded(
      child: PageLink(
        links: [
          PageLinkInfo(
            transition: LinkTransition.Fade,
            ease: Curves.easeOut,
            duration: 0.3,
            pageBuilder: () {
              pro.initTheFinalPage(index);
              return nextPage;
            },
          ),
        ],
        child: Container(
          height: 80,
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            elevation: 3.0,
            child: Stack(
              children: [
                Padding(padding: const EdgeInsets.all(8.0), child: icon),
                Positioned(
                  top: 20,
                  left: 50,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        condition,
                        style: TextStyle(fontWeight: FontWeight.w300),
                      ),
                      SizedBox(
                        height: 30,
                      )
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    padding: EdgeInsets.all(5),
                    width: 50,
                    height: 30,
                    decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20))),
                    child: Center(
                      child: Text(helthCount,
                          style: TextStyle(color: Colors.white, fontSize: 18)),
                    ),
                  ),
                ),
                isDotSet
                    ? Align(
                        alignment: Alignment(-0.7, -0.6),
                        child: Icon(
                          Icons.circle,
                          color: Color(0xffFF0000),
                          size: 12,
                        ),
                      )
                    : Container()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
