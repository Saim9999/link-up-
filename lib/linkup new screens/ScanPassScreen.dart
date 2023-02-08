import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:linkup_newscreens/linkup%20new%20screens/LinkupScanScreen.dart';

class ScanPassScreen extends StatelessWidget {
  const ScanPassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return ScreenUtilInit(
      builder: (context, child) => Scaffold(
        body: SafeArea(
            child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/Group 10 (1).png'),
                  fit: BoxFit.fill)),
          child: ListView(
            children: [
              SizedBox(
                height: 100.h,
              ),
              Image.asset(
                'assets/images/Login Details.png',
                height: 300,
              ),
              SizedBox(
                height: 60.h,
              ),
              Center(
                child: Text(
                  'Please Submit your passport and or your\n         driver license for verification',
                  style:
                      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 170.h,
              ),
              Center(
                child: Container(
                  height: 30.h,
                  width: 310.w,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 56, 170, 215),
                      borderRadius: BorderRadius.circular(4)),
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) {
                          return LinkupScanScreen();
                        }));
                      },
                      child: Center(
                          child: Text(
                        'SUBMIT',
                        style: TextStyle(color: Colors.white),
                      ))),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
