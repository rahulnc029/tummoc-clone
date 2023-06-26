import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:html' as html;
import 'dart:js' as js;

customDrawer() {
  return Drawer(
    child: SingleChildScrollView(
      controller: ScrollController(),
      child: Column(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.white70),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  CupertinoIcons.profile_circled,
                  color: Colors.grey,
                  size: 70,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Rahul N C",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          fontFamily: "fonts/Roboto/Roboto-Light.ttf",
                          letterSpacing: 1),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        CupertinoIcons.chevron_right_circle_fill,
                        color: Colors.blueGrey,
                        size: 25,
                      ),
                    ),
                  ],
                ),
                Text("9449060XXX",style: TextStyle(color: Colors.grey[800],fontSize: 14,),)
              ],
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.tickets,color: Colors.black,),
            title: Text("BMTC Pass",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  fontFamily: "fonts/Roboto/Roboto-Light.ttf",
                ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.support_agent_sharp,color: Colors.black,),
            title: Text("BMTC Pass Support",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.normal,
                fontFamily: "fonts/Roboto/Roboto-Light.ttf",
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.language,color: Colors.black,),
            title: Text("Change Language",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.normal,
                fontFamily: "fonts/Roboto/Roboto-Light.ttf",
              ),
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.heart,color: Colors.black,),
            title: Text("Saved Places",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.normal,
                fontFamily: "fonts/Roboto/Roboto-Light.ttf",
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.location_on_outlined,color: Colors.black,),
            title: Text("Switch City",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.normal,
                fontFamily: "fonts/Roboto/Roboto-Light.ttf",
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.account_balance_wallet_outlined,color: Colors.black,),
            title: Text("Tummoc Money",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.normal,
                fontFamily: "fonts/Roboto/Roboto-Light.ttf",
              ),
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.book,color: Colors.black,),
            title: Text("Tummoc Blogs",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.normal,
                fontFamily: "fonts/Roboto/Roboto-Light.ttf",
              ),
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.gift,color: Colors.black,),
            title: Text("Referrals",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.normal,
                fontFamily: "fonts/Roboto/Roboto-Light.ttf",
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.file_copy_outlined,color: Colors.black,),
            title: Text("Privacy Policy",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.normal,
                fontFamily: "fonts/Roboto/Roboto-Light.ttf",
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.contact_page_outlined,color: Colors.black,),
            title: Text("Terms of Usage",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.normal,
                fontFamily: "fonts/Roboto/Roboto-Light.ttf",
              ),
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.info,color: Colors.black,),
            title: Text("FAQs & Support",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.normal,
                fontFamily: "fonts/Roboto/Roboto-Light.ttf",
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.logout,color: Colors.black,),
            title: Text("Logout",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.normal,
                fontFamily: "fonts/Roboto/Roboto-Light.ttf",
              ),
            ),
          ),
          BottomAppBar(
            color: Colors.white,
            child: Column(
              children: [
                Center(
                  child: Text("v 2.7.1",style: TextStyle(color: Colors.black),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 35,right: 35),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                          onPressed: launchFaceUrl,
                          icon: FaIcon(FontAwesomeIcons.facebook,color: Colors.black,)
                      ),
                      IconButton(
                          onPressed: launchTwitterUrl,
                          icon: FaIcon(FontAwesomeIcons.twitter,color: Colors.black,)
                      ),
                      IconButton(
                          onPressed: () {
                            js.context.callMethod("open",["http://localhost:60484/"]);
                          },
                          icon: FaIcon(FontAwesomeIcons.linkedin,color: Colors.black,)
                      ),
                      IconButton(
                          onPressed: () {
                            html.window.open("http://localhost:60484/", "motows_website");
                          },
                          icon: FaIcon(FontAwesomeIcons.instagram,color: Colors.black,)
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

final Uri faceUrl = Uri.parse("https://www.facebook.com/login/");
final Uri twitterUrl = Uri.parse("https://twitter.com/i/flow/login?input_flow_data=%7B%22requested_variant%22%3A%22eyJsYW5nIjoiZW4ifQ%3D%3D%22%7D");
final Uri linkUrl = Uri.parse("https://www.linkedin.com/login");
final Uri instaUrl = Uri.parse("https://www.instagram.com/accounts/login/");

Future<void> launchFaceUrl() async{
  if(!await launchUrl(faceUrl)){
    throw "Could not launch $faceUrl";
  }
}

Future<void> launchTwitterUrl() async{
  if(!await launchUrl(twitterUrl)){
    throw "Could not launch $twitterUrl";
  }
}

Future<void> launchLinkUrl() async{
  if(!await launchUrl(linkUrl)){
    throw "Could not launch $linkUrl";
  }
}

Future<void> launchInstaUrl() async{
  if(!await launchUrl(instaUrl)){
    throw "Could not launch $instaUrl";
  }
}