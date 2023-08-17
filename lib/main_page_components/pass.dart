import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tummoc/main_page_components/active_pass.dart';
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
              toolbarHeight: 60,
              backgroundColor: Colors.white,
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(0.0),
                child: Card(
                  child: TabBar(
                    labelColor: Colors.teal[900],
                      // indicatorColor: Colors.green[400],
                      // indicatorWeight: 5,
                      tabs: <Widget>[
                        Tab(child: Text("Active"),),
                        Tab(child: Text("Inactive"),),
                      ]
                  ),
                ),
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

class NestedTabBarScreen extends StatelessWidget {
  final List<String> tabLabels = ["Passes", "Trips/Tickets"];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: tabLabels.length,
        child: Scaffold(
          backgroundColor: Colors.grey[50],
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(45),
            child: AppBar(
              automaticallyImplyLeading: false,
              flexibleSpace: SafeArea(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SecondScreen(),));
                          },
                          icon: Icon(Icons.arrow_back, color: Colors.white,)
                      ),
                      Expanded(
                        child: TabBar(
                          tabs: tabLabels.map((e) => Tab(text: e,)).toList(),
                        ),
                      ),
                    ],
                  )
              ),
              // title: null,
              // leading: IconButton(
              //     onPressed: () {
              //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SecondScreen(),));
              // },
              //     icon: Icon(Icons.arrow_back, color: Colors.white,)
              // ),
              // bottom: TabBar(
              //     tabs: tabLabels.map((e) => Tab(text: e,)).toList(),
              // ),
              backgroundColor: Colors.teal[900],
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: TabBarView(
                children: [
                  // buildTabContent("Tab 1 Content", Colors.green.shade200),
                  buildTabContent("Tab 2 Content", Colors.green.shade400),
                  TabContent("TAB 1", Colors.green.shade200)
                ]
            ),
          ),
        )
    );
  }
}

Widget buildTabContent(String content, Color color){
  return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                // color: color,
                child: SafeArea(
                    child: TabBar(
                      indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: color == Colors.green.shade200
                            ? Colors.green.shade600
                            : Colors.green.shade800,
                      ),
                        labelColor: Colors.white,
                        unselectedLabelColor: Colors.black,
                        tabs: [
                          Tab(text: 'ACTIVE'),
                          Tab(text: 'EXPIRED'),
                        ]
                    )
                ),
              ),
            ),
            preferredSize: Size.fromHeight(30)
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: TabBarView(
              children: [
                TabOneContent(),
                buildTabTwoContent(content),
              ]
          ),
        ),
      )
  );
}
class TabContent extends StatefulWidget {
   TabContent(this.content, this.color, {super.key});
  String content;
  Color color;
  @override
  State<TabContent> createState() => _TabContentState();
}

class _TabContentState extends State<TabContent> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: PreferredSize(
              child: Container(
                // color: color,
                child: SafeArea(
                    child: TabBar(
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: widget.color == Colors.green.shade200
                              ? Colors.green.shade600
                              : Colors.green.shade800,
                        ),
                        labelColor: Colors.white,
                        unselectedLabelColor: Colors.black,
                        tabs: [
                          Tab(text: 'ACTIVE'),
                          Tab(text: 'EXPIRED'),
                        ]
                    )
                ),
              ),
              preferredSize: Size.fromHeight(30)
          ),
          body: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: TabBarView(
                children: [
                  buildTabTwoContent(widget.content),
                  buildTabTwoContent(widget.content),
                ]
            ),
          ),
        )
    );
  }
}

class TabOneContent extends StatefulWidget {
  const TabOneContent({super.key});

  @override
  State<TabOneContent> createState() => _TabOneContentState();
}

