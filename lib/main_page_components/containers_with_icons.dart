import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContainersWithIcons extends StatefulWidget {
  const ContainersWithIcons({Key? key}) : super(key: key);

  @override
  State<ContainersWithIcons> createState() => _ContainersWithIconsState();
}

class _ContainersWithIconsState extends State<ContainersWithIcons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.blue[50],
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: [BoxShadow(
                        color: (Colors.blueGrey[100])!,
                        blurRadius: 1,
                      )]
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 25,right: 9,top: 10),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: Colors.white
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 3,
                                  width: 3,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    color: Colors.red
                                  ),
                                ),
                                Text("Live",style: TextStyle(fontSize: 8)),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 3,),
                        Icon(Icons.directions_bus_outlined,size: 30),
                      ],
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text("Bus",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: "fonts/Roboto/Roboto-Regular.ttf"
                  ),
                  )
                ],
              ),
              SizedBox(width: 20,),
              Column(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.red[50],
                        borderRadius: BorderRadius.circular(8.0),
                        boxShadow: [BoxShadow(
                          color: (Colors.red[100])!,
                          blurRadius: 1,
                        )]
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 25,right: 9,top: 10),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                color: Colors.white
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 3,
                                  width: 3,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      color: Colors.red
                                  ),
                                ),
                                Text("Live",style: TextStyle(fontSize: 8)),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 3,),
                        Icon(Icons.train_outlined,size: 25),
                      ],
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text("Metro",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: "fonts/Roboto/Roboto-Regular.ttf"
                    ),
                  )
                ],
              ),
              SizedBox(width: 20,),
              Column(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.yellow[300],
                        borderRadius: BorderRadius.circular(8.0),
                        boxShadow: [BoxShadow(
                          color: Colors.yellow,
                          blurRadius: 1,
                        )]
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 25,right: 9,top: 10),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                color: Colors.white
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 3,
                                  width: 3,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      color: Colors.red
                                  ),
                                ),
                                Text("Live",style: TextStyle(fontSize: 8)),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 3,),
                        Icon(Icons.directions_railway_outlined,size: 25),
                      ],
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text("Airport Rail",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: "fonts/Roboto/Roboto-Regular.ttf"
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
