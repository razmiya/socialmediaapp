import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/button.dart';
import '../components/textfield.dart';
import '../services/auth_service.dart';
class Register_Page extends StatefulWidget {
  final void Function()? onTap;
  const Register_Page({super.key,
    required this.onTap});

  @override
  State<Register_Page> createState() => _Register_PageState();
}

class _Register_PageState extends State<Register_Page> {
  final usernameController=TextEditingController();
  final emailController=TextEditingController();
  final passwordController=TextEditingController();
  final confirmpassworsController=TextEditingController();
  //sign up user
  void signUp() async{
    if(passwordController.text != confirmpassworsController.text){
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content:Text("password does not match"),
        ),
      );
      return;
    }
    //get auth service
    final authService = Provider.of<AuthService>(context,listen: false);
    try{
      await authService.signUpWithEmailAndPassword(
        emailController.text,
        passwordController.text,
      );
    }
    catch(e){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e.toString()),
        ),
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 10,),
                Text("WE CHAT",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                const SizedBox(height: 10,),
                //logo
                Icon(Icons.account_box,size: 80,
                  color: Colors.grey,),
                //create account message
                const SizedBox(height: 50,),
                Text("let's create an account for you",
                  style: TextStyle(fontSize: 18),),
                //user name
                const SizedBox(height: 30,),
                MyTextField(controller: usernameController,
                    hinttext:'User name',
                    obscureText: false),
                const SizedBox(height: 30,),
                //email textfield
                const SizedBox(height: 30,),
                MyTextField(controller: emailController,
                    hinttext:'Email',
                    obscureText: false),
                const SizedBox(height: 30,),
                //password textfield
                MyTextField(controller: passwordController,
                    hinttext:'Password',
                    obscureText: true),
                const SizedBox(height: 30,),
                //confirm password
                MyTextField(controller: confirmpassworsController,
                    hinttext:'Confirm Password',
                    obscureText: true),
                const SizedBox(height: 30,),
                //sign up button
                Button(onTap:signUp,
                    text: "sign up"),
                //not a member? register now
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("all ready a member ?"),
                      const SizedBox(width: 4,),
                      GestureDetector(
                        onTap:widget.onTap ,
                        child: Text("login now",
                          style: TextStyle(fontWeight: FontWeight.bold), ),
                      ),

                    ]
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