class _TabOneContentState extends State<TabOneContent> {
  @override
  Widget build(BuildContext context) {
    DateTime currentDate = DateTime.now();
    DateTime tomorrowDate = currentDate.add(Duration(days: 30));
    String formattedDate = DateFormat("d MMM yyyy").format(tomorrowDate);
    return Container(
      // color: Colors.green.shade200,
      child: Column(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
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
    );
  }
}


// Widget buildTabOneContent(String content){
//   DateTime currentDate = DateTime.now();
//   DateTime tomorrowDate = currentDate.add(Duration(days: 30));
//   String formattedDate = DateFormat("d MMM yyyy").format(tomorrowDate);
//   return Container(
//     color: Colors.green.shade200,
//     child: Column(
//       children: [
//         SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
//             child: Container(
//               width: double.maxFinite,
//               height: 190,
//               decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                     colors: [Colors.cyan[900]!, Colors.blueGrey[600]!],
//                     begin: Alignment.topLeft,
//                     end: Alignment.bottomRight,
//                   ),
//                   borderRadius: BorderRadius.circular(8)
//               ),
//               child: Padding(
//                 padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Container(
//                           decoration: BoxDecoration(
//                               color: Colors.white,
//                               borderRadius: BorderRadius.circular(5)
//                           ),
//                           child: Padding(
//                             padding: const EdgeInsets.fromLTRB(8, 3, 8, 3),
//                             child: Text(
//                                 "Ordinary",
//                                 style: TextStyle(
//                                     fontSize: 12,
//                                     letterSpacing: 1
//                                 )
//                             ),
//                           ),
//                         ),
//                         Text("₹ 1050.0",
//                           style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 18,
//                               fontWeight: FontWeight.bold
//                           ),
//                         )
//                       ],
//                     ),
//                     SizedBox(height: 15,),
//                     Text(
//                       "Ordinary Service Monthly Pass",
//                       style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 26,
//                           fontWeight: FontWeight.w400
//                       ),
//                     ),
//                     SizedBox(height: 20,),
//                     Row(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               "Pass valid till",
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.w400,
//                                   fontSize: 15
//                               ),
//                             ),
//                             Text(
//                               "$formattedDate, 11:59 PM",
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.w400,
//                                   fontSize: 15
//                               ),
//                             ),
//                           ],
//                         ),
//                         Container(
//                           height: 40,
//                           width: 40,
//                           decoration: BoxDecoration(
//                             color: Colors.cyan[900],
//                             borderRadius: BorderRadius.circular(4),
//                           ),
//                           child: IconButton(
//                             onPressed: () {
//                               Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ActivePass(),));
//                             },
//                             icon: Icon(
//                               CupertinoIcons.greaterthan,
//                               color: Colors.white,
//                               size: 10,
//                             ),
//                           ),
//                         )
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//         SizedBox(height: 10,),
//         Row(
//           children: [
//             Expanded(
//                 child: Divider(
//                   color: Colors.grey,
//                   thickness: 1,
//                 )
//             ),
//             Padding(
//               padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
//               child: Text(
//                 "Looking for pass purchase?",
//                 style: TextStyle(
//                     color: Colors.teal[900]
//                 ),
//               ),
//             ),
//             Expanded(
//                 child: Divider(
//                   color: Colors.grey,
//                   thickness: 1,
//                 )
//             ),
//           ],
//         ),
//         SizedBox(height: 15,),
//         Padding(
//           padding: const EdgeInsets.fromLTRB(10, 10, 10, 30),
//           child: Container(
//             decoration: BoxDecoration(
//                 color: Colors.cyan[600],
//                 borderRadius: BorderRadius.circular(6)
//             ),
//             child: Padding(
//               padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Icon(CupertinoIcons.tickets,color: Colors.white,),
//                   SizedBox(width: 10,),
//                   Text(
//                     "Book a new pass",
//                     style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 16,
//                         fontWeight: FontWeight.w400
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ],
//     ),
//   );
// }
Widget buildTabTwoContent(String content){
  return Container(
    color: Colors.green.shade400,
    child: Center(
      child: Text(
          content,
        style: TextStyle(fontSize: 24, color: Colors.black),
      ),
    ),
  );
}

