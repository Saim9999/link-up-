import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:image_picker/image_picker.dart';

class AuthController extends GetxController {
  TextEditingController eventtitleController = TextEditingController();
  TextEditingController eventcategoryController = TextEditingController();
  TextEditingController eventaddress = TextEditingController();
  TextEditingController eventtypeController = TextEditingController();
  TextEditingController starttimeController = TextEditingController();
  TextEditingController endtimeController = TextEditingController();
  TextEditingController startdateController = TextEditingController();
  TextEditingController enddateController = TextEditingController();
  TextEditingController earlybirdeconomyController = TextEditingController();
  TextEditingController erlybrdEcnmySeatController = TextEditingController();
  TextEditingController earlybirdVipController = TextEditingController();
  TextEditingController erlybrdVipseatController = TextEditingController();
  TextEditingController economypriceController = TextEditingController();
  TextEditingController economyseatController = TextEditingController();
  TextEditingController vippriceController = TextEditingController();
  TextEditingController VipSeatController = TextEditingController();
  TextEditingController earlybirddateController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController websiteController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController disclaimerController = TextEditingController();
  TextEditingController latitudeController = TextEditingController();
  TextEditingController longitudeController = TextEditingController();
  TextEditingController livedeadController = TextEditingController();
  TextEditingController ticketController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController codeController = TextEditingController();
  TextEditingController discounttypeController = TextEditingController();
  TextEditingController discountController = TextEditingController();
  TextEditingController expirydateController = TextEditingController();
  TextEditingController statusController = TextEditingController();
  TextEditingController eventimageController = TextEditingController();
  TextEditingController nameimageController = TextEditingController();
  TextEditingController descriptionimageController = TextEditingController();
  TextEditingController statusimageController = TextEditingController();
  TextEditingController banknameController = TextEditingController();
  TextEditingController bankaccountController = TextEditingController();
  TextEditingController routingnoController = TextEditingController();
  TextEditingController paypalidController = TextEditingController();
  TextEditingController appidController = TextEditingController();
  TextEditingController zellidController = TextEditingController();
  TextEditingController emailloginController = TextEditingController();
  TextEditingController passwordloginController = TextEditingController();
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController addressscanController = TextEditingController();
  TextEditingController telefonescanController = TextEditingController();
  TextEditingController emailscanController = TextEditingController();
  TextEditingController websitescanController = TextEditingController();
  TextEditingController eventscanController = TextEditingController();
  TextEditingController emailscannerController = TextEditingController();
  TextEditingController passwordscannerController = TextEditingController();
  Rx<String> radiobutton = ''.obs;
  final globalkey = GlobalKey<FormState>().obs;
  CollectionReference? imgCollectionRef;
  firebase_storage.Reference? ref;
  // firebase_storage.Reference? ref2;

  final ImagePicker picker = ImagePicker();
  List<File>? imageList;
  List<File>? imageList2;
  addfirebase(
    String imgUrl,
    String title,
    String description,
    String category,
    String venue,
    String start_time,
    String start_date,
    String end_time,
    String end_date,
    String early_bird_economy_price,
    String early_bird_economy_seat,
    String economy_price,
    String economic_seat,
    String vip,
    String vip_seat,
    String early_bird_vip_price,
    String early_bird_vip_seat,
    String early_bird_price_date_limit,
    String country,
    String state,
    String city,
    String email,
    String website,
    String radio,
    String type,
    String phone,
    String disclaimer,
    String latitude,
    String longitude,
    String livedead,
  ) async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    firestore.collection('events').add({
      'title': eventtitleController.text,
      'description': descriptionController.text,
      'category': eventcategoryController.text,
      'venue': eventaddress.text,
      'start_time': starttimeController.text,
      'start_date': startdateController.text,
      'end_time': endtimeController.text,
      'end_date': enddateController.text,
      'early_bird_economy_price': earlybirdeconomyController.text,
      'early_bird_economy_seat': erlybrdEcnmySeatController.text,
      'economic_price': economypriceController.text,
      'economic_seat': economyseatController.text,
      'vip_price': vippriceController.text,
      'vip_seat': VipSeatController.text,
      'early_bird_vip_price': earlybirdVipController.text,
      'early_bird_vip_seat': erlybrdVipseatController.text,
      'early_bird_price_date_limit': earlybirddateController.text,
      'country': countryController.text,
      'state': stateController.text,
      'city': cityController.text,
      'email': emailController.text,
      'website': websiteController.text,
      'radio': radiobutton.value,
      'type': eventtypeController.text,
      'phone': phoneController.text,
      'disclaimer': disclaimerController.text,
      'latitude': latitudeController.text,
      'longitude': longitudeController.text,
      'livedead': livedeadController.text,
      'imgUrl': imageList,
    });
  }

  Future uploadImages1(
    String title,
    String description,
    String category,
    String venue,
    String start_time,
    String start_date,
    String end_time,
    String end_date,
    String early_bird_economy_price,
    String early_bird_economy_seat,
    String economy_price,
    String economic_seat,
    String vip,
    String vip_seat,
    String early_bird_vip_price,
    String early_bird_vip_seat,
    String early_bird_price_date_limit,
    String country,
    String state,
    String city,
    String email,
    String website,
    String radio,
    String type,
    String phone,
    String disclaimer,
    String latitude,
    String longitude,
    String livedead,
  ) async {
    FirebaseFirestore firestore2 = FirebaseFirestore.instance;
    for (var img in imageList!) {
      ref = firebase_storage.FirebaseStorage.instance
          .ref()
          .child("imgs/${img.path}");
      await ref!.putFile(img).whenComplete(() async {
        await ref!.getDownloadURL().then((value) async {
          firestore2.collection('events').add({
            'title': eventtitleController.text,
            'description': descriptionController.text,
            'category': eventcategoryController.text,
            'venue': eventaddress.text,
            'start_time': starttimeController.text,
            'start_date': startdateController.text,
            'end_time': endtimeController.text,
            'end_date': enddateController.text,
            'early_bird_economy_price': earlybirdeconomyController.text,
            'early_bird_economy_seat': erlybrdEcnmySeatController.text,
            'economic_price': economypriceController.text,
            'economic_seat': economyseatController.text,
            'vip_price': vippriceController.text,
            'vip_seat': VipSeatController.text,
            'early_bird_vip_price': earlybirdVipController.text,
            'early_bird_vip_seat': erlybrdVipseatController.text,
            'early_bird_price_date_limit': earlybirddateController.text,
            'country': countryController.text,
            'state': stateController.text,
            'city': cityController.text,
            'email': emailController.text,
            'website': websiteController.text,
            'radio': radiobutton.value,
            'type': eventtypeController.text,
            'phone': phoneController.text,
            'disclaimer': disclaimerController.text,
            'latitude': latitudeController.text,
            'longitude': longitudeController.text,
            'livedead': livedeadController.text,
            'image_object': value,
          });
        });
      });
    }
  }
}
