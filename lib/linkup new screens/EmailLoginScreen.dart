import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:linkup_newscreens/controllers/getcontrollers.dart';

import 'ScanPassScreen.dart';

class EmailLoginScreen extends StatelessWidget {
  const EmailLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.put(AuthController());

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
              Center(
                child: Text(
                  'Welcome to',
                  style:
                      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Center(
                  child: Image.asset(
                'assets/images/Vector Smart Object (1).png',
                height: 80.h,
              )),
              SizedBox(
                height: 15.h,
              ),
              Center(
                child: Text(
                  'Please proved us with your bank info to\n        deposits sale from your event',
                  style:
                      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    largetext('Email'),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: TextFormField(
                        controller: authController.emailController,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(left: 15),
                            hintText: "email@gmail.com.",
                            hintStyle: TextStyle(fontSize: 10.sp)),
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    largetext('Password'),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: TextFormField(
                        controller: authController.passwordloginController,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(left: 15),
                            hintText: "***************",
                            hintStyle: TextStyle(fontSize: 10.sp)),
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot your password',
                          style: TextStyle(
                              color: Color.fromARGB(255, 56, 170, 215)),
                        )),
                  ],
                ),
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
                          return ScanPassScreen();
                        }));
                      },
                      child: Center(
                          child: Text(
                        'LOGIN',
                        style: TextStyle(color: Colors.white),
                      ))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Row(
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                              color: Color.fromARGB(255, 56, 170, 215)),
                        )),
                  ],
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }

  Text largetext(String title) {
    return Text(
      title,
      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
    );
  }
}
