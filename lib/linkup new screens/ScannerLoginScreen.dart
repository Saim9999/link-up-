import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:linkup_newscreens/controllers/getcontrollers.dart';

class ScannerLoginScreen extends StatelessWidget {
  const ScannerLoginScreen({super.key});

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
                  image:
                      AssetImage('assets/images/Link Up Scanner  Login 1.png'),
                  fit: BoxFit.fill)),
          child: ListView(
            children: [
              SizedBox(
                height: 100.h,
              ),
              Center(
                  child: Image.asset(
                'assets/images/Vector Smart Object (3).png',
                height: 80.h,
              )),
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Container(
                  height: 270.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        largetext('Email'),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: TextFormField(
                            controller: authController.emailscannerController,
                            decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(255, 56, 170, 215),
                                      width: 0),
                                ),
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
                            controller:
                                authController.passwordscannerController,
                            decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(255, 56, 170, 215),
                                      width: 0),
                                ),
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
                                color: Color.fromARGB(255, 56, 170, 215),
                              ),
                            )),
                            SizedBox(
                              height: 10.h,
                            ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: Container(
                              height: 30.h,
                              width: 310.w,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 56, 170, 215),
                                  borderRadius: BorderRadius.circular(4)),
                              child: TextButton(
                                  onPressed: () {},
                                  child: Center(
                                      child: Text(
                                    'LOGIN',
                                    style: TextStyle(color: Colors.white),
                                  ))),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Dont have an account?',
                                  style: TextStyle(color: Colors.grey),
                                )),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Sign Up',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 56, 170, 215)),
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
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
