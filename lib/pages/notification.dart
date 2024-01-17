// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
//
// import 'notificationprovider.dart';
//
// class NotificationList extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     var notificationProvider = Provider.of<NotificationProvider>(context);
//
//     return ListView(
//       padding: EdgeInsets.all(16.0),
//       children: [
//         Text(
//           'Friend Requests',
//           style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
//         ),
//         FutureBuilder(
//           future: notificationProvider.getFriendRequests(),
//           builder: (context, snapshot) {
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               return CircularProgressIndicator();
//             } else if (snapshot.hasError) {
//               return Text('Error: ${snapshot.error}');
//             } else {
//               List<DocumentSnapshot> friendRequests = snapshot.data.docs;
//               return Column(
//                 children: friendRequests.map((request) {
//                   return ListTile(
//                     title: Text(request['name']),
//                     subtitle: Text('Friend request'),
//                     trailing: ElevatedButton(
//                       onPressed: () => notificationProvider.acceptFriendRequest(request),
//                       child: Text('Accept'),
//                     ),
//                   );
//                 }).toList(),
//               );
//             }
//           },
//         ),
//         SizedBox(height: 20.0),
//         Text(
//           'Messages',
//           style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
//         ),
//         FutureBuilder(
//           future: notificationProvider.getMessages(),
//           builder: (context, snapshot) {
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               return CircularProgressIndicator();
//             } else if (snapshot.hasError) {
//               return Text('Error: ${snapshot.error}');
//             } else {
//               List<DocumentSnapshot> messages = snapshot.data.docs;
//               return Column(
//                 children: messages.map((message) {
//                   return ListTile(
//                     title: Text(message['sender']),
//                     subtitle: Text(message['content']),
//                   );
//                 }).toList(),
//               );
//             }
//           },
//         ),
//       ],
//     );
//   }
// }
