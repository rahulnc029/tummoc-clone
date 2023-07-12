import 'package:flutter/material.dart';
import 'package:tummoc/main.dart';

class ChangeLanguage extends StatefulWidget {
  const ChangeLanguage({super.key});

  @override
  State<ChangeLanguage> createState() => _ChangeLanguageState();
}

class _ChangeLanguageState extends State<ChangeLanguage> {
  String selectedLanguage = "";

  void selectLanguage(String language){
    setState(() {
      if(selectedLanguage == language){
        selectedLanguage = ""; // Deselect the language, if it's already selected
      }else{
        selectedLanguage = language;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SecondScreen(),));
        },
            icon: Icon(
                Icons.arrow_back,
              color: Colors.black,
            )
        ),
        title: Text(
            "Choose Language",
          style: TextStyle(color: Colors.black),
        ),
          elevation: 0,
        backgroundColor: Colors.grey[50],
      ),
      body: Center(
        child: Column(
          children: [
            Text(
                "Choose your preferred language",
              style: TextStyle(
                fontSize: 18,
                color: Colors.black
              ),
            ),
            SizedBox(height: 10,),
            Text(
                "Please select language and continue",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey
              ),
            ),
            SizedBox(height: 20),
            buildLanguageContainer("English", "English", Icons.check, isSelected: selectedLanguage == "English"),
            SizedBox(height: 20),
            buildLanguageContainer("Kannada", "ಕನ್ನಡ", Icons.check, isSelected: selectedLanguage == "Kannada"),
            SizedBox(height: 20),
            buildLanguageContainer("Hindi", "हिंदी", Icons.check, isSelected: selectedLanguage == "Hindi"),
          ],
        ),
      ),
    );
  }

  GestureDetector buildLanguageContainer(String language, String displayText, IconData icon, {bool isSelected = false}){
    return GestureDetector(
      onTap: () => selectLanguage(language),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: isSelected ? Colors.green[50] : Colors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: TextSpan(
                    text: "$language - ",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                          text: displayText,
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.blueGrey
                          )
                      )
                    ]
                ),
              ),
              Visibility(
                visible: isSelected,
                child: Icon(
                  Icons.check,
                  color: Colors.green,
                  size: 12,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}



