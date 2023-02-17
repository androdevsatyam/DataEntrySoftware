import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iovuserform/screens/entry_form/entry_form.dart';
import 'package:iovuserform/widgets/top_bar.dart';

import '../utils/asset_res.dart';
import '../utils/color_res.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TopBar(screen: "Home", title: "DashBoard"),
          SingleChildScrollView(
              child:
              Column(
                children: [
                  SizedBox(height: 10),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              InkWell(
                                onTap: () {
                                  Get.to(() => EntryForm());
                                },
                                child: Container(
                                    padding: EdgeInsets.only(left: 20,right: 20,bottom: 30,top:5),
                                    decoration: BoxDecoration(
                                        color: ColorRes.blue.withOpacity(0.50),
                                        border: Border.all(
                                            color: ColorRes.light_blue5, width: 1),
                                        borderRadius: BorderRadius.circular(20)),
                                    child: Image.asset(
                                      AssetRes.form,
                                      height: 140,
                                      width: 170,
                                      color: ColorRes.white,
                                    )),
                              ),
                              Text("New User",style: TextStyle(
                                color: ColorRes.white,
                                fontSize: 20,
                              ),)
                            ],
                          ),
                          // Stack(
                          //   alignment: Alignment.bottomCenter,
                          //   children: [
                          //     InkWell(
                          //       onTap: () {},
                          //       child: Container(
                          //           padding: EdgeInsets.all(20),
                          //           decoration: BoxDecoration(
                          //               color: ColorRes.blue.withOpacity(0.50),
                          //               border: Border.all(
                          //                   color: ColorRes.light_blue5, width: 1),
                          //               borderRadius: BorderRadius.circular(20)),
                          //           child: Image.asset(
                          //             AssetRes.form,
                          //             height: 140,
                          //             width: 170,
                          //             color: ColorRes.white,
                          //           )),
                          //     ),
                          //     Text("New User")
                          //   ],
                          // ),
                          // Stack(
                          //   alignment: Alignment.bottomCenter,
                          //   children: [
                          //     InkWell(
                          //       onTap: () {},
                          //       child: Container(
                          //           padding: EdgeInsets.all(20),
                          //           decoration: BoxDecoration(
                          //               color: ColorRes.blue.withOpacity(0.50),
                          //               border: Border.all(
                          //                   color: ColorRes.light_blue5, width: 1),
                          //               borderRadius: BorderRadius.circular(20)),
                          //           child: Image.asset(
                          //             AssetRes.form,
                          //             height: 140,
                          //             width: 170,
                          //             color: ColorRes.white,
                          //           )),
                          //     ),
                          //     Text("New User")
                          //   ],
                          // ),
                        ],
                      ))
                ],
              )
          ),
        ],
      ),
    );
  }
}
