

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:e_commerce_app/services/auth_service.dart';

import 'message.dart';


class ChatUsers extends StatefulWidget {
  const ChatUsers({super.key});

  @override
  State<ChatUsers> createState() => _ChatUsersState();
}

class _ChatUsersState extends State<ChatUsers> {
  //instance of the auth
  final FirebaseAuth _auth=FirebaseAuth.instance;
  //sign user out
  void signOut(){
    //get auth service
    final authService = Provider.of<AuthService>(context,listen: false);
    authService.signOut();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat list",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),),
        centerTitle: false,
        backgroundColor: Colors.black,
        actions: [
          //sign out button
          IconButton(
              onPressed: signOut,
              icon: const Icon(Icons.logout)),
        ],
      ),
      body: buildUserList(),
    );
  }
  //build a list of users except the current users loged in
  Widget buildUserList() {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection('users').snapshots(),
      builder: (context,snapshot){
        if(snapshot.hasError){
          return const Text('error');
        }
        if(snapshot.connectionState==ConnectionState.waiting) {
          return const Text('loading');
        }
        return ListView(
          children:snapshot.data!.docs.
          map<Widget>((doc) =>  buildUserListItems(doc)).toList(),
        );
      },
    );


  }
  //build individual user list items
  Widget buildUserListItems(DocumentSnapshot document){
    Map<String,dynamic> data=document.data()! as Map<String,dynamic>;
    //display all user except current user
    if(_auth.currentUser!.email!=data['email']) {
      return ListTile(
        title: Text(data['email']),
        onTap: () {
          //pass the clicked 'uid' into chat page

          Navigator.push(context as BuildContext,
            MaterialPageRoute(builder: (context) =>
                ChatPage(
                  recieverUserEmail: data['email'],
                  recieverUserId: data['uid'],
                ),
            ),
          );
        },
      );
    }
    else{
      //return empty container
      return Container();
    }
  }
}

