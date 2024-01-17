import 'package:flutter/material.dart';
Widget  FriendPost({proPic,proName,dateAndLocation,comments,like,post,caption}){

  return Padding(
    padding: const EdgeInsets.only(top: 5.0,bottom: 5.0,),
    child: Row(
      children: [
        Container(
          width: 390.0,
          height: 550.0,
          //color: Colors.blue,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5.0,right: 5.0),
                child: Container(
                  width: 390,
                  height: 50.0,
                  child:Row(
                    children: [
                      Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 60.0,

                          height: 50.0,
                         child: Container(
                           width: 40.0,
                           height: 40.0,
                           child: Container(
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(40.0),
                               border: Border.all(
                                 style: BorderStyle.solid,
                               ),
                               image: DecorationImage(
                                 image: AssetImage(proPic),
                                 fit: BoxFit.cover,
                               )
                             ),
                           ),
                         ),
                        )
                      ],
                    ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 240.0,
                                height: 20.0,

                                child: Text(proName,
                                  style: TextStyle(
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.bold),),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                width: 240.0,
                                height: 30.0,

                                child: Text( dateAndLocation,
                                  style:TextStyle(fontSize: 12.0) ,),
                              )
                            ],
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 60.0,
                            height: 50.0,

                            child: IconButton(
                              icon: Icon(Icons.more_horiz),
                              onPressed: (){},
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ),
              ),
              Container(
                width: 390,
                height: 400.0,

                child: Column(
                  children: [
                    Container(
                      height: 20.0,
                      width: 390.0,
                      //color: Colors.blue,
                      child: Text(caption),
                    ),
                    Container(
                      width: 390.0,
                      height: 380.0,
                      color: Colors.pink,
                      child: Image(
                        image: AssetImage(
                          post
                        ),
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),

              ),
              Container(
                height: 30.0,
                width: 390.0,
                //color: Colors.pink,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [

                    Container(
                      width: 100.0,
                      height: 30.0,
                      //color: Colors.blue,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.thumb_up,size: 17.0,color: Colors.blue,),
                          Icon(Icons.favorite,size: 17.0,color: Colors.red,),
                          Text(like),
                        ],
                      ),
                    )
                ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 140.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            width: 150.0,
                            height: 30.0,
                            //color: Colors.blue,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(comments),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: 390.0,
                height: 30.0,

                child: Row(
                  children: [
                    Container(
                      width: 130.0,
                      height: 30.0,

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                              icon: Icon(Icons.thumb_up,size: 20.0,
                              color: Colors.blue,),
                          onPressed: (){},),
                          Text('like'),
                        ],
                      ),
                    ),
                    Container(
                      width: 130.0,
                      height: 30.0,
                     // color: Colors.red,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton( icon:Icon(Icons.comment,size: 20.0,color: Colors.black54,),
                          onPressed: (){},),
                          Text('comments')
                        ],
                      ),
                    ),
                    Container(
                      width: 130.0,
                      height: 30.0,
                      //color: Colors.blue,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton( icon:Icon(Icons.share,size: 20.0,color: Colors.black54,),
                            onPressed: (){},),
                          Text('share')
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 5.0,bottom: 5.0),
                child: Container(
                  height: 5.0,
                  width: 390.0,
                  color: Colors.black26,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}