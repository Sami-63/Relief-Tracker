
// import 'package:flutter/material.dart';
// import 'package:relief_tracker/presentation/screens/login/login_page.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:relief_tracker/presentation/notifier/provider.dart';
// // import 'package:relief_tracker/presentation/route_manager/route_manager.dart';

// class RegPage extends ConsumerStatefulWidget {
//   const RegPage({Key? key}) : super(key: key);

//   @override
//   ConsumerState<RegPage> createState() => _RegPageState();
// }

// class _RegPageState extends ConsumerState<RegPage>{

//   final TextEditingController _usernameController = TextEditingController();
//   final TextEditingController _phnController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
//   final TextEditingController _confirmPasswordController =
//       TextEditingController();


//   bool passwordvalue = true;
//   bool passwordvalue2 = true;

//   Widget eye = const Icon(Icons.visibility_off);
//   Widget eye2 = const Icon(Icons.visibility_off);

//    void handleRegister() {
//     final username = _usernameController.text;
//     final phone = _phnController.text;
//     final password = _passwordController.text;
//     final confirmPassword = _confirmPasswordController.text;

//     if (password != confirmPassword) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(
//           content: Text('Passwords do not match'),
//         ),
//       );
//       return;
//     }

//     ref.read(authNotifierProvider.notifier).signUp(
//           username: username,
//           phone: phone,
//           password: password,
//         );
//   }


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Stack(
//           children: [
//             Container(
//               height: double.infinity,
//               width: double.infinity,
//               decoration: const BoxDecoration(
//                 gradient: LinearGradient(colors: [
//                   Color.fromARGB(255, 16, 223, 61),
//                   Color(0xff281537),
//                 ]),
//               ),
//               child: const Padding(
//                 padding: EdgeInsets.only(top: 60.0, left: 22),
//                 child: Text(
//                   'Create Your\nAccount',
//                   style: TextStyle(
//                       fontSize: 30,
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 200.0),
//               child: Container(
//                 decoration: const BoxDecoration(
//                   borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(40), topRight: Radius.circular(40)),
//                   color: Colors.white,
//                 ),
//                 height: double.infinity,
//                 width: double.infinity,
//                 child:  Padding(
//                   padding: const EdgeInsets.only(left: 18.0,right: 18),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                        TextField(
//                         controller: _usernameController,
//                         decoration: const InputDecoration(
//                             suffixIcon: Icon(Icons.check,color: Colors.grey,),
//                             label: Text('Full Name',style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               color:Color.fromARGB(255, 16, 223, 61),

//                             ),)
//                         ),
//                         keyboardType: TextInputType.name,
//                       ),

//                        TextField(
//                         controller: _phnController,
//                         decoration:const InputDecoration(
//                             suffixIcon: Icon(Icons.check,color: Colors.grey,),
//                             label: Text('Phone',style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               color:Color.fromARGB(255, 16, 223, 61),

//                             ),)
//                         ),
//                         keyboardType: TextInputType.phone,
//                       ),
//                        TextField(
//                         controller: _passwordController,
//                         obscureText: passwordvalue,
//                         decoration:  InputDecoration(
//                             suffixIcon: IconButton(onPressed: (){
//                               setState(() {
//                                 passwordvalue = !passwordvalue;
//                                 eye = Icon(passwordvalue ? Icons.visibility : Icons.visibility_off);

//                               });
//                             }, icon: eye),
//                             label: const Text('Password',style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               color:Color.fromARGB(255, 16, 223, 61),

//                             ),)
//                         ),
//                         keyboardType: TextInputType.visiblePassword,
//                       ),
//                        TextField(
//                         controller: _confirmPasswordController,
//                         obscureText: passwordvalue2,
//                         decoration: InputDecoration(
//                             suffixIcon: IconButton(onPressed: (){
//                               setState(() {
//                                 passwordvalue2 = !passwordvalue2;
//                                 eye2 = Icon(passwordvalue2 ? Icons.visibility : Icons.visibility_off);
//                               });
//                             }, icon: eye2),
//                             label:const Text('Conform Password',style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               color:Color.fromARGB(255, 16, 223, 61),
//                             ),)
//                         ),
//                         keyboardType: TextInputType.visiblePassword,
//                       ),

//                       const SizedBox(height: 10,),
//                       const SizedBox(height: 70,),
//                       Container(
//                         height: 55,
//                         width: 300,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(30),
//                           gradient: const LinearGradient(
//                               colors: [
//                                Color.fromARGB(255, 16, 223, 61),
//                                Color(0xff281537),
//                               ]
//                           ),
//                         ),
//                         child: InkWell(
//                           onTap: () {
//                             handleRegister();
//                           },
//                           child: const Center(child: Text('SIGN UP',style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               fontSize: 20,
//                               color: Colors.white
//                           ),),),
//                         ),
//                       ),
//                       const SizedBox(height: 80,),
//                        Align(
//                         alignment: Alignment.bottomRight,
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.end,
//                           crossAxisAlignment: CrossAxisAlignment.end,
//                           children: [
//                            const Text("Do have account?",style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.grey
//                             ),),
//                              GestureDetector(
//                           onTap: () {
//                              Navigator.push(context,
//                                  MaterialPageRoute(builder: (context) => const LoginPage()));
//                           },
//                           child: const Text("Sign in",style: TextStyle(///done login page
//                               fontWeight: FontWeight.bold,
//                               fontSize: 17,
//                               color: Colors.black
//                           ),),
//                         ),
//                           ],
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ));
//   }
// }