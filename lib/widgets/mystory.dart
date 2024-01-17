import 'package:flutter/material.dart';
Widget Mystory({myStory}){
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
           myStory
          ),
            fit: BoxFit.cover,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(icon:Icon(Icons.add_circle,
              color: Colors.white,
              size: 40.0,),
              onPressed: (){},)
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Add to story",
              style: TextStyle(color: Colors.white,),)
            ],
          )
        ],
      ),
    ),
  );
}