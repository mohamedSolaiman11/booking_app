// import 'package:flutter/material.dart';
//
// class CustomNavigationBar extends StatefulWidget {
//   const CustomNavigationBar({super.key});
//
//   @override
//   State<CustomNavigationBar> createState() => _CustomNavigationBarState();
// }
//
// class _CustomNavigationBarState extends State<CustomNavigationBar> {
//   @override
//   Widget build(BuildContext context) {
//     var width = MediaQuery.sizeOf(context).width;
//     var height = MediaQuery.sizeOf(context).height;
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
//       child: ClipRRect(
//         borderRadius: BorderRadius.circular(width * .3),
//         child: Container(
//           width: width,
//           height: height * .1,
//           decoration: const BoxDecoration(
//             color:Color(0xff6659DC)
//           ),
//           child: BottomNavigationBar(
//             // selectedItemColor: Colors.red,
//             backgroundColor: const Color(0xffA2B4BB),
//             type: BottomNavigationBarType.fixed,
//             elevation: 0,
//             items: [
//               _buildBottomNavigationBarItem(
//                 item[0]
//               ),
//               _buildBottomNavigationBarItem(
//                   item[1],
//               ),
//               _buildBottomNavigationBarItem(
//                   item[2],
//                   ),
//               _buildBottomNavigationBarItem(
//                   item[3],
//                   ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// CustomBottomNavigationBarItem _buildBottomNavigationBarItem(
//     IconData icon) {
//   return CustomBottomNavigationBarItem(
//     icon: InkWell(
//       child: FittedBox(
//         fit: BoxFit.cover,
//         child: Icon(
//           icon,
//           color: Colors.white,size: 20,
//         ),
//       ),
//     ),
//   );
// }
//
// List<IconData> item = [
//   Icons.home_rounded,
//   Icons.calendar_today_rounded,
//   Icons.chat_rounded,
//   Icons.account_circle_rounded,
// ];
