import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'friendrequestcard.dart';

class FriendsList extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: _firestore.collection('friends').snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return CircularProgressIndicator();
        }

        var friends = snapshot.data?.docs;

        return ListView.builder(
          itemCount: friends?.length,
          itemBuilder: (context, index) {
            var friend = friends?[index].data() as Map<String, dynamic>;
            return FriendRequestCard(
              userName: friend['userName'],
              profilePicUrl: friend['profilePicUrl'],
              onAccept: () {
                // Implement logic for accepting friend request
                print('Accepted friend request from ${friend['userName']}');
              },
              onCancel: () {
                // Implement logic for canceling friend request
                print('Canceled friend request from ${friend['userName']}');
              },
            );
          },
        );
      },
    );
  }
}

