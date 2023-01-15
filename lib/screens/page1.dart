import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:power/screens/disp1.dart';
import 'package:power/screens/disp2.dart';
import 'package:power/screens/disp3.dart';
import 'package:power/screens/disp4.dart';
import 'package:power/screens/page1-1.dart';
import 'package:power/screens/page1-2.dart';
import 'package:power/utils/Dimensions.dart';
import 'package:power/utils/colors.dart';
import 'package:power/utils/list.dart';
import 'package:power/utils/navigation.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  List<Widget> wide = [disp1(), disp2(), disp3(), disp4()];

  var currentIndex = 0;
  int index = -1;
  bool s = true;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: l1,
        ),
        child: Padding(
          padding: EdgeInsets.all(9),
          child: GNav(
              tabBackgroundColor: Colors.cyan.shade50,
              color: Colors.black38,
              activeColor: one,
              tabActiveBorder: Border.all(color: one, width: 0.9),
              tabBorderRadius: 100,
              gap: MediaQuery.of(context).size.width/wid(context, 8),
              // curve: Curves.easeOutExpo,
              padding:
                  EdgeInsets.all(15),
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: "Home",
                  //  onPressed: () {
                  //  Get.to(disp1());
                  //  },
                ),
                GButton(
                  icon: Icons.smart_button,
                  text: "Smart",
                ),
                GButton(
                  icon: Icons.connect_without_contact,
                  text: "Connection",
                ),
                GButton(icon: Icons.supervised_user_circle, text: "About"),
              ],
              selectedIndex: currentIndex,
              onTabChange: (index) {
                setState(() {
                  currentIndex = index;
                });
              }),
        ),
      ),
      body: Container(
        child: wide[currentIndex],
      ),
    );
  }
}
