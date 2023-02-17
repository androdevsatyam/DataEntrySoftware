import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'color_res.dart';

class DropDown extends StatelessWidget {
  final String selectValue, type;
  final Function(String value) onChange;
  final List<String> listselectValue;

  DropDown(
      {Key? key,
      required this.selectValue,
      required this.type,
      required this.onChange,
      required this.listselectValue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('$type'),
      content: SingleChildScrollView(
        child: ListBody(
          children: listselectValue
              .map((item) => ListTile(
                    onTap: () {
                      onChange(item.toLowerCase()=="clear"?'':item);
                      Navigator.pop(context, item.toLowerCase()=="clear"?'':item);
                    },
                    title: Text(item,
                        style: TextStyle(
                          color: selectValue == item
                              ? ColorRes.blue
                              : ColorRes.darkGrey6,
                        )),
                  ))
              .toList(),
        ),
      ),
      // actions: [
      //   TextButton(
      //     onPressed: _cancel,
      //     child: const Text('Cancel'),
      //   ),
      //   ElevatedButton(
      //     onPressed: _submit,
      //     child: const Text('Submit'),
      //   ),
      // ],
    );

    // return Container(
    //     height: 90,
    //     padding: const EdgeInsets.symmetric(horizontal: 20),
    //     decoration: BoxDecoration(color: ColorRes.white, boxShadow: [
    //       BoxShadow(
    //         color: ColorRes.grey2.withOpacity(0.35),
    //         offset: const Offset(0, 2),
    //         blurRadius: 3,
    //       ),
    //       BoxShadow(
    //         color: ColorRes.grey2.withOpacity(0.35),
    //         offset: const Offset(2, 0),
    //         blurRadius: 3,
    //       ),
    //     ]),
    //     child: Scrollbar(
    //       thumbVisibility: true,
    //       child: Scrollbar(
    //         thumbVisibility: true,
    //         child: SingleChildScrollView(
    //           child: Row(
    //             children: [
    //               Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 mainAxisAlignment: MainAxisAlignment.center,
    //                 children: getTiles(),
    //               ),
    //             ],
    //           ),
    //         ),
    //       ),
    //     ));
  }

  List<Widget> getTiles() {
    List<Widget> row = [];

    for (String ds in listselectValue) {
      row.add(InkWell(
        onTap: () {
          onChange(ds);
        },
        child: Container(
          height: 30,
          width: Get.width - 80,
          alignment: Alignment.centerLeft,
          child: Text(
            ds,
            style: TextStyle(
              color: selectValue == ds ? ColorRes.blue : ColorRes.darkGrey6,
            ),
          ),
        ),
      ));
    }
    return row;
  }
}
