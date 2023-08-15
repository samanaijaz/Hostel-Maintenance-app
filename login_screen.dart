// import 'package:flutter/material.dart';
//
// class LoginScreen extends StatefulWidget {
//
//
//   @override
//   State<LoginScreen> createState() => _LoginScreen();
// }
//
// class _LoginScreen extends State<LoginScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//
//
//   }
//
// }
// ^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]

import 'package:design_app/homepage.dart';
import 'package:design_app/hostelnames.dart';
import 'package:design_app/screens/registration_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


class LoginScreen extends StatefulWidget {


  @override
  State<LoginScreen> createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();


  final _auth=FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {

    // email field
    final emailField =TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      validator:(value)
        {
          if (value!.isEmpty)
            {
              return ("Please Enter your Email");
            }
          if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value))
            {
              return ("please enter a valid eamil address");
            }
          return null;
        },
      onSaved:(value)
        {
          emailController.text = value!;
          },
      textInputAction: TextInputAction.next,
      decoration:InputDecoration(
        prefixIcon: Icon(Icons.mail),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText:"Email",
        border:OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),

      ),
    );

    final passwordField =TextFormField(
      autofocus: false,
      obscureText: true,
      controller: passwordController,
      // keyboardType: TextInputType.password,
      validator:(value)
      {
        RegExp regex= new RegExp(r'^.{6,}$');

        if (value!.isEmpty)
        {
          return ("Please Enter your password ");
        }
        if (!regex.hasMatch(value))
        {
          return ("please enter a valid eamil address (min 6 characters)");
        }
        return null;
      },
      onSaved:(value)
      {
        passwordController.text =value!;
      },
      textInputAction: TextInputAction.done,
      decoration:InputDecoration(
        prefixIcon: Icon(Icons.vpn_key),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText:"Password",
        border:OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),

      ),
    );

    final loginbutton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color:Colors.blue.shade600,
      child:MaterialButton(
        padding:EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: (){
          signIn(emailController.text,passwordController.text);

        },
        child:Text("login",
          textAlign:TextAlign.center,
          style:TextStyle(fontSize:20,
          color:Colors.white,
            fontWeight:FontWeight.bold,
          ),
        ),
      ),


    );
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;
    final double screenHeight = screenSize.height;

    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.blue.shade800,
        title:Text("IIT Jodhpur"),

      ),
      // backgroundColor: Colors.white,
      body:Center(
        child:SingleChildScrollView(
          child:Container(
            width: screenWidth, // 80% of the screen width
            height: screenHeight,

            // color:Colors.grey.shade400,
            child: Padding(
              padding:const EdgeInsets.all(34.0),
              child: Form(
                key: _formKey,
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children:<Widget>[
                    // SizedBox(
                    //   height:200,
                    //   child:Image.asset("assets/iitjodhpurimage.png",
                    //   fit: BoxFit.contain,
                    //   ),
                    // ),
                  SizedBox(
                  height: 200,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25.0), // set the radius here
                    child: Image.asset(
                      "assets/iitjodhpurimage.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                    SizedBox(height:22),
                    emailField,
                    SizedBox(height:25),
                    passwordField,
                    SizedBox(height:25),
                    loginbutton,
                    SizedBox(height:25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:<Widget>[
                        Text("Dont have an account"),
                        GestureDetector(onTap: () {
                          Navigator.push(context,MaterialPageRoute(builder:(context)=>RegistrationScreen()),
                          );
                        },
                        child:Text("Sign up",
                        style:TextStyle(fontWeight: FontWeight.w600,
                          color:Colors.blue.shade800,
                          fontSize: 15,
                        ),
                        ),
                        ),
                      ],
                    ),
                  ],

                ),
              ),
            ),
          ),
        ),
      ),

    );
  }
  void signIn(String email, String password)async
  {
    if (_formKey.currentState!.validate())
      {
        await _auth.signInWithEmailAndPassword(email: email, password: password)
            .then((uid)=>{
              Fluttertoast.showToast(msg: "login sucessful"),
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>hostelnames()))
         }).catchError((e)
            {
              Fluttertoast.showToast(msg: e!.message);
            });
      }
  }

}

