import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tummoc/main_page_components/active_pass.dart';
import 'package:tummoc/utils/custom_tabbar.dart';
import '../main.dart';
import 'package:intl/intl.dart';

class Passes extends StatefulWidget {
  const Passes({Key? key}) : super(key: key);

  @override
  State<Passes> createState() => _PassesState();
}

class _PassesState extends State<Passes> {
  @override
  Widget build(BuildContext context) {
    DateTime currentDate = DateTime.now();
    DateTime tomorrowDate = currentDate.add(Duration(days: 30));
    String formattedDate = DateFormat("d MMM yyyy").format(tomorrowDate);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SecondScreen(),));
        }, 
            icon: Icon(Icons.arrow_back)
        ),
        title: Text("Booked Passes"),
        backgroundColor: Colors.teal[900],
      ),
      body: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              toolbarHeight: 20,
              backgroundColor: Colors.white,
              bottom: TabBar(
                labelColor: Colors.teal[900],
                  indicatorColor: Colors.green[400],
                  indicatorWeight: 5,
                  tabs: [
                    Tab(child: Text("Active"),),
                    Tab(child: Text("Inactive"),),
                  ]
              ),
            ),
            body: TabBarView(
                children: [
                  Column(
                    children: [
                      SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
                          child: Container(
                            width: double.maxFinite,
                            height: 190,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Colors.cyan[900]!, Colors.blueGrey[600]!],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(8)
                            ),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(5)
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(8, 3, 8, 3),
                                          child: Text(
                                              "Ordinary",
                                              style: TextStyle(
                                                fontSize: 12,
                                                letterSpacing: 1
                                              )
                                          ),
                                        ),
                                      ),
                                      Text("₹ 1050.0",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 15,),
                                  Text(
                                    "Ordinary Service Monthly Pass",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 26,
                                      fontWeight: FontWeight.w400
                                    ),
                                  ),
                                  SizedBox(height: 20,),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Pass valid till",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 15
                                            ),
                                          ),
                                          Text(
                                            "$formattedDate, 11:59 PM",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 15
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                          color: Colors.cyan[900],
                                          borderRadius: BorderRadius.circular(4),
                                        ),
                                        child: IconButton(
                                          onPressed: () {
                                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ActivePass(),));
                                        },
                                          icon: Icon(
                                          CupertinoIcons.greaterthan,
                                          color: Colors.white,
                                          size: 10,
                                        ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Expanded(
                              child: Divider(
                                color: Colors.grey,
                                thickness: 1,
                              )
                          ),
                          Padding(
                              padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                            child: Text(
                                "Looking for pass purchase?",
                              style: TextStyle(
                                color: Colors.teal[900]
                              ),
                            ),
                          ),
                          Expanded(
                              child: Divider(
                                color: Colors.grey,
                                thickness: 1,
                              )
                          ),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 30),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.cyan[600],
                            borderRadius: BorderRadius.circular(6)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(CupertinoIcons.tickets,color: Colors.white,),
                                SizedBox(width: 10,),
                                Text(
                                  "Book a new pass",
                                  style: TextStyle(
                                      color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Icon(Icons.camera),
                ]
            ),
          )
      ),
    );
  }
}
