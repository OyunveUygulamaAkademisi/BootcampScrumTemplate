import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirestoreService {
  final db =FirebaseFirestore.instance;
  final auth=FirebaseAuth.instance;



  Stream<QuerySnapshot>  getData() {

    return db.collection('users')
        .orderBy("Userscore", descending: true)
        .snapshots();
  }


  Future updateData()async{

    await db.collection("users").doc(auth.currentUser?.email).update(
        {"Userscore": FieldValue.increment(5)});
  }
}


class FirestoreNameService {
  final db2 = FirebaseFirestore.instance;
  final auth2 = FirebaseAuth.instance;


  Stream <QuerySnapshot> getName() {
    return db2.collection('users')
        .snapshots();
  }

  Future nameData() async{

    await db2.collection("users").doc(auth2.currentUser?.email).update(
        { "Username": FieldValue.increment(0)});
  }
}