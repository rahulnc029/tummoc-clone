import 'dart:async';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tummoc/main_page_components/containers_with_icons.dart';
import 'package:tummoc/main_page_components/pass.dart';

import 'utils/custom_drawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tummoc App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SecondScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey[900],
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset("assets/images/tummoc1.png", height: 200),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Image.asset(
                    "assets/images/indian_flag.png",
                    height: 20,
                    width: 20,
                  ),
                ),
                Text("Made with love in India",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.normal,
                      fontFamily: 'Roboto',
                      letterSpacing: 1,
                      decoration: TextDecoration.none,
                    )
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatefulWidget {
  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  late double width;
  int selectedIndex = 0;
  String displayText = "";
  List<String> texts = ['Search destination here', 'Plan your trip'];
  int textIndex = 0;
  int charIndex = 0;

  @override
  void initState() {
    super.initState();
    startTextAnimation();
  }
  void startTextAnimation(){
    Timer.periodic(Duration(milliseconds: 300), (timer) {
      setState(() {
        if(charIndex < texts[textIndex].length){
          displayText += texts[textIndex][charIndex];
          charIndex++;
        }else{
          // Animation completed, stop the timer
          timer.cancel();
          textIndex = (textIndex + 1) % texts.length;
          charIndex = 0;
          displayText = "";
          startTextAnimation();
        }
      });
    });
  }

  void navigateToPage(int index){
    setState(() {
      selectedIndex = index;
    });
    if(index == 0){
      print("------- Home -------");
    }else if(index == 1){
      print('----- trip -----');
    }else if(index == 2){
      print('------ pass -------');
      Navigator.pushReplacement(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) => Passes(),
          ),
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      // appBar: customAppBar(),
      drawer: CustomDrawer(),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 170,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(6.0),
                    bottomLeft: Radius.circular(6.0),
                  ),
                  color: Colors.teal[900],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 45, right: 20, left: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              onPressed: () {
                                // if(width > 1000){
                                //   _scaffoldKey.currentState?.openDrawer();
                                // }
                                _scaffoldKey.currentState?.openDrawer();
                                // print(MediaQuery.of(context).size.width);
                              },
                              icon: Icon(
                                Icons.menu,
                                color: Colors.white,
                              )),
                          InkWell(
                            child: Row(
                              children: [
                                Icon(
                                  CupertinoIcons.location_solid,
                                  color: Colors.white,
                                  size: 12,
                                ),
                                Text(
                                  "Bengalore",
                                  style:
                                      TextStyle(color: Colors.white, fontSize: 14),
                                ),
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 35, right: 20, top: 30,bottom: 0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Good Afternoon Rahul",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                                fontFamily: "fonts/Roboto/Roboto-Thin.ttf"),
                          ),
                          Row(
                            children: [
                              Text(
                                "23.3 ℃",
                                style: TextStyle(color: Colors.white),
                              ),
                              Image.asset(
                                "assets/images/cloudy.png",
                                height: 15,
                                width: 20,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 150, left: 20, right: 20),
                child: Container(
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          width: 200,
                          child: TextFormField(
                            decoration:  InputDecoration(
                                hintText: displayText,
                                hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                    fontFamily: "fonts/Roboto/Roboto-Thin.ttf"),
                                prefixIcon: Icon(Icons.search,
                                    color: Colors.grey, size: 30),
                                border: InputBorder.none),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: VerticalDivider(
                          thickness: 2,
                          indent: 10,
                          endIndent: 10,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Icon(
                          CupertinoIcons.heart_circle_fill,
                          color: Colors.red,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          "Passes & Tickets",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            fontFamily: "fonts/Roboto/Roboto-Regular.ttf"
                          ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 150,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20,top: 20),
                      child: ContainersWithIcons(),
                    ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          items: [
        BottomNavigationBarItem(
          icon: Icon(
              Icons.home_outlined,
            color: selectedIndex == 0 ? Colors.black : Colors.grey,
          ),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(
              Icons.route,
            color: selectedIndex == 1 ? Colors.black : Colors.grey,
          ),
          label: "Trip",
        ),
        BottomNavigationBarItem(
          icon: Icon(
              CupertinoIcons.tickets,
            color: selectedIndex == 2 ? Colors.black : Colors.grey,
          ),
          label: "Pass",
        ),
      ],
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
            if(index == 0)
          print('Home is Tapped');
            if(index == 1)
              print('Trip is Tapped');
            if(index == 2)
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Passes(),));
              print('Pass is Tapped');
        },
      ),
    );
  }
}
