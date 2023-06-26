import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

customAppBar() {
  return PreferredSize(
    preferredSize: Size.fromHeight(170),
    child: Container(
      // height: 170,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomRight: Radius.circular(6.0),
          bottomLeft: Radius.circular(6.0),
        ),
        color: Colors.cyan[900],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 45,right: 20,left: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // InkWell(
                //   onTap: () {
                //   },
                //   child: Icon(Icons.menu,color: Colors.white,size: 20,),
                // ),
                InkWell(
                  child: Row(
                    children: [
                      Icon(CupertinoIcons.location_solid,color: Colors.white,size: 12,),
                      Text("Bengalore",style: TextStyle(color: Colors.white,fontSize: 14),),
                      Icon(Icons.arrow_drop_down,color: Colors.white,),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 30),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Good Afternoon Rahul",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      fontFamily: "fonts/Roboto/Roboto-Thin.ttf"
                  ),
                ),
                Row(
                  children: [
                    Text("23.3 \u2103",style: TextStyle(color: Colors.white),),
                    Image.asset("assets/images/cloudy.png",height: 15,width: 20,)
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
