// import 'package:flutter/material.dart';

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: <Widget>[
//           ClipPath(
//             clipper: BottomClipper(),
//             child: Container(
//               color: Colors.lightGreen,
//               height: 200.0,
//             ),
//           ),
//         ],
//       ),
//       );
//   }
// }

// class BottomClipper extends CustomClipper {
//   @override
//   Path getClip(Size size) {
//     var path = Path();
//     path.lineTo(0, 0);
//     path.lineTo(0, size.height - 30);
//     var firstControllerPoint = Offset(size.width / 2, size.height);
//     var firstEndPoint = Offset(size.width, size.height - 30);
//     path.quadraticBezierTo(
//       firstControllerPoint.dx,
//       firstControllerPoint.dy,
//       firstEndPoint.dx,
//       // first
//     );

//   }
// }
