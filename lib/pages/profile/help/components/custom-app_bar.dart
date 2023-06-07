// ignore: duplicate_ignore
// ignore_for_file: file_names, duplicate_ignore
// ignore: file_names
// import 'package:flutter/material.dart';
// import 'package:mobile_box/parslib/size_config.dart';

// class CustomAppBar extends StatelessWidget {
//   final String title;

//   const CustomAppBar({super.key, required this.title});

//   Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Padding(
//         padding:
//             EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(3)),
//         child: Row(
//           children: [
//             SizedBox(
//               height: getProportionateScreenWidth(50),
//               width: getProportionateScreenWidth(50),
//               child: IconButton(
//                 icon: const Icon(Icons.arrow_back, color: Colors.white),
//                 onPressed: () => Navigator.pop(context),
//               ),
//             ),
//             Container(
//               child: Text(
//                 title,
//                 textAlign: TextAlign.center,
//                 style: const TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.w500,
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//             const Spacer(),
//             SizedBox(
//               height: getProportionateScreenWidth(50),
//               width: getProportionateScreenWidth(50),
//               child: IconButton(
//                 icon: const Icon(Icons.send, color: Colors.white),
//                 onPressed: () => Navigator.pop(context),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
