import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/color_res.dart';

class TopBar extends StatelessWidget {
  String screen, title;

  TopBar({Key? key, required this.screen, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, bottom: 15, top: 15),
      color: ColorRes.light_blue5,
      child: Row(
        children: [
          Visibility(
            visible: screen == "Home" ? false : true,
            child: InkWell(
              onTap: () {
                Get.back();
              },
              borderRadius: BorderRadius.circular(30),
              child: Container(
                height: 37,
                width: 37,
                padding: const EdgeInsets.only(right: 3),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: ColorRes.white)
                ),
                child: Center(
                  child: Icon(Icons.arrow_back_ios_rounded,color: ColorRes.white,)
                ),
              ),
            ),
          ),
          Expanded(
              child: Center(
            child: Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
          ))
        ],
      ),
    );
  }
}
