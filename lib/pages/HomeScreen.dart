import 'package:e_commerce_app/widgets/friendpost.dart';
import 'package:e_commerce_app/widgets/friendstory.dart';
import 'package:e_commerce_app/widgets/mystory.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children:<Widget> [
        Row(
          children: <Widget>[
            Container(
              width: 360.0,
              height: 50.0,
              //color:Colors.blue,
              child: Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                          IconButton(icon:Icon(Icons.person_pin,),
                          onPressed: (){},),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0,top: 2.0),
                            child: OutlinedButton(onPressed: (){},
                                child: Text("what's on you mind?                     "),),
                          )
                        ],
                      )
                    ],
              ),
            )
          ],
        ),
         Divider(color: Colors.black,),
             Row(
               children: [
                 Container(
                   width: 360.0,
                   height: 40.0,
                   child: Row(
                     children: [
                       Column(
                         children: [
                           Container(
                             width: 120.0,
                             height: 40.0,
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Column(
                                 mainAxisAlignment:MainAxisAlignment.center,
                                 children:[
                                 Icon(Icons.videocam,color: Colors.red,)
                               ],
                             ),
                        Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                                 padding: EdgeInsets.only(left: 5.0),
                               child: Text('Live'),
                     )
                        ],
                       )
                       ],
                     ),
                             )
                         ],
                       ),

                       Column(
                         children: [
                           Container(
                             width: 120.0,
                             height: 40.0,
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Column(
                                   mainAxisAlignment:MainAxisAlignment.center,
                                   children:[
                                     Icon(Icons.photo,color: Colors.green,)
                                   ],
                                 ),
                                 Column(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children: [
                                     Padding(
                                       padding: EdgeInsets.only(left: 5.0),
                                       child: Text('photos'),
                                     )
                                   ],
                                 )
                               ],
                             ),
                           )
                         ],
                       ),
                       Column(
                         children: [
                           Container(
                             width: 120.0,
                             height: 40.0,
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Column(
                                   mainAxisAlignment:MainAxisAlignment.center,
                                   children:[
                                     Icon(Icons.check_circle_rounded,color: Colors.red,)
                                   ],
                                 ),
                                 Column(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children: [
                                     Padding(
                                       padding: EdgeInsets.only(left: 5.0),
                                       child: Text('check in'),
                                     )
                                   ],
                                 )
                               ],
                             ),
                           )
                         ],
                       ),
                     ],
                   ),
                 )
               ],
             ),
          //second layer completed
          //third layer started
          Row(
            children: [
              Container(
                width: 390.0,
                height: 10.0,
                color: Colors.black26,
              )
            ],

          ),
          //third layer completed
          //fourth layer started

          Container(
            width: double.infinity,
            height: 170.0,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child:Row(
                children: [
                       Mystory(myStory: "images/story/zebra.jpg"),
                      FriendStory(friendStory:"images/story/baby1.jpg",proName: 'A' ,proPic: "images/propic/1.jpg"),
                  FriendStory(friendStory:"images/story/baby2.jpg",proName: 'B',proPic: "images/propic/2.jpg"),
                  FriendStory(friendStory:"images/story/dulqar.jpg",proName: 'C',proPic: "images/propic/3.jpg" ),
                  FriendStory(friendStory:"images/story/giraffe.jpg",proName: 'D',proPic: "images/propic/4.jpg" ),
                ],
              ) ,
            ),
          ),
          //fourth layer completed

          //fifth layer started
          Row(
            children: [
              Container(
                width: 390.0,
                height: 10.0,
                color: Colors.black26,
              )
            ],
          ),

          //fifth layer closed
          //post layer opened

           FriendPost(proPic: 'images/propic/1.jpg',proName: ' Rose mery',dateAndLocation: ' Today at 8.56 AM london',post:"images/posts/post1.jpg",like:"2k",comments: "comments 400",caption: "good"),
          FriendPost(proPic: 'images/propic/3.jpg',proName: ' Liya george',dateAndLocation: ' Yesterday at 2.56 AM Africa',post:"images/posts/post2.jpg" ,like:"2k",comments: "comments 9oo",caption: "good"),
         // FriendPost(),



          //post layer closed
        ],
      ),

    );
  }
}
