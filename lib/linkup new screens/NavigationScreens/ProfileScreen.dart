import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:linkup_newscreens/linkup%20new%20screens/NavigationScreens/DrawerScreen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
              "Profile",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.sp,
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
            Image.asset(
              'assets/images/Layer 1 copy.png',
              height: 200.h,
            ),
            Center(
              child: Text(
                "Id #2329455",
                style: TextStyle(
                    color: Color.fromARGB(255, 56, 171, 216),
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 60,
              color: Color.fromARGB(255, 56, 171, 216),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Text(
                          "5",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "#of Events",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                  VerticalDivider(
                    indent: 5,
                    endIndent: 5,
                    color: Colors.white,
                    thickness: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Text(
                          "100",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Following",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Profile info",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Icon(
                    Icons.edit,
                    color: Color.fromARGB(255, 56, 171, 216),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Bank info",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Icon(
                    Icons.edit,
                    color: Color.fromARGB(255, 56, 171, 216),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 80.h,
            ),
            Image.asset(
              'assets/images/Group 8.png',
              height: 60,
            )
          ],
        )),
      ),
    );
  }
}
