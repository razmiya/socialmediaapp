import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class NotificationProvider with ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<QuerySnapshot> getFriendRequests() async {
    User? user = _auth.currentUser;
    String uid = user!.uid;

    return _firestore.collection('friendRequests').doc(uid).collection('requests').get();
  }

  Future<QuerySnapshot> getMessages() async {
    User? user = _auth.currentUser;
    String uid = user!.uid;

    return _firestore.collection('messages').doc(uid).collection('messages').get();
  }

  Future<void> acceptFriendRequest(DocumentSnapshot request) async {
    User? user = _auth.currentUser;
    String uid = user!.uid;

    // Add friend logic goes here

    // Remove the friend request after accepting
    await _firestore.collection('friendRequests').doc(uid).collection('requests').doc(request.id).delete();

    // Update the UI
    notifyListeners();
  }
}