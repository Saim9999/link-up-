import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:linkup_newscreens/controllers/getcontrollers.dart';
import 'package:linkup_newscreens/linkup%20new%20screens/ScannerLoginScreen.dart';

class LinkupScanScreen extends StatefulWidget {
  const LinkupScanScreen({super.key});

  @override
  State<LinkupScanScreen> createState() => _LinkupScanScreenState();
}

class _LinkupScanScreenState extends State<LinkupScanScreen> {
  late int selectedRadioTile;

  @override
  void initState() {
    super.initState();
    selectedRadioTile = 0;
  }

  setSelectedRadioTile(int val) {
    setState(() {
      selectedRadioTile = val;
    });
  }

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
                'assets/images/Vector Smart Object (2).png',
                height: 80.h,
              )),
              SizedBox(
                height: 15.h,
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    largetext('First Name'),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: TextFormField(
                        controller: authController.firstnameController,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(left: 15),
                            hintText: "Enter",
                            hintStyle: TextStyle(fontSize: 10.sp)),
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    largetext('Last Name'),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: TextFormField(
                        controller: authController.lastnameController,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(left: 15),
                            hintText: "Enter",
                            hintStyle: TextStyle(fontSize: 10.sp)),
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    largetext('Address'),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: TextFormField(
                        controller: authController.addressscanController,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(left: 15),
                            hintText: "Enter",
                            hintStyle: TextStyle(fontSize: 10.sp)),
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    largetext('Telephone'),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: TextFormField(
                        controller: authController.telefonescanController,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(left: 15),
                            hintText: "Enter",
                            hintStyle: TextStyle(fontSize: 10.sp)),
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    largetext('Email'),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: TextFormField(
                        controller: authController.emailscanController,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(left: 15),
                            hintText: "Enter",
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
                        controller: authController.websitescanController,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(left: 15),
                            hintText: "Enter",
                            hintStyle: TextStyle(fontSize: 10.sp)),
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    largetext('www'),
                    Row(
                      children: [
                        Expanded(
                          child: Transform.translate(
                            offset: Offset(-25, 0),
                            child: RadioListTile(
                              // contentPadding: EdgeInsets.only(left: 15.0),
                              value: 1,
                              groupValue: selectedRadioTile,
                              title: Transform.translate(
                                offset: Offset(-20, 0),
                                child: Text(
                                  "Organization",
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 110, 110, 110)),
                                ),
                              ),
                              onChanged: (val) {
                                print("Radio Tile pressed $val");
                                setSelectedRadioTile(val!);
                              },
                            ),
                          ),
                        ),
                        Expanded(
                          child: Transform.translate(
                            offset: Offset(-70, 0),
                            child: RadioListTile(
                              // contentPadding: EdgeInsets.only(left: 15.0),
                              value: 2,
                              groupValue: selectedRadioTile,
                              title: Transform.translate(
                                offset: Offset(-20, 0),
                                child: Text(
                                  "Individual",
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 110, 110, 110)),
                                ),
                              ),
                              onChanged: (val) {
                                print("Radio Tile pressed $val");
                                setSelectedRadioTile(val!);
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    // SizedBox(
                    //   height: 15.h,
                    // ),
                    largetext('Role'),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              controller: authController.eventscanController,
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 15),
                                  hintText: "Event Organizer",
                                  hintStyle: TextStyle(fontSize: 10.sp)),
                            ),
                          ),
                          Expanded(
                              child: Icon(
                            Icons.arrow_drop_down,
                            color: Color.fromARGB(255, 56, 170, 215),
                          ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
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
                        Navigator.push(context, MaterialPageRoute(builder: (_) {
                          return ScannerLoginScreen();
                        }));
                      },
                      child: Center(
                          child: Text(
                        'SUBMIT',
                        style: TextStyle(color: Colors.white),
                      ))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    TextButton(onPressed: () {}, child: Text('Login')),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
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
