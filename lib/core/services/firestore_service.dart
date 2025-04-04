import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fruits_hub/core/services/data_service.dart';

class FireStoreService extends DatabaseService {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Future<void> addData({
    required String path,
    required Map<String, dynamic> data,
    String? documentId,
  }) async {
    try {
      await firestore.collection(path).doc(documentId).set(data);
    } on Exception catch (e) {
      // TODO
    }
    // TODO: implement addData
  }
}
