import 'package:datetime_picker_formfield_new/datetime_picker_formfield_new.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:linkup_newscreens/controllers/getcontrollers.dart';

import 'SponsorImage.dart';

class CouponImage extends StatelessWidget {
  const CouponImage({super.key});

  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.put(AuthController());
    final format = DateFormat("yyyy-MM-dd");

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return ScreenUtilInit(
      builder: (context, child) => Scaffold(
        body: SafeArea(
            child: ListView(
          children: [
            Container(
              height: 210,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/Group 163959 (4).png'),
                      fit: BoxFit.cover)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Coupon Image",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.add,
                    size: 42,
                    color: Colors.white,
                  ),
                  Text(
                    "ADD",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.sp,
                    ),
                  ),
                ],
              ),
            ),
            largetext('Ticket (Coupon Select)'),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: TextFormField(
                      controller: authController.ticketController,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 15),
                          hintText: "Select",
                          hintStyle: TextStyle(fontSize: 10.sp)),
                    ),
                  ),
                ),
                Expanded(
                    child: Icon(
                  Icons.arrow_drop_down,
                  color: Color.fromARGB(255, 56, 170, 215),
                ))
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            largetext('Title (Coupon Title)'),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: TextFormField(
                controller: authController.titleController,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 15),
                    hintText: "Title",
                    hintStyle: TextStyle(fontSize: 10.sp)),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            largetext('Description (Coupon Description)'),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: TextFormField(
                controller: authController.descriptionController,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 15),
                    hintText: "Description",
                    hintStyle: TextStyle(fontSize: 10.sp)),
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            largetext('Code (Coupon Code)'),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: TextFormField(
                controller: authController.codeController,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 15),
                    hintText: "12345789",
                    hintStyle: TextStyle(fontSize: 10.sp)),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            largetext('Discount Type (Coupon Type)'),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: TextFormField(
                controller: authController.discounttypeController,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 15),
                    hintText: "Type",
                    hintStyle: TextStyle(fontSize: 10.sp)),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            largetext('Discount (Coupon Discount)'),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: TextFormField(
                controller: authController.discountController,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 15),
                    hintText: "0000",
                    hintStyle: TextStyle(fontSize: 10.sp)),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            largetext('Expiry Date (Coupon Title)'),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: DateTimeField(
                controller: authController.expirydateController,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 15),
                    hintText: "Date",
                    hintStyle: TextStyle(fontSize: 10.sp)),
                format: format,
                onShowPicker: (context, currentValue) {
                  return showDatePicker(
                      context: context,
                      firstDate: DateTime(1900),
                      initialDate: currentValue ?? DateTime.now(),
                      lastDate: DateTime(2100));
                },
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            largetext('Status live/dead'),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: TextFormField(
                controller: authController.statusController,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 15),
                    hintText: "Live",
                    hintStyle: TextStyle(fontSize: 10.sp)),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Center(
              child: Container(
                height: 30.h,
                width: 250.w,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 56, 170, 215),
                    borderRadius: BorderRadius.circular(4)),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return SponsorImage();
                      }));
                    },
                    child: Center(
                        child: Text(
                      'PUBLISH',
                      style: TextStyle(color: Colors.white),
                    ))),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
          ],
        )),
      ),
    );
  }

  Padding smalltext(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 10.sp,
          color: Color.fromARGB(255, 110, 110, 110),
        ),
      ),
    );
  }

  Padding largetext(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Text(
        title,
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }
}
