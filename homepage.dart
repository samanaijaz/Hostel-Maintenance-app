// import 'package:design_app/hostelnames.dart';
// import 'package:flutter/material.dart';
//
// class MyHomePage extends StatefulWidget {
//   // const MyHomePage({super.key, required this.title});
//   // final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   var nameController=TextEditingController();
//
//
//   @override
//   Widget build(BuildContext context) {
//     final Size screenSize = MediaQuery.of(context).size;
//     final double screenWidth = screenSize.width;
//     final double screenHeight = screenSize.height;
//
//
//     return Scaffold(
//       appBar: AppBar(
//
//         title: Text("IIT JODHPUR"),
//       ),
//       body:Container(
//         width: screenWidth , // 80% of the screen width
//         height: screenHeight,
//         decoration: BoxDecoration(
//           // image: DecorationImage(
//           //   image:NetworkImage(""),
//           //     fit:BoxFit.cover,
//           //
//           // ),
//         ),
//         child: Column(
//
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//               width: screenWidth*0.4 , // 80% of the screen width
//               height: screenHeight*0.1,
//               decoration: BoxDecoration(
//                 shape:BoxShape.circle,
//                 // image: DecorationImage(
//                 //   // image:NetworkImage(""),
//                 //   // fit:BoxFit.cover,
//                 //
//                 //
//                 // ),
//               ),
//
//
//             ),
//             Container(
//
//
//             ),
//             Container(
//               width: screenWidth*0.4 , // 80% of the screen width
//               height: screenHeight*0.05,
//               child:Text("LOG IN",
//                 style:TextStyle(
//                   fontSize: 18,
//                   color:Colors.deepOrange,
//                 ),
//               ),
//             ),
//
//             Container(
//               width: screenWidth*0.4 , // 80% of the screen width
//               height: screenHeight*0.004,
//
//             ),
//             SizedBox(
//               width: screenWidth*0.8 , // 80% of the screen width
//               height: screenHeight*0.1,
//               child:TextField(
//                 controller:nameController,
//                 style: TextStyle(color: Colors.pinkAccent),
//                 decoration:InputDecoration(
//                   focusedBorder:OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(11),
//                     borderSide: BorderSide(width: 5, color: Colors.lightGreenAccent,),
//
//                   ),
//                   enabledBorder:OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(11),
//                     borderSide: BorderSide(width: 5, color: Colors.white),
//
//                   ),
//                   prefixIcon:Icon(Icons.email,color:Colors.lightGreen),
//                 ),),),
//
//             Container(
//               width: screenWidth*0.4 , // 80% of the screen width
//               height: screenHeight*0.004,
//             ),
//
//             SizedBox(
//               width: screenWidth*0.8 , // 80% of the screen width
//               height: screenHeight*0.1,
//               child:TextField(
//                 style: TextStyle(color: Colors.pinkAccent),
//                 decoration:InputDecoration(
//                   focusedBorder:OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(11),
//                     borderSide: BorderSide(width: 5, color: Colors.lightGreenAccent),
//
//                   ),
//                   enabledBorder:OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(11),
//                     borderSide: BorderSide(width: 5, color: Colors.white),
//
//                   ),
//                   prefixIcon:Icon(Icons.password,color:Colors.lightGreen),
//                 ),),),
//
//             Container(
//               width: screenWidth*0.4 , // 80% of the screen width
//               height: screenHeight*0.004,
//             ),
//
//             Container(
//               width: screenWidth*0.8 , // 80% of the screen width
//               height: screenHeight*0.1,
//               child:Row(
//                 mainAxisAlignment:MainAxisAlignment.spaceEvenly,
//                 children:[
//                   ElevatedButton(
//                     onPressed: () {
//
//                     },
//                     child:Text("FORGOT PASSWORD",
//                       style:TextStyle(
//                           fontSize:15,
//                           color:Colors.lightGreen),
//
//                     ),
//                   ),
//
//                   ElevatedButton(
//                     onPressed: (
//                         ) {
//                       Navigator.push(context,MaterialPageRoute(builder: (context)=>hostelnames(),
//                       ));
//                     },
//                     child:Text("LOGIN",
//                       style:TextStyle(
//                           fontSize:15,
//                           color:Colors.lightGreen),
//
//                     ),
//                   ),
//
//
//                 ],
//               ),
//             ),
//
//           ],
//
//         ),
//
//       ),);
//   }
// }
