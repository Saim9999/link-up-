import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:linkup_newscreens/linkup%20new%20screens/BankInfoScreen.dart';
import 'package:linkup_newscreens/linkup%20new%20screens/BottomNavigationScreen.dart';
import 'package:linkup_newscreens/linkup%20new%20screens/NavigationScreens/RequestPaymentScreen.dart';


class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return ScreenUtilInit(
      builder: (context, child) => Scaffold(
        backgroundColor: Color.fromARGB(253, 0, 174, 227),
        body: SafeArea(
          child: ListView(
            children: [
              SizedBox(
                height: 60.h,
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_){
                    return NavigationScreen();
                  }));
                },
                visualDensity: VisualDensity(horizontal: 4, vertical: -4),
                leading: Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Image.asset(
                    'assets/images/home.png',height: 15.h,
                  ),
                ),
                title: Text(
                  'Home',
                  style: TextStyle(color: Colors.white),
                ),
                horizontalTitleGap: 0,
              ),
              ListTile(
                visualDensity: VisualDensity(horizontal: 4, vertical: -4),
                leading: Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Image.asset(
                    'assets/images/money.png',
                   height: 15.h,
                  ),
                ),
                title: Text(
                  'Wallet',
                  style: TextStyle(color: Colors.white),
                ),
                horizontalTitleGap: 0,
              ),
               ListTile(
                visualDensity: VisualDensity(horizontal: 4, vertical: -4),
                leading: Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Image.asset(
                    'assets/images/calendar(2).png',
                    height: 15.h,
                  ),
                ),
                title: Text(
                  'Events',
                  style: TextStyle(color: Colors.white),
                ),
                horizontalTitleGap: 0,
              ),
               ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_){
                    return BankInfoScreen();
                  }));
                },
                visualDensity: VisualDensity(horizontal: 4, vertical: -4),
                leading: Padding(
                 padding: const EdgeInsets.only(left: 40),
                  child: Image.asset(
                    'assets/images/bank.png',
                    height: 15.h,
                  ),
                ),
                title: Text(
                  'Bank info',
                  style: TextStyle(color: Colors.white),
                ),
                horizontalTitleGap: 0,
              ),
              ListTile(
                visualDensity: VisualDensity(horizontal: 4, vertical: -4),
                leading: Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Image.asset(
                    'assets/images/scan.png',
                    height: 15.h,
                  ),
                ),
                title: Text(
                  'Scan Ticket',
                  style: TextStyle(color: Colors.white),
                ),
                horizontalTitleGap: 0,
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_){
                    return RequestPaymentScreen();
                  }));
                },
                visualDensity: VisualDensity(horizontal: 4, vertical: -4),
                leading: Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Image.asset(
                    'assets/images/advice.png',
                    height: 15.h,
                  ),
                ),
                title: Text(
                  'Request Payment',
                  style: TextStyle(color: Colors.white),
                ),
                horizontalTitleGap: 0,
              ),
              ListTile(
                visualDensity: VisualDensity(horizontal: 4, vertical: -4),
                leading: Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Image.asset(
                    'assets/images/settings(1).png',
                    height: 15.h,
                  ),
                ),
                title: Text(
                  'Settings',
                  style: TextStyle(color: Colors.white),
                ),
                horizontalTitleGap: 0,
              ),
              ListTile(
                visualDensity: VisualDensity(horizontal: 4, vertical: -4),
                leading: Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Image.asset(
                    'assets/images/discuss-issue.png',
                    height: 15.h,
                  ),
                ),
                title: Text(
                  'Frequently Asked Questions',
                  style: TextStyle(color: Colors.white),
                ),
                horizontalTitleGap: 0,
              ),
              ListTile(
                visualDensity: VisualDensity(horizontal: 4, vertical: -4),
                leading: Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Image.asset(
                    'assets/images/control-center.png',
                    height: 15.h,
                  ),
                ),
                title: Text(
                  'Contact App Support',
                  style: TextStyle(color: Colors.white),
                ),
                horizontalTitleGap: 0,
              ),
              ListTile(
                visualDensity: VisualDensity(horizontal: 4, vertical: -4),
                leading: Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Image.asset(
                    'assets/images/Group 17 (1).png',
                    height: 15.h,
                  ),
                ),
                title: Text(
                  'Notification',
                  style: TextStyle(color: Colors.white),
                ),
                horizontalTitleGap: 0,
              ),
              ListTile(
                visualDensity: VisualDensity(horizontal: 4, vertical: -4),
                leading: Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Image.asset(
                    'assets/images/info.png',
                    height: 15.h,
                  ),
                ),
                title: Text(
                  'About Us',
                  style: TextStyle(color: Colors.white),
                ),
                horizontalTitleGap: 0,
              ),
              ListTile(
                visualDensity: VisualDensity(horizontal: 4, vertical: -4),
                leading: Padding(
                 padding: const EdgeInsets.only(left: 40),
                  child: Image.asset(
                    'assets/images/paper.png',
                    height: 15.h,
                  ),
                ),
                title: Text(
                  'Term & Conditions',
                  style: TextStyle(color: Colors.white),
                ),
                horizontalTitleGap: 0,
              ),
              ListTile(
                visualDensity: VisualDensity(horizontal: 4, vertical: -4),
                leading: Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Image.asset(
                    'assets/images/log-out.png',
                    height: 15.h,
                  ),
                ),
                title: Text(
                  'Log Out',
                  style: TextStyle(color: Colors.white),
                ),
                horizontalTitleGap: 0,
              ),
            ],
          ),
          ),
      ),
    );
  }
}