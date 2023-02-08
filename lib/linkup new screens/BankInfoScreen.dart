import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:linkup_newscreens/controllers/getcontrollers.dart';
import 'package:linkup_newscreens/linkup%20new%20screens/EmailLoginScreen.dart';

class BankInfoScreen extends StatelessWidget {
  const BankInfoScreen({super.key});

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
                      largetext('Name of Bank'),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: TextFormField(
                          controller: authController.banknameController,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 15),
                              hintText: "Name of Bank",
                              hintStyle: TextStyle(fontSize: 10.sp)),
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      largetext('Bank Account'),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: TextFormField(
                          controller: authController.bankaccountController,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 15),
                              hintText: "123 456 789",
                              hintStyle: TextStyle(fontSize: 10.sp)),
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      largetext('Routing Number#'),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: TextFormField(
                          controller: authController.routingnoController,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 15),
                              hintText: "123 456 789",
                              hintStyle: TextStyle(fontSize: 10.sp)),
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      largetext('Paypal ID #'),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: TextFormField(
                          controller: authController.paypalidController,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 15),
                              hintText: "123 456 789",
                              hintStyle: TextStyle(fontSize: 10.sp)),
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      largetext('Cash app ID #'),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: TextFormField(
                          controller: authController.appidController,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 15),
                              hintText: "123 456 789",
                              hintStyle: TextStyle(fontSize: 10.sp)),
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      largetext('Zell ID #'),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: TextFormField(
                          controller: authController.zellidController,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 15),
                              hintText: "123 456 789",
                              hintStyle: TextStyle(fontSize: 10.sp)),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
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
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) {
                            return EmailLoginScreen();
                          }));
                        },
                        child: Center(
                            child: Text(
                          'SUBMIT',
                          style: TextStyle(color: Colors.white),
                        ))),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
              ],
            ),
          ),
        ),
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
