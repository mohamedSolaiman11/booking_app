import 'package:flutter/material.dart';

import '../../utils/constant/app_style.dart';
import '../../utils/constant/const_text.dart';
import '../../widgets/build_search_for_home_view.dart';
import '../../widgets/custom_list_view_items.dart';
class HomeLand extends StatelessWidget {
  const HomeLand({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      _buildHeader(width, height),
                      const Divider(
                        thickness: 3,
                        color: Colors.white,
                      ),
                      _buildSectionTitle("Mina favoriter",context),
                      _buildFavoriteList(),
                      _buildSectionTitle("Populära tjänster",context),
                      _buildPopularServices(),
                      const SizedBox(height: 18),
                      _buildPopularServices(),
                      const SizedBox(height: 18),
                      _buildPopularServices(),
                    ],
                  ),
                ),
                buildPositionedImageBookMe(width, height),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
Widget _buildHeader(double width, double height) {
  return Container(
    width: width,
    height: height * .28,
    decoration: const BoxDecoration(
      image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage(ConstText.homeViewHeaderUrl),
      ),
    ),
    child: const Stack(
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: CustomSearchView(),
        ),
      ],
    ),
  );
}

Widget _buildSectionTitle(String title,BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    child: Align(
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: AppStyles.styleRegular14(context),
      ),
    ),
  );
}

Widget _buildFavoriteList() {
  return const CustomListViewItems(
    iconData: Icons.content_cut_rounded,
    text: 'Barberoom',
    color: Color(0xffD5D3F7),
  );
}

Widget _buildPopularServices() {
  return const CustomListViewItems(
    iconData: Icons.content_cut_rounded,
    text: 'Barberoom',
    color: Color(0xffBAEAE7),
  );
}


Positioned buildPositionedImageBookMe(double width, double height) {
  return Positioned(
    left: 20,
    top: 15,
    child: SizedBox(
      width: width * .26,
      height: height * .06,
      child: Image.asset("assets/images/book_me2.png"),
    ),
  );
}
