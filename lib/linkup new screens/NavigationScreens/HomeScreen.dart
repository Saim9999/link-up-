import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:linkup_newscreens/linkup%20new%20screens/NavigationScreens/DrawerScreen.dart';

import 'RequestPaymentScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return ScreenUtilInit(
      builder: (context, child) => Scaffold(
        appBar: AppBar(
          toolbarHeight: 60.h,
          backgroundColor: Color.fromARGB(255, 56, 171, 216),
          elevation: 0.0,
          title: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "Events",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        drawer: Drawer(
          child: DrawerScreen(),
        ),
        body: SafeArea(
            child: ListView(
          children: [
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 35),
                  child: Text(
                    'Search',
                    style: TextStyle(fontSize: 16.sp),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 35),
                  child: Icon(
                    Icons.search,
                    color: Colors.black.withOpacity(0.3),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text(
                'See You Events in Other Countries',
                style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 35),
                  child: Text(
                    'Country Dropdown',
                    style: TextStyle(
                      color: Color.fromARGB(255, 110, 110, 110),
                      fontSize: 10.sp,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Icon(
                    Icons.arrow_drop_down,
                    color: Color.fromARGB(255, 56, 170, 215),
                    size: 30,
                  ),
                )
              ],
            ),
            Divider(
              indent: 25,
              endIndent: 25,
            ),
            SizedBox(
              height: 30.h,
            ),
            greybox(),
            SizedBox(
              height: 20.h,
            ),
            greybox(),
            SizedBox(
              height: 20.h,
            ),
            greybox(),
            SizedBox(
              height: 20.h,
            ),
            greybox(),
            SizedBox(
              height: 20.h,
            ),
            greybox(),
            SizedBox(
              height: 20.h,
            ),
            greybox(),
          ],
        )),
      ),
    );
  }

  Padding greybox() {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Row(
        children: [
          Image.asset(
            'assets/images/Rounded Rectangle 2.png',
            scale: 3,
          ),
          SizedBox(
            width: 5.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'r',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.sp,
                ),
              ),
              Text(
                'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\nAenean commodo ligula eget dolor.',
                style: TextStyle(
                  color: Color.fromARGB(255, 110, 110, 110),
                  fontSize: 10.sp,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
