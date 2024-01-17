import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String uid;
  DatabaseService({required this.uid});

  final CollectionReference friendsCollection =
  FirebaseFirestore.instance.collection('friends');

  // Add a friend
  Future<void> addFriend(String friendId) async {
    return await friendsCollection.doc(uid).collection('user_friends').doc().set({
      'friendId': friendId,
    });
  }

  // Get user friends
  Stream<QuerySnapshot> get userFriends {
    return friendsCollection.doc(uid).collection('user_friends').snapshots();
  }
}
