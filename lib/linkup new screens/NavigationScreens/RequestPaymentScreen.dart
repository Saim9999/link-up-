import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:linkup_newscreens/linkup%20new%20screens/NavigationScreens/DrawerScreen.dart';


class RequestPaymentScreen extends StatelessWidget {
  const RequestPaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return ScreenUtilInit(
      builder: (context, child) => Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Color.fromARGB(255, 56, 171, 216),
          centerTitle: true,
          title: Text(
            "Request Payment",
            style: TextStyle(
                color: Colors.white,
                fontSize: 16.sp,
                fontWeight: FontWeight.bold),
          ),
        ),
        drawer: Drawer(
          child: DrawerScreen(),
        ),
        body: SafeArea(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 20),
                child: Text(
                  'Provide receive payment method',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              ListTile(
                leading: Image.asset(
                  'assets/images/paypal (2).png',
                  height: 15.h,
                ),
                title: Text(
                  'Paypal',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp),
                ),
                horizontalTitleGap: 0,
              ),
              ListTile(
                leading: Image.asset(
                  'assets/images/bank-building.png',
                  height: 15.h,
                ),
                title: Text(
                  'Bank Info',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp),
                ),
                horizontalTitleGap: 0,
              ),
              ListTile(
                leading: Image.asset(
                  'assets/images/bank-check.png',
                  height: 15.h,
                  width: 20.w,
                ),
                title: Text(
                  'Cheque',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp),
                ),
                horizontalTitleGap: 0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
