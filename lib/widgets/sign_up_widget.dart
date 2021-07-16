// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:provider/provider.dart';
// import 'package:task/provider.dart';
//
// class SignUpWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(
//             'Log In',
//             style: TextStyle(
//               color: Colors.white,
//               fontWeight: FontWeight.bold,
//               fontSize: 60,
//             ),
//           ),
//           SizedBox(
//             height: 120,
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20.0),
//             child: ElevatedButton.icon(
//               style: ElevatedButton.styleFrom(
//                 primary: Colors.white,
//                 onPrimary: Colors.black,
//                 minimumSize: Size(double.infinity, 50),
//               ),
//               icon: FaIcon(
//                 FontAwesomeIcons.google,
//                 color: Colors.red,
//               ),
//               label: Text('Sign In with Google'),
//               onPressed: () {
//                 // final provider =
//                 //     Provider.of<GoogleSignInProvider>(context, listen: false);
//                 // provider.googleLogin();
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
