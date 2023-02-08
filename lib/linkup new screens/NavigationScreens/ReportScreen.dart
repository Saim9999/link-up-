import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:linkup_newscreens/linkup%20new%20screens/NavigationScreens/DrawerScreen.dart';


class ReportScreen extends StatelessWidget {
  const ReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return ScreenUtilInit(
      builder: (context, child) => Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Color.fromARGB(255, 56, 171, 216),
          title: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "Report",
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
              height: 30.h,
            ),
            Image.asset(
              'assets/images/Group 14.png',
              height: 200,
            ),
            SizedBox(
              height: 10.h,
            ),
            Image.asset(
              'assets/images/Group 15 (1).png',
              height: 40,
            ),
            SizedBox(
              height: 10.h,
            ),
            Center(
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: 'Total Attendees',
                    style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                    
                    TextSpan(
                    text: '   1200',
                    style: TextStyle(color: Color.fromARGB(255, 0, 176, 230)))
              ])),
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text('Total Sales',style: TextStyle(
                      fontWeight: FontWeight.bold,fontSize: 12.sp
                    ),),
                    Text('5959.00',style: TextStyle(
                      color: Color.fromARGB(255, 56, 171, 216),
                    fontSize: 18.sp
                    ),),
                  ],
                ),
                Image.asset('assets/images/Vector (2).png',height: 30.h,),
                Column(
                  children: [
                    Text('Cashout',style: TextStyle(
                      fontWeight: FontWeight.bold,fontSize: 12.sp
                    ),),
                    Text('\$1654.99',style: TextStyle(
                      color: Color.fromARGB(255, 56, 171, 216),
                    fontSize: 18.sp
                    ),),
                  ],
                ),
              ],
            )
          ],
        )),
      ),
    );
  }
}
