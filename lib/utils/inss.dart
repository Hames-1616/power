import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:power/screens/timer.dart';
import 'package:power/utils/Dimensions.dart';
import 'package:power/utils/colors.dart';
import 'package:power/utils/editroom.dart';
import 'package:power/utils/list.dart';

void ins(String a, BuildContext context, int s) {
  con.add(Container(
    width: MediaQuery.of(context).size.width,
    child: InkResponse(
      onTap: () {
        Get.to(time());
      },
      onLongPress: () {
        Get.to(rena(
          message: a,
          s: s,
        ));
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / hei(context, 20),
          ),
          Container(
            //margin: EdgeInsets.only(left: 10,top: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: l1,
            ),
            width: MediaQuery.of(context).size.height / hei(context, 410),
            height: MediaQuery.of(context).size.width / wid(context, 170),
            child: Container(
              width: MediaQuery.of(context).size.height / hei(context, 410),
              height: MediaQuery.of(context).size.width / wid(context, 170),
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / hei(context, 20),
                  left: MediaQuery.of(context).size.width / wid(context, 15),
                  right: MediaQuery.of(context).size.width / wid(context, 15)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    a,
                    style: TextStyle(
                        color: one,
                        fontFamily: "Poppins",
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: l2,
                            borderRadius: BorderRadius.circular(100)),
                        // margin: EdgeInsets.only(bottom: 25),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width /
                            wid(context, 25),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: l2,
                            borderRadius: BorderRadius.circular(100)),
                        // margin: EdgeInsets.only(bottom: 25),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  ));
}
