import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:linkup_newscreens/controllers/getcontrollers.dart';
import 'package:linkup_newscreens/controllers/sponsorecontroller.dart';
import 'package:linkup_newscreens/linkup%20new%20screens/BottomNavigationScreen.dart';

class SponsorImage extends StatefulWidget {
  const SponsorImage({super.key});

  @override
  State<SponsorImage> createState() => _SponsorImageState();
}

class _SponsorImageState extends State<SponsorImage> {
  @override
  void initState() {
    authController.imgCollectionRef =
        FirebaseFirestore.instance.collection("imgUrl");
    super.initState();
  }

  sponsore authController = Get.put(sponsore());
  pickMultiImages() async {
    List<XFile>? selectImg = await authController.picker.pickMultiImage();
    setState(() {
      // converting xfile into file.

      authController.imageList2 =
          selectImg.map<File>((xfile) => File(xfile.path)).toList();
      print("Image Picked ${authController.imageList2}");
      Fluttertoast.showToast(
          msg: "Image Selected",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          textColor: Colors.white,
          fontSize: 16.0);
    });
  }

  @override
  Widget build(BuildContext context) {
    // AuthController authController = Get.put(AuthController());

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return ScreenUtilInit(
      builder: (context, child) => Scaffold(
        body: SafeArea(
            child: ListView(
          children: [
            InkWell(
              onTap: () {
                pickMultiImages();
              },
              child: ClipPath(
                clipper: MyClipper(),
                child: Container(
                  height: 218.h,
                  width: double.infinity,
                  color: const Color.fromARGB(255, 56, 171, 216),
                  child: Container(
                    height: 210.h,
                    decoration: const BoxDecoration(),
                    child: authController.imageList2 != null
                        ? Image.file(
                            authController.imageList2![0],
                            fit: BoxFit.cover,
                          )
                        : Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Sponsor Image",
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
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            largetext('Event'),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: TextFormField(
                controller: authController.eventimageController,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 15),
                    hintText: "Select",
                    hintStyle: TextStyle(fontSize: 10.sp)),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            largetext('Name'),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: TextFormField(
                controller: authController.nameimageController,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 15),
                    hintText: "Title",
                    hintStyle: TextStyle(fontSize: 10.sp)),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            largetext('Description'),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: TextFormField(
                controller: authController.descriptionimageController,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 15),
                    hintText: "Description",
                    hintStyle: TextStyle(fontSize: 10.sp)),
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            largetext('Status live/dead'),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: TextFormField(
                controller: authController.statusimageController,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 15),
                    hintText: "Live",
                    hintStyle: TextStyle(fontSize: 10.sp)),
              ),
            ),
            SizedBox(
              height: 150.h,
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
                    authController
                        .uploadImages2(
                            authController.eventimageController.text,
                            authController.nameimageController.text,
                            authController.descriptionimageController.text,
                            authController.statusimageController.text)
                        .then((value) {
                      Fluttertoast.showToast(
                              msg: "Event Added Successfully",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.BOTTOM,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.blue,
                              textColor: Colors.white,
                              fontSize: 16.0)
                          .whenComplete(() {
                        Get.to(NavigationScreen());
                      });
                    });
                  },
                  child: Center(
                      child: Text(
                    'PUBLISH EVENT',
                    style: TextStyle(color: Colors.white),
                  )),
                ),
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

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    return Path()
      ..lineTo(0, size.height)
      ..quadraticBezierTo(
          size.width / 4, size.height - 40, size.width / 2, size.height - 20)
      ..quadraticBezierTo(
          3 / 4 * size.width, size.height, size.width, size.height - 30)
      ..lineTo(size.width, 0);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
