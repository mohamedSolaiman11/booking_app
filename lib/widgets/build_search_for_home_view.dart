import 'package:booking_app/utils/constant/app_style.dart';
import 'package:booking_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomSearchView extends StatelessWidget {
  const CustomSearchView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    var width = MediaQuery.sizeOf(context).width;
    var height = MediaQuery.sizeOf(context).height;
    return Padding(
      padding: EdgeInsets.all(width * .062),
      child: Container(
        width: width,
        height: height * .08,
        child: TextFormField(
          onTap: (){
            SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.top]);
          },
          onEditingComplete: () {
            SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
          },
          decoration: InputDecoration(
            fillColor: Color(0xff4d313442),
            filled: true,
            hintText: "Sök bland företag och tjänster...",
            hintStyle: const TextStyle(color: Colors.white,fontSize: 16),
            prefixIcon: const Icon(Icons.search_rounded,color: Color(0xffa7abc4),),
            suffixIcon: SizedBox(
              width: width*.15,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Flexible(
                    child: Container(
                      width: width*.1,
                      height: width*.1,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)
                      ),
                      child: const Icon(Icons.tune_rounded),
                    ),
                  ),
                  SizedBox(width: 10,)
                ],
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(50),
            ),
            focusedBorder : OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        ),
      ),
    );
  }
}
