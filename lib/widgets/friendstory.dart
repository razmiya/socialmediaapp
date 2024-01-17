import 'package:flutter/material.dart';
Widget FriendStory({friendStory,proName,proPic}){
  return Padding(
    padding: const EdgeInsets.only(left: 5.0,top: 5.0,bottom: 5.0),
    child: Container(
      width: 120.0,
      height: double.infinity,
      color: Colors.black26,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image(image: AssetImage(
              friendStory
          ),
            fit: BoxFit.cover,
          ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Row(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Container(
                 width: 40.0,
                 height: 40.0,
                 child: Container(
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(30.0),
                    border: Border.all(
                      color: Colors.blue,
                      style: BorderStyle.solid,
                      width: 2.0,
                    ),
                     image: DecorationImage(
                       image: AssetImage(proPic),
                          fit: BoxFit.cover,

                     )
                   ),
                 ),
               )
             ],
           ),
         ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(proName,
                style: TextStyle(color: Colors.white,),)
            ],
          )
        ],
      ),
    ),
  );
}