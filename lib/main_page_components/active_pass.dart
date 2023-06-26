import 'package:flutter/material.dart';
import 'package:tummoc/main_page_components/pass.dart';

class ActivePass extends StatefulWidget {
  const ActivePass({Key? key}) : super(key: key);

  @override
  State<ActivePass> createState() => _ActivePassState();
}

class _ActivePassState extends State<ActivePass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: IconButton(onPressed: () {
      //     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Passes(),));
      //   },
      //       icon: Icon(Icons.arrow_back)
      //   ),
      //   title: Text("Your Bus Pass"),
      // ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 200,
                color: Colors.teal[900],
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 30, 12, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Passes(),
                                    ));
                              },
                              icon: Icon(Icons.arrow_back,color: Colors.white,)),
                          Text("Your Bus Pass",style: TextStyle(color: Colors.white,fontSize: 18),)
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 15, 10, 0),
                        child: Text("Support",style: TextStyle(color: Colors.white,fontSize: 16),),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100,left: 15,right: 15),
                child: Container(
                  height: 180,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 15,right: 15),
                child: Container(
                  height: 1000,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
