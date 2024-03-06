import 'package:booking_app/utils/constant/app_style.dart';
import 'package:flutter/material.dart';
class CustomListViewItems extends StatelessWidget {
  final Color color;
  final IconData iconData;
  final String text;
  const CustomListViewItems({
    super.key, required this.iconData, required this.text, required this.color,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    var height = MediaQuery.sizeOf(context).height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        width: width,
        height: height*.132,
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (_,index){
            return Padding(
              padding: const EdgeInsets.only(right: 18),
              child: Container(
                width: width*.285,
                height: height*.45,
                decoration:  BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(12)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(iconData,size: 40,),
                    Text(text,style: AppStyles.styleMedium14(context),)
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}