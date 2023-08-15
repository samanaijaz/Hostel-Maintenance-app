import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:design_app/hostelnames.dart';
import 'package:design_app/models/usermodel.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class RegistrationScreen extends StatefulWidget {


  @override
  State<RegistrationScreen> createState() => _RegistrationScreen();
}

class _RegistrationScreen extends State<RegistrationScreen> {

  final _auth=FirebaseAuth.instance;
  final _formkey = GlobalKey<FormState>();
  String? errorMessage;

  final firstNameEditingController =new TextEditingController();

  final secondNameEditingController =new TextEditingController();

  final emailEditingController =new TextEditingController();

  final passwordEditingController =new TextEditingController();

  final confirmpasswordEditingController =new TextEditingController();

  @override
  Widget build(BuildContext context) {

    final firstnameField =TextFormField(
      autofocus: false,
      controller: firstNameEditingController ,
      keyboardType: TextInputType.name,
      validator:(value)
      {
        RegExp regex= new RegExp(r'^.{3,}$');

        if (value!.isEmpty)
        {
          return ("Please Enter your firstName ");
        }
        if (!regex.hasMatch(value))
        {
          return ("please enter a valid firstName (min 3 characters)");
        }
        return null;
      },
      onSaved:(value)
      {
        firstNameEditingController .text =value!;
      },
      textInputAction: TextInputAction.next,
      decoration:InputDecoration(
        prefixIcon: Icon(Icons.account_circle),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText:"First Name",
        border:OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),

      ),
    );

    final secondnameField =TextFormField(
      autofocus: false,
      controller: secondNameEditingController ,
      keyboardType: TextInputType.name,
      validator:(value)
      {
        // RegExp regex= new RegExp(r'^.{3,}$');

        if (value!.isEmpty)
        {
          return ("Please Enter your secondName ");
        }
        // if (!regex.hasMatch(value))
        // {
        //   return ("please enter a valid secondName (min 3 characters)");
        // }
         return null;
      },
      onSaved:(value)
      {
        secondNameEditingController .text =value!;
      },
      textInputAction: TextInputAction.next,
      decoration:InputDecoration(
        prefixIcon: Icon(Icons.account_circle),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText:"Second Name",
        border:OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),

      ),
    );

    final emailField =TextFormField(
      autofocus: false,
      controller: emailEditingController ,
      keyboardType: TextInputType.emailAddress,
      validator:(value)
      {
        if (value!.isEmpty)
        {
          return ("Please Enter your Email");
        }
        if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value))
        {
          return ("please enter a valid email address");
        }
        return null;
      },
      onSaved:(value)
      {
        emailEditingController .text =value!;
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
      controller: passwordEditingController ,
      // keyboardType: TextInputType.emailAddress,
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
        passwordEditingController .text =value!;
      },
      textInputAction: TextInputAction.next,
      decoration:InputDecoration(
        prefixIcon: Icon(Icons.vpn_key),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText:"Password",
        border:OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),

      ),
    );

    final confirmpasswordField =TextFormField(
      autofocus: false,
      obscureText: true,
      controller: confirmpasswordEditingController ,
      // keyboardType: TextInputType.emailAddress,
      validator:(value)
      {
         if (confirmpasswordEditingController.text != passwordEditingController.text )
        {
          return ("Password dont match");
        }

        return null;
      },
      onSaved:(value)
      {
        confirmpasswordEditingController .text =value!;
      },
      textInputAction: TextInputAction.done,
      decoration:InputDecoration(
        prefixIcon: Icon(Icons.vpn_key),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText:"Confirm Password",
        border:OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),

      ),
    );

    final signupbutton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color:Colors.redAccent,
      child:MaterialButton(
        padding:EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: (){
          signUp(emailEditingController.text,passwordEditingController.text);

        },
        child:Text("Signup",
          textAlign:TextAlign.center,
          style:TextStyle(fontSize:20,
            color:Colors.white,
            fontWeight:FontWeight.bold,
          ),
        ),
      ),


    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.transparent,
        elevation:0,
        leading:IconButton(
          icon:Icon(Icons.arrow_back, color:Colors.red),
          onPressed: () {
            Navigator.of(context).pop();
          },

        ),

      ),
      backgroundColor: Colors.white,
      body:Center(
        child:SingleChildScrollView(
          child:Container(
            color:Colors.white,
            child: Padding(
              padding:const EdgeInsets.all(36.0),
              child: Form(
                key: _formkey,
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children:<Widget>[
                    SizedBox(
                      height:170,
                      child:Image.asset("assets/iitjodhpurimage.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(height:20),
                    firstnameField,
                    SizedBox(height:20),
                    secondnameField,
                    SizedBox(height:20),
                    emailField,
                    SizedBox(height:20),
                    passwordField,
                    SizedBox(height:20),
                    confirmpasswordField,
                    SizedBox(height:20),
                    signupbutton,

                  ],

                ),
              ),
            ),
          ),
        ),
      ),

    );
  }

  void signUp(String email,String password)async
  {
    if (_formkey.currentState!.validate()) {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password)
          .then((value) => {
      postDetailsToFirestore()

      }).catchError((e) {
        Fluttertoast.showToast(msg: e!.message);
      });
     }
      // on FirebaseAuth catch (error) {
    //   switch (error.code) {
    //   case "invalid-email":
    //   errorMessage = "Your email address appears to be malformed.";
    //   break;
    //   case "wrong-password":
    //   errorMessage = "Your password is wrong.";
    //   break;
    //   case "user-not-found":
    //   errorMessage = "User with this email doesn't exist.";
    //   break;
    //   case "user-disabled":
    //   errorMessage = "User with this email has been disabled.";
    //   break;
    //   case "too-many-requests":
    //   errorMessage = "Too many requests";
    //   break;
    //   case "operation-not-allowed":
    //   errorMessage = "Signing in with Email and Password is not enabled.";
    //   break;
    //   default:
    //   errorMessage = "An undefined Error happened.";
    //   }
  }


    postDetailsToFirestore() async
    {
      FirebaseFirestore firebaseFirestore =FirebaseFirestore.instance;
      User? user =_auth.currentUser;

      UserModel userModel =UserModel();

      userModel.email=user!.email;
      userModel.uid=user.uid;
      userModel.firstName =firstNameEditingController.text;
      userModel.secondName=secondNameEditingController.text;

      await firebaseFirestore
        .collection("users")
        .doc(user.uid)
        .set(userModel.toMap());
      Fluttertoast.showToast(msg: "account created successfully");
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>hostelnames()), (route) => false);
      
    }
  }


