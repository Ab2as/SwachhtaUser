import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';

final FirebaseStorage _storage = FirebaseStorage.instance;
final FirebaseFirestore _firestore = FirebaseFirestore.instance;

class StoreData {
  Future<String> uploadImageToStorage(String childName, Uint8List file) async {
    Reference ref = _storage.ref().child(childName).child('id');
    UploadTask uploadTask = ref.putData(file);
    TaskSnapshot snapshot = await uploadTask;
    String downnloadUrl = await snapshot.ref.getDownloadURL();
    return downnloadUrl;
  }

  Future<String> saveData({
    required Uint8List file,
  }) async {
    String resp = "Error";
    try {
      String imageUrl = await uploadImageToStorage('profileImage', file);

      await _firestore.collection('problemImage').add({
        'image': imageUrl,
      });
      resp = 'Success';
    } catch (err) {
      resp = err.toString();
    }
    return resp;
  }
}
