import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:linkup_newscreens/linkup%20new%20screens/NavigationScreens/DrawerScreen.dart';

import 'ReportScreen.dart';

class CashoutScreen extends StatefulWidget {
  const CashoutScreen({super.key});

  @override
  State<CashoutScreen> createState() => _CashoutScreenState();
}

class _CashoutScreenState extends State<CashoutScreen> {
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
              "Wallet",
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
            SizedBox(
              height: 100,
            ),
            Image.asset(
              'assets/images/Group 13.png',
             height: 200.h,
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 56, 171, 216),
                ),
                child: Text('Cash Out'),
                onPressed: () {
                  showModalBottomSheet<void>(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(20.0),
                        ),
                      ),
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          height: 300.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20))),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 5.h,
                              ),
                              Image.asset(
                                'assets/images/Rectangle 1 copy 7.png',
                                scale: 3,
                              ),
                              SizedBox(
                                height: 30.h,
                              ),
                              Text(
                                'How much would you like to cash out',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.sp),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                'Enter Amount',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.sp),
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Text(
                                '0000',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 110, 110, 110),
                                    fontSize: 15.sp),
                              ),
                              Divider(
                                indent: 25,
                                endIndent: 25,
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Container(
                                height: 30.h,
                                width: 290.w,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(255, 56, 171, 216),
                                    ),
                                    onPressed: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (_) {
                                        return ReportScreen();
                                      }));
                                    },
                                    child: Text('Cash Out')),
                              )
                            ],
                          ),
                        );
                      });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
