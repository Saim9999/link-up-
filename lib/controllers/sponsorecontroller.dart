import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:image_picker/image_picker.dart';

class sponsore extends GetxController {
  TextEditingController eventimageController = TextEditingController();
  TextEditingController nameimageController = TextEditingController();
  TextEditingController descriptionimageController = TextEditingController();
  TextEditingController statusimageController = TextEditingController();

  CollectionReference? imgCollectionRef;
  firebase_storage.Reference? ref;
  // firebase_storage.Reference? ref2;

  final ImagePicker picker = ImagePicker();
  // List<File>? imageList;
  List<File>? imageList2;

  addfirebase1(
    String imgUrl,
    String event,
    String name,
    String description,
    String status,
  ) async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    firestore.collection('sponsore').add({
      'event': eventimageController.text,
      'name': nameimageController.text,
      'description': descriptionimageController.text,
      'status': statusimageController.text,
      'imgUrl': imageList2,
    });
  }

  Future uploadImages2(
    String event,
    String name,
    String description,
    String status,
  ) async {
    FirebaseFirestore firestore2 = FirebaseFirestore.instance;
    for (var img in imageList2!) {
      ref = firebase_storage.FirebaseStorage.instance
          .ref()
          .child("imgs/${img.path}");
      await ref!.putFile(img).whenComplete(() async {
        await ref!.getDownloadURL().then((value) async {
          firestore2.collection('sponsore').add({
            'event': eventimageController.text,
            'name': nameimageController.text,
            'description': descriptionimageController.text,
            'status': statusimageController.text,
            'image_object': value,
          });
        });
      });
    }
  }
}
