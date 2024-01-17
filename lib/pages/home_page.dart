import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_app/pages/chatusers.dart';
import 'package:e_commerce_app/pages/message.dart';
import 'package:e_commerce_app/pages/notification.dart';
import 'package:e_commerce_app/pages/profile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/components/appbarbutton.dart';

import 'HomeScreen.dart';
import 'group.dart';



class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: Text(
              "facebook",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              AppBarButton(
                  buttonIcon: Icons.search,
                  buttonAction:(){
                    TextField();
                  }),
              AppBarButton(
                  buttonIcon: Icons.chat,
                  buttonAction:(){
                    TextField();
                  }),
             ],
            //tab bar
            bottom: TabBar(
              unselectedLabelColor: Colors.black54,
              indicatorColor: Colors.blue,
              labelColor: Colors.blue,
              tabs: [
                Tab(icon:Icon( Icons.home),),
                Tab(icon:Icon( Icons.group),),
                Tab(icon:Icon( Icons.notifications_none),),
                Tab(icon:Icon( Icons.message),),
                Tab(icon:Icon( Icons.menu),),
              ],
            ),
          ),
          //tab bar view
          body: TabBarView(
            children:<Widget> [
                HomeScreen(),
              FriendsPage(),
             Icon(Icons.add_circle),
              ChatUsers(),
             ProfilePage(),
            ],
          ),
        ),
    );
  }
}
