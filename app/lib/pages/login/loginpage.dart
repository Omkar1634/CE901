import 'package:app/pages/login/body.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}





























// class LoginPage extends StatefulWidget {
//   const LoginPage({Key? key}) : super(key: key);

//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//         color: Colors.white,
//         child: SingleChildScrollView(
//             child: Form(
//           child: Column(
//             children: [
//               Image.asset(
//                 tLoginLogo,
//                 height: 280,
//                 width: 200,
//               ),
//               Center(
//                   child: Padding(
//                 padding: const EdgeInsets.symmetric(
//                     vertical: 16.0, horizontal: 32.0),
//                 child: Column(
//                   children: [
//                     TextFormField(
//                       decoration: const InputDecoration(
//                         hintText: "Enter username",
//                         labelText: "Username",
//                       ),
//                     ),
//                     TextFormField(
//                       decoration: const InputDecoration(
//                         hintText: "Enter your Patient's ID",
//                         labelText: "Patient's ID",
//                       ),
//                     ),
//                     const SizedBox(
//                       height: 40.0,
//                     ),
//                     RoundedButton(
//                       text: "LOGIN",
//                       press: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) {
//                               return const HomePage();
//                             },
//                           ),
//                         );
//                       },
//                     ),
//                   ],
//                 ),
//               ))
//             ],
//           ),
//         )));
//   }
// }
               


























// class LoginPage extends StatefulWidget {
//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   String name = "";
//   bool changedButton = false;
//   final _formkey = GlobalKey<FormState>();

//   moveTohome(BuildContext context) async {
//     if (_formkey.currentState!.validate()) {
//       setState(() {
//         changedButton = true;
//       });
//       await Future.delayed(Duration(seconds: 1));
//       await Navigator.pushNamed(context, MyRoutes.homeRoute);
//       setState(() {
//         changedButton = false;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return 

//         color: Colors.white,
//         child: SingleChildScrollView(
//           child: Form(
//             key: _formkey,
//             child: Column(
//               children: [
                
//                 // Image.asset(
//                 //   'assets/images/login.png',
//                 //   height: 350,
//                 //   fit: BoxFit.cover,
//                 // ),
//                 SizedBox(
          
//                   height: 20.0,
//                 ),
//                 Text(
//                   "Welcome $name",
//                   style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
//                 ),
//                 Center(
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(
//                         vertical: 16.0, horizontal: 32.0),
//                     child: Column(
//                       children: [
//                         TextFormField(
//                           decoration: InputDecoration(
//                             hintText: "Enter Username",
//                             labelText: "Username",
//                           ),
//                           validator: (value) {
//                             if (value?.isEmpty ?? true) {
//                               return "Username  cannot be empty";
//                             }
//                             return null;
//                           },
//                           onChanged: (value) {
//                             name = value;
//                             setState(() {});
//                           },
//                         ),
//                         TextFormField(
//                           obscureText: true,
//                           decoration: const InputDecoration(
//                             hintText: "Patient's ID",
//                             labelText: "Patient's ID",
//                           ),
//                           validator: (value) {
//                             if (value?.isEmpty ?? true) {
//                               return "Patient's ID cannot be empty";
//                             } else if (value!.length < 6) {
//                               return "Patient's ID length should be at least 6";
//                             }
//                             return null;
//                           },
//                         ),
//                         const SizedBox(
//                           height: 40.0,
//                         ),

//                         InkWell(
//                           onTap: () => moveTohome(context),
//                           child: AnimatedContainer(
//                             duration: Duration(seconds: 1),
//                             width: changedButton ? 50 : 150,
//                             height: 50,
//                             alignment: Alignment.center,
//                             child: changedButton
//                                 ? Icon(
//                                     Icons.done,
//                                     color: Colors.white,
//                                   )
//                                 : Text(
//                                     "Login",
//                                     style: TextStyle(
//                                         color: Colors.white,
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 18),
//                                   ),
//                             decoration: BoxDecoration(
//                                 color: Colors.blue,
//                                 // shape: changedButton
//                                 //     ? BoxShape.circle
//                                 //     : BoxShape.rectangle,
//                                 borderRadius: BorderRadius.circular(
//                                   changedButton ? 50 : 8,
//                                 )),
//                           ),
//                         )
//                         // ElevatedButton(
//                         //   child: Text("Login"),
//                         //   style: TextButton.styleFrom(maximumSize: Size(150, 50)),
//                         //   onPressed: () {
//                         //     Navigator.pushNamed(context, MyRoutes.homeRoute);
//                         //   },
//                         // )
//                       ],
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ));
//   }
// }
