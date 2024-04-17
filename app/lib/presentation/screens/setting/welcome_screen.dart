// import 'package:flutter/material.dart';
// import 'package:relief_tracker/presentation/screens/home/home_screen.dart';
// import 'package:relief_tracker/presentation/screens/login/login_page.dart';
// import 'package:relief_tracker/presentation/screens/register/reg_page.dart';


// class WelcomeScreen extends StatelessWidget {
  
//   const WelcomeScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         height: double.infinity,
//         width: double.infinity,
//         decoration: const BoxDecoration(
//             gradient: LinearGradient(colors: [
//           Color.fromARGB(255, 16, 223, 61),
//           Color(0xff281537),
//         ])),
//         child: Column(children: [
//            Padding(
//             padding:const EdgeInsets.only(top: 70.0),
//             child: ClipRRect(
//               borderRadius: BorderRadius.circular(30.0), // Adjust radius as needed
//               child:const SizedBox(
//                 height: 160.0,
//                 width: 180.0,
//                 child: Image(
//                   image: AssetImage('assets/images/logo.jpg'),
//                   fit: BoxFit.cover, // Adjust fit as needed (optional)
//                 ),
//               ),
//             ),
//           ),

//           const SizedBox(
//             height: 60,
//           ),
//           const Text(
//             'Welcome Back',
//             style: TextStyle(fontSize: 30, color: Colors.white),
//           ),

//           const SizedBox(
//             height: 30,
//           ),
//           InkWell(
//             onTap: () {
//                Navigator.push(context,
//                    MaterialPageRoute(builder: (context) => const HomeScreen() ));
//             },
//             child: Container(
//               height: 53,
//               width: 320,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(30),
//                 border: Border.all(color: Colors.white),
//               ),
//               child: const Center(
//                 child: Text(
//                   'Guest User',
//                   style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black),
//                 ),
//               ),
//             ),
//           ),

//           const SizedBox(
//             height: 30,
//           ),
//           GestureDetector(
//             onTap: () {
//               Navigator.push(context,
//                   MaterialPageRoute(builder: (context) => const LoginPage()));
//             },
//             child: Container(
//               height: 53,
//               width: 320,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(30),
//                 border: Border.all(color: Colors.white),
//               ),
//               child: const Center(
//                 child: Text(
//                   'SIGN IN',
//                   style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white),
//                 ),
//               ),
//             ),
//           ),
//           const SizedBox(
//             height: 30,
//           ),
//           GestureDetector(
//             onTap: () {
//                Navigator.push(context,
//                    MaterialPageRoute(builder: (context) => const RegPage()));
//             },
//             child: Container(
//               height: 53,
//               width: 320,
//               decoration: BoxDecoration(
//                 // color: Colors.white,
//                 borderRadius: BorderRadius.circular(30),
//                 border: Border.all(color: Colors.white),
//               ),
//               child: const Center(
//                 child: Text(
//                   'SIGN UP',
//                   style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white),
//                 ),
//               ),
//             ),
//           ),
          
//         ]),
//       ),
//     );
//   }
// }
