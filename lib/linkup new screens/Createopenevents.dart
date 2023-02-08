import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Create Event.dart';
import 'SelectCountryScreen.dart';

class CreateOpenEvent extends StatelessWidget {
  const CreateOpenEvent({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return ScreenUtilInit(
      builder: (context, child) => Scaffold(
        body: SafeArea(
            child: ListView(
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/pexels-expect-best-1243337.png',
                  fit: BoxFit.fill,
                ),
                Container(
                  height: 270.h,
                  width: double.infinity,
                  color: Color.fromARGB(255, 56, 170, 215).withOpacity(0.6),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 100),
                        child: Image.asset(
                          'assets/images/schedule.png',
                          scale: 3,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        "Events",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 280,left: 80),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (_){
                            return CreateEvent();
                          }));
                        },
                        child: Image.asset(
                          'assets/images/Group 11.png',
                          scale: 3.5,
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (_){
                            return SelectCountryScreen();
                          }));
                        },
                        child: Image.asset(
                          'assets/images/Group 12.png',
                          scale: 3.5,
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        )),
      ),
    );
  }
}
