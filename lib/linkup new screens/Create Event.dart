import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:datetime_picker_formfield_new/datetime_picker_formfield_new.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

import '../controllers/getcontrollers.dart';
import 'CouponImage.dart';

class CreateEvent extends StatefulWidget {
  const CreateEvent({super.key});

  @override
  State<CreateEvent> createState() => _CreateEventState();
}

class _CreateEventState extends State<CreateEvent> {
  @override
  void initState() {
    authController.imgCollectionRef =
        FirebaseFirestore.instance.collection("imgUrl");
    super.initState();
  }

  AuthController authController = Get.put(AuthController());
  pickMultiImages() async {
    List<XFile>? selectImg = await authController.picker.pickMultiImage();
    setState(() {
      // converting xfile into file.

      authController.imageList =
          selectImg.map<File>((xfile) => File(xfile.path)).toList();
      print("Image Picked ${authController.imageList}");
      Fluttertoast.showToast(
          msg: "Image Selected",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          textColor: Colors.white,
          fontSize: 16.0);
    });
  }

  pickMultiImages2() async {
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
  // Future uploadImages() async {
  //   for (var img in authController.imageList!) {
  //     authController.ref = firebase_storage.FirebaseStorage.instance
  //         .ref()
  //         .child("imgs/${Path.basename(img.path)}");
  //     await authController.ref!.putFile(img).whenComplete(() async {
  //       await authController.ref!.getDownloadURL().then((value) async {
  //         await authController.imgCollectionRef!.add({"imgurl": value});
  //           Fluttertoast.showToast(
  //               msg: "Uploading Image. Please Wait.....",
  //               toastLength: Toast.LENGTH_SHORT,
  //               gravity: ToastGravity.BOTTOM,
  //               timeInSecForIosWeb: 1,
  //               textColor: Colors.white,
  //               fontSize: 16.0);
  //         });
  //       });

  //   }
  // }

  final format = DateFormat("yyyy-MM-dd");

  Location location = Location.Yes;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return ScreenUtilInit(
      builder: (context, child) => Scaffold(
        body: SafeArea(
            child: ListView(
          children: [
            Container(
              height: 50.h,
              width: double.infinity,
              color: Colors.blueAccent,
              child: Center(
                child: Text(
                  "Create Event",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                pickMultiImages();
              },
              child: authController.imageList != null
                  ? Image.file(
                      authController.imageList![0],
                      fit: BoxFit.fill,
                    )
                  : Container(
                      height: 130.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/Group 163959 (4).png'),
                              fit: BoxFit.fill)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          children: [
                            Icon(
                              Icons.add,
                              size: 42,
                              color: Colors.white,
                            ),
                            Text(
                              "Upload Cover Image",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
            ),
            Form(
                key: authController.globalkey.value,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          largetext('Event Title'),
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: TextFormField(
                              validator: (v) {
                                if (v!.isEmpty) {
                                  return "Enter your Title";
                                }
                                return null;
                              },
                              controller: authController.eventtitleController,
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 15),
                                  hintText: "Event Title",
                                  hintStyle: TextStyle(fontSize: 10.sp)),
                            ),
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          largetext('Description'),
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: TextFormField(
                              validator: (v) {
                                if (v!.isEmpty) {
                                  return "Enter your Title";
                                }
                                return null;
                              },
                              controller: authController.descriptionController,
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 15),
                                  hintText: "Description",
                                  hintStyle: TextStyle(fontSize: 10.sp)),
                            ),
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          InkWell(
                            onTap: () {
                              pickMultiImages2();
                            },
                            
                            child: Center(
                              child: Container(
                                height: 100.h,
                                width: 100.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(60),
                                    border: Border.all(
                                        color:
                                            Color.fromARGB(255, 56, 170, 215),
                                        width: 2)),
                                child: authController.imageList2 != null
                                    ? Image.file(
                                        authController.imageList2![0],
                                        fit: BoxFit.fill,
                                      )
                                    : Center(
                                        child: Icon(
                                          Icons.add,
                                          color:
                                              Color.fromARGB(255, 56, 170, 215),
                                          size: 30,
                                        ),
                                      ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Center(child: Text('Organizer Image')),
                          SizedBox(
                            height: 30.h,
                          ),
                          largetext('Event Category'),
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: TextFormField(
                              validator: (v) {
                                if (v!.isEmpty) {
                                  return "Enter your Title";
                                }
                                return null;
                              },
                              controller:
                                  authController.eventcategoryController,
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 15),
                                  hintText: "Coorporate",
                                  hintStyle: TextStyle(fontSize: 10.sp)),
                            ),
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          largetext('Event Address'),
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: TextFormField(
                              validator: (v) {
                                if (v!.isEmpty) {
                                  return "Enter your Title";
                                }
                                return null;
                              },
                              scrollPadding: EdgeInsets.all(20),
                              controller: authController.eventaddress,
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 15),
                                  hintText: "Address",
                                  hintStyle: TextStyle(fontSize: 10.sp)),
                            ),
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          largetext('Event Type'),
                          Padding(
                              padding: const EdgeInsets.only(right: 15),
                              child: TextFormField(
                                validator: (v) {
                                  if (v!.isEmpty) {
                                    return "Enter your Title";
                                  }
                                  return null;
                                },
                                scrollPadding: EdgeInsets.all(20),
                                controller: authController.eventtypeController,
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.only(left: 15),
                                    hintText: "Type",
                                    hintStyle: TextStyle(fontSize: 10.sp)),
                              )),
                          SizedBox(
                            height: 15.h,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: largetext('Event Start Time'),
                              ),
                              SizedBox(
                                width: 20.w,
                              ),
                              Expanded(
                                child: largetext('Event Start Date'),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  validator: (v) {
                                    if (v!.isEmpty) {
                                      return "Enter your title";
                                    }
                                    return null;
                                  },
                                  controller:
                                      authController.starttimeController,
                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.only(left: 15),
                                      hintText: "05:00 PM",
                                      hintStyle: TextStyle(fontSize: 10.sp)),
                                ),
                              ),
                              SizedBox(
                                width: 20.w,
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: DateTimeField(
                                    validator: (v) {
                                      if (v!.month.toString().isEmpty ||
                                          v.day.toString().isEmpty ||
                                          v.year.toString().isEmpty) {
                                        return "Enter your Title";
                                      }
                                      return null;
                                    },
                                    controller:
                                        authController.startdateController,
                                    decoration: InputDecoration(
                                        contentPadding:
                                            EdgeInsets.only(left: 15),
                                        hintText: "Date",
                                        hintStyle: TextStyle(fontSize: 10.sp)),
                                    format: format,
                                    onShowPicker: (context, currentValue) {
                                      return showDatePicker(
                                          context: context,
                                          firstDate: DateTime(1900),
                                          initialDate:
                                              currentValue ?? DateTime.now(),
                                          lastDate: DateTime(2100));
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: largetext('Event End Time'),
                              ),
                              SizedBox(
                                width: 20.w,
                              ),
                              Expanded(
                                child: largetext('Event End Date'),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  validator: (v) {
                                    if (v!.isEmpty) {
                                      return "Enter your title";
                                    }
                                    return null;
                                  },
                                  controller: authController.endtimeController,
                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.only(left: 15),
                                      hintText: "10:00 PM",
                                      hintStyle: TextStyle(fontSize: 10.sp)),
                                ),
                              ),
                              SizedBox(
                                width: 20.w,
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: DateTimeField(
                                    validator: (v) {
                                      if (v!.month.toString().isEmpty ||
                                          v.day.toString().isEmpty ||
                                          v.year.toString().isEmpty) {
                                        return "Enter your Title";
                                      }
                                      return null;
                                    },
                                    controller:
                                        authController.enddateController,
                                    decoration: InputDecoration(
                                        contentPadding:
                                            EdgeInsets.only(left: 15),
                                        hintText: "Date",
                                        hintStyle: TextStyle(fontSize: 10.sp)),
                                    format: format,
                                    onShowPicker: (context, currentValue) {
                                      return showDatePicker(
                                          context: context,
                                          firstDate: DateTime(1900),
                                          initialDate:
                                              currentValue ?? DateTime.now(),
                                          lastDate: DateTime(2100));
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          largetext('Event is free'),
                          SizedBox(
                            height: 6.h,
                          ),
                          Row(
                            children: [
                              Row(
                                children: [
                                  Radio(
                                      value: Location.Yes,
                                      groupValue: location,
                                      onChanged: (value) {
                                        setState(() {
                                          location = value!;
                                          authController.radiobutton.value =
                                              "Yes";
                                        });
                                      }),
                                  const Text('Yes')
                                ],
                              ),
                              Row(
                                children: [
                                  Radio(
                                      value: Location.No,
                                      groupValue: location,
                                      onChanged: (value) {
                                        setState(() {
                                          location = value!;
                                          authController.radiobutton.value =
                                              "No";
                                        });
                                      }),
                                  const Text('No')
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child:
                                      largetext('Early Bird General (Price)')),
                              SizedBox(width: 40.w),
                              Expanded(child: largetext('#of Seats'))
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  validator: (v) {
                                    if (v!.isEmpty) {
                                      return "Enter your title";
                                    }
                                    return null;
                                  },
                                  controller:
                                      authController.earlybirdeconomyController,
                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.only(left: 15),
                                      hintText: "\$0000",
                                      hintStyle: TextStyle(fontSize: 10.sp)),
                                ),
                              ),
                              SizedBox(width: 40.w),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: TextFormField(
                                    validator: (v) {
                                      if (v!.isEmpty) {
                                        return "Enter your title";
                                      }
                                      return null;
                                    },
                                    controller: authController
                                        .erlybrdEcnmySeatController,
                                    decoration: InputDecoration(
                                        hintText: "2",
                                        hintStyle: TextStyle(fontSize: 10.sp)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: largetext('Early Bird VIP (Price)')),
                              SizedBox(width: 40.w),
                              Expanded(child: largetext('#of Seats'))
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  validator: (v) {
                                    if (v!.isEmpty) {
                                      return "Enter your title";
                                    }
                                    return null;
                                  },
                                  controller:
                                      authController.earlybirdVipController,
                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.only(left: 15),
                                      hintText: "\$0000",
                                      hintStyle: TextStyle(fontSize: 10.sp)),
                                ),
                              ),
                              SizedBox(width: 40.w),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: TextFormField(
                                    validator: (v) {
                                      if (v!.isEmpty) {
                                        return "Enter your title";
                                      }
                                      return null;
                                    },
                                    controller:
                                        authController.erlybrdVipseatController,
                                    decoration: InputDecoration(
                                        hintText: "2",
                                        hintStyle: TextStyle(fontSize: 10.sp)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Row(
                            children: [
                              Expanded(child: largetext('General (Price)')),
                              SizedBox(width: 40.w),
                              Expanded(child: largetext('#of Seats'))
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  validator: (v) {
                                    if (v!.isEmpty) {
                                      return "Enter your title";
                                    }
                                    return null;
                                  },
                                  controller:
                                      authController.economypriceController,
                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.only(left: 15),
                                      hintText: "\$0000",
                                      hintStyle: TextStyle(fontSize: 10.sp)),
                                ),
                              ),
                              SizedBox(width: 40.w),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: TextFormField(
                                    validator: (v) {
                                      if (v!.isEmpty) {
                                        return "Enter your title";
                                      }
                                      return null;
                                    },
                                    controller:
                                        authController.economyseatController,
                                    decoration: InputDecoration(
                                        hintText: "2",
                                        hintStyle: TextStyle(fontSize: 10.sp)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Row(
                            children: [
                              Expanded(child: largetext('VIP (Price)')),
                              SizedBox(width: 40.w),
                              Expanded(child: largetext('#of Seats'))
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  validator: (v) {
                                    if (v!.isEmpty) {
                                      return "Enter your title";
                                    }
                                    return null;
                                  },
                                  controller: authController.vippriceController,
                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.only(left: 15),
                                      hintText: "\$0000",
                                      hintStyle: TextStyle(fontSize: 10.sp)),
                                ),
                              ),
                              SizedBox(width: 40.w),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: TextFormField(
                                    validator: (v) {
                                      if (v!.isEmpty) {
                                        return "Enter your title";
                                      }
                                      return null;
                                    },
                                    controller:
                                        authController.VipSeatController,
                                    decoration: InputDecoration(
                                        hintText: "2",
                                        hintStyle: TextStyle(fontSize: 10.sp)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          largetext('Early Bird Price active until (date)'),
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: DateTimeField(
                              validator: (v) {
                                if (v!.month.toString().isEmpty ||
                                    v.day.toString().isEmpty ||
                                    v.year.toString().isEmpty) {
                                  return "Enter your Title";
                                }
                                return null;
                              },
                              controller:
                                  authController.earlybirddateController,
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
                          largetext('EMAIL'),
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: TextFormField(
                              controller: authController.emailController,
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 15),
                                  hintText: "Email",
                                  hintStyle: TextStyle(fontSize: 10.sp)),
                            ),
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          largetext('Phone'),
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: TextFormField(
                              validator: (v) {
                                if (v!.isEmpty) {
                                  return "Number not less than 11 Digits";
                                }
                                return null;
                              },
                              controller: authController.phoneController,
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 15),
                                  hintText: "123 456 789",
                                  hintStyle: TextStyle(fontSize: 10.sp)),
                            ),
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          largetext('Website'),
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: TextFormField(
                              validator: (v) {
                                if (v!.isEmpty) {
                                  return "Number not less than 11 Digits";
                                }
                                return null;
                              },
                              controller: authController.websiteController,
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 15),
                                  hintText: "www",
                                  hintStyle: TextStyle(fontSize: 10.sp)),
                            ),
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Row(
                            children: [
                              Expanded(child: largetext('Country')),
                              SizedBox(
                                width: 20.w,
                              ),
                              Expanded(child: largetext('State')),
                              SizedBox(
                                width: 20.w,
                              ),
                              Expanded(child: largetext('City'))
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  validator: (v) {
                                    if (v!.isEmpty) {
                                      return "Number not less than 11 Digits";
                                    }
                                    return null;
                                  },
                                  controller: authController.countryController,
                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.only(left: 15),
                                      hintText: "Country",
                                      hintStyle: TextStyle(fontSize: 10.sp)),
                                ),
                              ),
                              SizedBox(
                                width: 20.w,
                              ),
                              Expanded(
                                child: TextFormField(
                                  validator: (v) {
                                    if (v!.isEmpty) {
                                      return "Number not less than 11 Digits";
                                    }
                                    return null;
                                  },
                                  controller: authController.stateController,
                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.only(left: 15),
                                      hintText: "State",
                                      hintStyle: TextStyle(fontSize: 10.sp)),
                                ),
                              ),
                              SizedBox(
                                width: 20.w,
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: TextFormField(
                                    validator: (v) {
                                      if (v!.isEmpty) {
                                        return "Number not less than 11 Digits";
                                      }
                                      return null;
                                    },
                                    controller: authController.cityController,
                                    decoration: InputDecoration(
                                        contentPadding:
                                            EdgeInsets.only(left: 15),
                                        hintText: "City",
                                        hintStyle: TextStyle(fontSize: 10.sp)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          largetext('Event Disclaimer'),
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: TextFormField(
                              validator: (v) {
                                if (v!.isEmpty) {
                                  return "Number not less than 11 Digits";
                                }
                                return null;
                              },
                              controller: authController.disclaimerController,
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 15),
                                  hintText: "Event Disclaimer",
                                  hintStyle: TextStyle(fontSize: 10.sp)),
                            ),
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Row(
                            children: [
                              Expanded(child: largetext('Event Latitude')),
                              SizedBox(
                                width: 20.w,
                              ),
                              Expanded(child: largetext('Event Longitude')),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  validator: (v) {
                                    if (v!.isEmpty) {
                                      return "Number not less than 11 Digits";
                                    }
                                    return null;
                                  },
                                  controller: authController.latitudeController,
                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.only(left: 15),
                                      hintText: "11 64 8 64 3",
                                      hintStyle: TextStyle(fontSize: 10.sp)),
                                ),
                              ),
                              SizedBox(
                                width: 20.w,
                              ),
                              Expanded(
                                child: TextFormField(
                                  validator: (v) {
                                    if (v!.isEmpty) {
                                      return "Number not less than 11 Digits";
                                    }
                                    return null;
                                  },
                                  controller:
                                      authController.longitudeController,
                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.only(left: 15),
                                      hintText: "11 64 8 64 3",
                                      hintStyle: TextStyle(fontSize: 10.sp)),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          largetext('Live / Dead'),
                          TextFormField(
                            validator: (v) {
                              if (v!.isEmpty) {
                                return "Number not less than 11 Digits";
                              }
                              return null;
                            },
                            controller: authController.livedeadController,
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(left: 15),
                                hintText: "live/dead",
                                hintStyle: TextStyle(fontSize: 10.sp)),
                          ),
                          SizedBox(
                            height: 25.h,
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
                                        .uploadImages1(
                                      authController.eventtitleController.text,
                                      authController
                                          .eventcategoryController.text,
                                      authController.eventaddress.text,
                                      authController.starttimeController.text,
                                      authController.startdateController.text,
                                      authController.endtimeController.text,
                                      authController.enddateController.text,
                                      authController
                                          .earlybirdeconomyController.text,
                                      authController
                                          .erlybrdEcnmySeatController.text,
                                      authController
                                          .economypriceController.text,
                                      authController.economyseatController.text,
                                      authController.vippriceController.text,
                                      authController.VipSeatController.text,
                                      authController
                                          .earlybirdVipController.text,
                                      authController
                                          .erlybrdVipseatController.text,
                                      authController
                                          .earlybirddateController.text,
                                      authController.countryController.text,
                                      authController.stateController.text,
                                      authController.cityController.text,
                                      authController.cityController.text,
                                      authController.websiteController.text,
                                      authController.emailController.text,
                                      authController.eventtypeController.text,
                                      authController.phoneController.text,
                                      authController.descriptionController.text,
                                      authController.latitudeController.text,
                                      authController.longitudeController.text,
                                      authController.livedeadController.text,
                                      authController.disclaimerController.text,
                                    )
                                        // authController
                                        //     .addfirebase(
                                        // authController.eventtitleController.text,
                                        // authController
                                        //     .eventcategoryController.text,
                                        // authController.eventaddress.text,
                                        // authController.starttimeController.text,
                                        // authController.startdateController.text,
                                        // authController.endtimeController.text,
                                        // authController.enddateController.text,
                                        // authController
                                        //     .earlybirdeconomyController.text,
                                        // authController
                                        //     .erlybrdEcnmySeatController.text,
                                        // authController
                                        //     .economypriceController.text,
                                        // authController.economyseatController.text,
                                        // authController.vippriceController.text,
                                        // authController.VipSeatController.text,
                                        // authController
                                        //     .earlybirdVipController.text,
                                        // authController
                                        //     .erlybrdVipseatController.text,
                                        // authController
                                        //     .earlybirddateController.text,
                                        // authController.countryController.text,
                                        // authController.stateController.text,
                                        // authController.cityController.text,
                                        // authController.cityController.text,
                                        // authController.websiteController.text,
                                        // authController.emailController.text,
                                        // authController.eventtypeController.text,
                                        // authController.phoneController.text,
                                        // authController.descriptionController.text,
                                        // authController.latitudeController.text,
                                        // authController.longitudeController.text,
                                        // authController.livedeadController.text,
                                        // authController.disclaimerController.text,
                                        // authController.imageList.toString(),
                                        // )
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
                                        Navigator.push(context,
                                            MaterialPageRoute(builder: (_) {
                                          return CouponImage();
                                        }));
                                      });
                                    });
                                  },
                                  child: Center(
                                      child: Text(
                                    'NEXT',
                                    style: TextStyle(color: Colors.white),
                                  ))),
                            ),
                          ),
                          SizedBox(
                            height: 25.h,
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
          ],
        )),
      ),
    );
  }

  Text smalltext(String title) {
    return Text(
      title,
      style: TextStyle(
        color: Color.fromARGB(255, 110, 110, 110),
        fontSize: 10.sp,
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

enum Location { Yes, No }
