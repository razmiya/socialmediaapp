import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:e_commerce_app/services/auth_service.dart';



class ProfilePage extends StatelessWidget {
  final String userId = "87EPlfglsQRC7zcPGEIGXYPejW23"; // Replace with the actual user ID

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Details',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),),
        backgroundColor: Colors.black,
      ),
      body: FutureBuilder<DocumentSnapshot>(
        future: FirebaseFirestore.instance.collection('users').doc(userId).get(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else if (!snapshot.hasData || !snapshot.data!.exists) {
            return Text('User not found');
          } else {
            Map<String, dynamic> userData = snapshot.data!.data() as Map<String, dynamic>;

            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Name: ${userData['name']}'),
                  Text('Email: ${userData['email']}'),
                  Text('Bio: ${userData['bio']}'),
                  // Add more fields as needed
                ],
              ),
            );
          }
        },
      ),
    );
  }
}

// import 'dart:ffi';
//
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:e_commerce_app/services/database_service.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
//
// class Profile extends StatefulWidget {
//   const Profile({super.key});
//
//   @override
//   State<Profile> createState() => _ProfileState();
// }
//
// class _ProfileState extends State<Profile> {
//   // final FirebaseAuth _auth = FirebaseAuth.instance;
//   // final FirebaseFirestore _firestore = FirebaseFirestore.instance;
//    @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Profile Page',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),),
//         backgroundColor: Colors.black,
//       ),
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 15),
//           // child: StreamBuilder(
//           //   stream: _firestore.collection('users').snapshots(),
//           //   builder: (context,AsyncSnapshot snapshot) {
//           // if(snapshot.hasData){
//           //    return CircularProgressIndicator();
//           //  }
//           // else if(snapshot.hasData){
//           //   Map<dynamic,dynamic> map =snapshot.data.snapshot.value;
//             return Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 SizedBox(height: 20,),
//                 Center(
//                   child: Container(
//                     height: 130,
//                     width: 130,
//                     decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                         border: Border.all(
//                           color: Colors.black,
//                           width: 5,
//                         )
//                     ),
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(100),
//                       child: Image(
//                           fit: BoxFit.cover,
//                           image: AssetImage("images/propic/2.jpg"),
//                           loadingBuilder: (context, child, leadingProgress) {
//                             if (leadingProgress == null)
//                               return child;
//                             return Center(
//                                 child: Center(child: CircularProgressIndicator()));
//                           },
//                           errorBuilder: (context, object, stack) {
//                             return Container(
//                               child: Icon(Icons.error_outline),
//                             );
//                           }
//                       ),
//                     ),
//                   ),
//                 ),
//                 // ListTile(
//                 //   title: map['username'],
//                 // )
//               ],
//             );
//           }
//           // else{
//           //   return Center(
//           //     child: Text("some thing went wrong"),
//           //   );
//
//
//     );
//   }
// }
// Implement a simple profile page

