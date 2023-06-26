import 'package:flutter/material.dart';

class CustomTabBar extends TabBar {
  CustomTabBar({
    Key? key,
    required List<Widget> tabs,
    required TabController controller,
    Color? indicatorColor,
    required Color selectedLabelColor,
    required Color unselectedLabelColor,
}) : super(
    key: key,
    tabs: tabs,
    controller: controller,
    indicatorColor: indicatorColor,
    labelColor: selectedLabelColor,
    unselectedLabelColor: unselectedLabelColor
  );

  @override
  Tab makeTab(Tab child, bool selected){
    return Tab(
      child: Container(
        child: child.child,
      ),
    );
  }
}