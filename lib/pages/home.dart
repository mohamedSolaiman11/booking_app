// import 'package:booking_app/pages/loginAndRegistration/login.dart';
// import 'package:booking_app/utils/constant/app_style.dart';
// import 'package:booking_app/utils/constant/const_text.dart';
// import 'package:flutter/material.dart';
// import '../widgets/build_search_for_home_view.dart';
// import '../widgets/custom_list_view_items.dart';
//
// class HomePage extends StatefulWidget {
//   int selectedIndex = 0;
//   HomePage({super.key});
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     var width = MediaQuery.sizeOf(context).width;
//     var height = MediaQuery.sizeOf(context).height;
//     return Scaffold(
//       backgroundColor: const Color(0xffF1F4F8),
//       body: SafeArea(
//         child: Column(
//           children: [
//             Flexible(
//               child: Stack(
//                 children: [
//                   Stack(
//                     children: [
//                       SingleChildScrollView(
//                         child: Column(
//                           children: [
//                             Container(
//                               width: width,
//                               height: height * .28,
//                               decoration: const BoxDecoration(
//                                   image: DecorationImage(
//                                       fit: BoxFit.cover,
//                                       image: NetworkImage(
//                                           ConstText.homeViewHeaderUrl))),
//                               child: const Stack(
//                                 children: [
//                                   Align(
//                                     alignment: AlignmentDirectional(0, 1),
//                                     child: CustomSearchView(),
//                                   )
//                                 ],
//                               ),
//                             ),
//                             const Divider(
//                               thickness: 3,
//                               color: Colors.white,
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.symmetric(
//                                   horizontal: 10, vertical: 10),
//                               child: Align(
//                                   alignment: Alignment.centerLeft,
//                                   child: Text(
//                                     "Mina favoriter",
//                                     style: AppStyles.styleRegular14(context),
//                                   )),
//                             ),
//                             const CustomListViewItems(
//                               iconData: Icons.content_cut_rounded,
//                               text: 'Barberoom',
//                               color: Color(0xffD5D3F7),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.symmetric(
//                                   horizontal: 10, vertical: 10),
//                               child: Align(
//                                   alignment: Alignment.centerLeft,
//                                   child: Text(
//                                     "Populära tjänster",
//                                     style: AppStyles.styleRegular14(context),
//                                   )),
//                             ),
//                             const CustomListViewItems(
//                               iconData: Icons.content_cut_rounded,
//                               text: 'Barberoom',
//                               color: Color(0xffBAEAE7),
//                             ),
//                             const SizedBox(
//                               height: 18,
//                             ),
//                             const CustomListViewItems(
//                               iconData: Icons.content_cut_rounded,
//                               text: 'Barberoom',
//                               color: Color(0xffD5D3F7),
//                             ),
//                             const SizedBox(
//                               height: 18,
//                             ),
//                             const CustomListViewItems(
//                               iconData: Icons.content_cut_rounded,
//                               text: 'Barberoom',
//                               color: Color(0xffD5D3F7),
//                             ),
//                           ],
//                         ),
//                       )
//                     ],
//                   ),
//                   Positioned(
//                     left: 20,
//                     top: 15,
//                     child: SizedBox(
//                       width: width * .26,
//                       height: height * .06,
//                       child: Image.asset("assets/images/book_me2.png"),
//                     ),
//                   ),
//                   Positioned(
//                     bottom: 0,
//                     right: 8,
//                     left: 8,
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(
//                           horizontal: 0, vertical: 14),
//                       child: ClipRRect(
//                         borderRadius: BorderRadius.circular(width *
//                             .3), // Adjust the value as per your preference
//                         child: SizedBox(
//                           width: width,
//                           height: height * .1,
//                           child: BottomNavigationBar(
//                             backgroundColor: const Color(0xffA2B4BB),
//                             type: BottomNavigationBarType.fixed,
//                             currentIndex: widget.selectedIndex,
//                             elevation: 0,
//                             items: [
//                               buildCustomBottomNavigationBarItem(width,
//                                   icon: item[0], index: 0, onTap: () {
//                                 setState(() {
//                                   widget.selectedIndex = 0;
//                                 });
//                                 print("home");
//                               }),
//                               buildCustomBottomNavigationBarItem(width,
//                                   icon: item[1], index: 1, onTap: () {
//                                 setState(() {
//                                   widget.selectedIndex = 1;
//                                 });
//                                 print(widget.selectedIndex);
//                                 print("cale");
//                               }),
//                               buildCustomBottomNavigationBarItem(width,
//                                   icon: item[2], index: 2, onTap: () {
//                                 Navigator.pushAndRemoveUntil(context,
//                                     MaterialPageRoute(builder: (_) {
//                                   return const Login();
//                                 }), (route) => false);
//                                 setState(() {
//                                   widget.selectedIndex = 2;
//                                 });
//                                 print(widget.selectedIndex);
//                               }),
//                               buildCustomBottomNavigationBarItem(width,
//                                   icon: item[3], index: 3, onTap: () {
//                                 widget.selectedIndex = 3;
//                                 setState(() {});
//                                 print(widget.selectedIndex);
//                               }),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   // CustomBottomNavigationBarItem buildCustomBottomNavigationBarItem(double width,
//   //     {required IconData icon, required Color color,required VoidCallback onTap}) {
//   //   return CustomBottomNavigationBarItem(
//   //     backgroundColor: Colors.blue,
//   //     icon: InkWell(
//   //       onTap: onTap,
//   //       child: Container(
//   //           width: width * .14,
//   //           height: width * .14,
//   //           decoration: BoxDecoration(
//   //               color: color, borderRadius: BorderRadius.circular(30)),
//   //           child: Icon(
//   //             icon,
//   //             size: 43,
//   //             color: Colors.white,
//   //           )),
//   //     ),
//   //   );
//   // }
//
//   CustomBottomNavigationBarItem buildCustomBottomNavigationBarItem(double width,
//       {required IconData icon,
//       required int index,
//       required VoidCallback onTap}) {
//     return CustomBottomNavigationBarItem(
//       backgroundColor: const Color(0xff6659DC),
//       icon: InkWell(
//         onTap: onTap,
//         child: Container(
//             width: width * .135,
//             height: width * .135,
//             decoration: BoxDecoration(
//                 color: index == widget.selectedIndex
//                     ? const Color(0xff6659DC)
//                     : Colors
//                         .transparent, // Change background color conditionally
//                 borderRadius: BorderRadius.circular(30)),
//             child: Icon(
//               icon,
//               size: index == widget.selectedIndex ? 36 : 30,
//               color: Colors.white,
//             )),
//       ),
//     );
//   }
// }
//
// List<IconData> item = [
//   Icons.home_rounded,
//   Icons.calendar_today_rounded,
//   Icons.chat_rounded,
//   Icons.account_circle_rounded,
// ];

import 'package:booking_app/pages/profile/profile.dart';
import 'package:booking_app/pages/userCalender/calender.dart';
import 'package:booking_app/utils/constant/app_style.dart';
import 'package:booking_app/utils/constant/const_text.dart';
import 'package:flutter/material.dart';

import '../widgets/build_search_for_home_view.dart';
import '../widgets/custom_list_view_items.dart';
import '../widgets/custom_navigation_bar.dart';
import 'chat/chat.dart';
import 'home/home.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xffF1F4F8),
      body:selectedIndex==0? const HomeLand():
      selectedIndex==1?const Calender():selectedIndex==2?
      const Chat():const Profile(),
      bottomNavigationBar:  Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        width: width*.8,
        height: height*.11,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(width * .4),
          child: BottomNavigationBar(
            backgroundColor: const Color(0xffA2B4BB),
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            items: [
              _buildBottomNavigationBarItem(
                  item[0]
              ),
              _buildBottomNavigationBarItem(
                item[1],
              ),
              _buildBottomNavigationBarItem(
                item[2],
              ),
              _buildBottomNavigationBarItem(
                item[3],
              ),
            ],
          ),
        ),
      )
    );
  }

















  CustomBottomNavigationBarItem _buildBottomNavigationBarItem(
      IconData icon) {
    return CustomBottomNavigationBarItem(
      icon: InkWell(
        child: Icon(
          icon,
          color: Colors.white,size: 40,
        ),
      ),
    );
  }

  List<IconData> item = [
    Icons.home_rounded,
    Icons.calendar_today_rounded,
    Icons.chat_rounded,
    Icons.account_circle_rounded,
  ];











}

