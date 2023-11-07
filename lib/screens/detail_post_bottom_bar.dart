
import 'package:flutter/material.dart';

class detailPostBottomBar extends StatefulWidget {
  const detailPostBottomBar({super.key});

  @override
  State<detailPostBottomBar> createState() => _detailPostBottomBarState();
}

class _detailPostBottomBarState extends State<detailPostBottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
       height: MediaQuery.of(context).size.height/2,
      decoration: BoxDecoration(
        color: Color(0xFFEDF2F6),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: ListView(
        children: [
          Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("City Name",
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Text("4.5",style: TextStyle(fontWeight: FontWeight.w600),)
                        ],
                      )
                    ],

                  ),
                  SizedBox(height: 25,),
                  Text("lorem40l lorem40 lorem 40lorem40 orem40lor em40lore m40lorem40l "
                      "lorem40l lorem40 lorem 40lorem40 orem40lor em40lore m40lorem40l  "
                      "orem40lorem40l orem40lorem40lo rem40lor em40lore m40lorem40lorem40lorem40",
                     style: TextStyle(color: Colors.black54,fontSize: 16),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(right: 5),
                          child: Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset("lib/images/city5.jpg",
                                fit: BoxFit.cover,
                                width: 120,
                                height: 90,
                              ),
                            ),
                          ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 5),
                        child: Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset("lib/images/city4.jpg",
                              fit: BoxFit.cover,
                              width: 120,
                              height: 90,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                          child:  Container(
                            alignment: Alignment.center,
                            width: 120,
                            height: 90,
                            margin: EdgeInsets.only(right: 5),
                          )
                      )
                    ],
                  )
                ],
              ),
          )
        ],
      ),
    );
  }
}
