// import 'package:flutter/material.dart';
// import 'package:relief_tracker/presentation/screens/register/reg_page.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:relief_tracker/presentation/notifier/provider.dart';
// import 'package:relief_tracker/presentation/route_manager/route_manager.dart';

// class LoginPage extends StatefulWidget {
//   const LoginPage({Key? key}) : super(key: key);

//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage>{

//   bool passwordvalue= true;
//   Widget eye = const Icon(Icons.visibility_off);
//   Widget eye2 = const Icon(Icons.visibility_off);

//  final TextEditingController _usernameController = TextEditingController();
//   final TextEditingController _firstNameController = TextEditingController();
//   final TextEditingController _lastNameController = TextEditingController();
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
//   final TextEditingController _confirmPasswordController =
//       TextEditingController();

//   void handleRegister() {
//     final username = _usernameController.text;
//     final firstName = _firstNameController.text;
//     final lastName = _lastNameController.text;
//     final email = _emailController.text;
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
//           password: password,
//           email: email,
//           firstName: firstName,
//           lastName: lastName,
//         );
//   }


//   @override
//   Widget build(BuildContext context) {

//     final authState = ref.watch(authNotifierProvider);

//     authState.maybeWhen(
//       authenticated: () {
//         WidgetsBinding.instance.addPostFrameCallback((_) {
//           if (RouteManager.of(context).canPop()) {
//             RouteManager.of(context).pop(true);
//           }
//         });
//       },
//       orElse: () {},
//     );

//     return Scaffold(
//         body: Stack(
//       children: [
//         Container(
//           height: double.infinity,
//           width: double.infinity,
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(colors: [
//             Color.fromARGB(255, 16, 223, 61),
//             Color(0xff281537),
//             ]),
//           ),
//           child: const Padding(
//             padding: EdgeInsets.only(top: 60.0, left: 22),
//             child: Text(
//               'Hello\nSign in!',
//               style: TextStyle(
//                   fontSize: 30,
//                   color: Colors.white,
//                   fontWeight: FontWeight.bold),
//             ),
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.only(top: 200.0),
//           child: Container(
//             decoration: const BoxDecoration(
//               borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(40), topRight: Radius.circular(40)),
//               color: Colors.white,
//             ),
//             height: double.infinity,
//             width: double.infinity,
//             child:  Padding(
//               padding: const EdgeInsets.only(left: 18.0,right: 18),
//               child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                    TextField(
//                     controller: _usernameController,
//                     decoration: const InputDecoration(
//                       suffixIcon: Icon(Icons.check,color: Colors.grey,),
//                       label: Text('Phone',style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         color: Color.fromARGB(255, 16, 223, 61),
//                       ),)
//                     ),
//                     keyboardType: TextInputType.phone,
//                   ),
//                    TextField(
//                     controller: _passwordController,
//                     obscureText: passwordvalue,
//                     decoration: InputDecoration(
//                         suffixIcon: IconButton(
//                           icon: eye,
//                           onPressed: () {
//                             setState(() {
//                               passwordvalue = !passwordvalue;
//                               eye = Icon(passwordvalue ? Icons.visibility : Icons.visibility_off);
//                             });
//                           },
//                         ),
//                         label:const Text('Password',style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           color: Color.fromARGB(255, 16, 223, 61),
//                         ),)
//                     ),
//                     keyboardType: TextInputType.visiblePassword,

//                   ),
//                   const SizedBox(height: 20,),
//                   const Align(
//                     alignment: Alignment.centerRight,
//                     child: Text('Forgot Password?',style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 17,
//                       color: Color(0xff281537),
//                     ),),
//                   ),
//                   const SizedBox(height: 70,),
//                   Container(
//                     height: 55,
//                     width: 300,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(30),
//                       gradient: const LinearGradient(
//                         colors: [
//                           Color.fromARGB(255, 16, 223, 61),
//                           Color(0xff281537),
//                         ]
//                       ),
//                     ),
//                     child: InkWell(
//                       onTap: () {
//                         handleLogin();
//                       },
//                       child: const Center(child: Text('SIGN IN',style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 20,
//                         color: Colors.white
//                       ),),),
//                     ),
//                   ),
//                   const SizedBox(height: 150,),
//                   Align(
//                     alignment: Alignment.bottomRight,
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       crossAxisAlignment: CrossAxisAlignment.end,
//                       children: [
//                        const Text("Don't have account?",style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           color: Colors.grey
//                         ),),
//                         GestureDetector(
//                           onTap: () {
//                              Navigator.push(context,
//                                  MaterialPageRoute(builder: (context) => const RegPage()));
//                           },
//                           child: const Text("Sign up",style: TextStyle(///done login page
//                               fontWeight: FontWeight.bold,
//                               fontSize: 17,
//                               color: Colors.black
//                           ),),
//                         ),
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ],
//     ));
//   }
// }