import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:linkup_newscreens/linkup%20new%20screens/NavigationScreens/DrawerScreen.dart';

import 'AttendeesScreen.dart';

class EventScreen extends StatelessWidget {
  const EventScreen({super.key});

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
            padding: const EdgeInsets.only(left: 20, top: 10),
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
        body: ListView(
          children: [
            Image.asset('assets/images/Rectangle (2).png'),
            SizedBox(
              height: 15.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/images/Group 10.png',
                      scale: 3,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      "Total Sales",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Image.asset(
                  'assets/images/Vector (1).png',
                  scale: 3,
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_){
                          return AttendeesScreen();
                        }));
                      },
                      child: Image.asset(
                        'assets/images/Group 11 (2).png',
                        scale: 3,
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      "Attending",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
