import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
class FriendRequestCard extends StatelessWidget {
  final String userName;
  final String profilePicUrl;
  final VoidCallback onAccept;
  final VoidCallback onCancel;

  FriendRequestCard({
    required this.userName,
    required this.profilePicUrl,
    required this.onAccept,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: CachedNetworkImageProvider(profilePicUrl),
        ),
        title: Text(userName),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: onAccept,
              child: Text('Accept'),
            ),
            SizedBox(width: 8),
            ElevatedButton(
              onPressed: onCancel,
              child: Text('Cancel'),
            ),
          ],
        ),
      ),
    );
  }
}

