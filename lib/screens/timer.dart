import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:power/utils/Dimensions.dart';
import 'package:power/utils/buttonl.dart';
import 'package:power/utils/colors.dart';
import 'package:power/utils/cutomtext3.dart';
import 'package:flutter_material_pickers/flutter_material_pickers.dart';

class time extends StatefulWidget {
  const time({super.key});

  @override
  State<time> createState() => _timeState();
}

class _timeState extends State<time> {
  var time1 = TimeOfDay(hour: 0, minute: 0);
  var time2 = TimeOfDay(hour: 0, minute: 0);
  bool s = false;
  bool r = false;
  bool empty = false;
  Color k = Colors.grey;
  @override
  Widget build(BuildContext context) {
    String t1 = "00:00";
    String t2 = "00:00";
    if (s == true) {
      t1 = time1.format(context);
    }
      if (r == true) {
      t2 = time2.format(context);
    }
      if (s == true && r == true) {
      k = one;
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Container(
              decoration: BoxDecoration(
                color: l1,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100)),
                  color: l1,
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  )),
            )),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          alignment: Alignment.center,
          child: Text(
            'S C H E D U L E',
            style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 32.0,
              fontWeight: FontWeight.w600,
              color: one,
            ),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height / hei(context, 30)),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "ON TIME",
                style:
                    TextStyle(fontFamily: "Poppins", fontSize: 15, color: one),
              ),
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100), color: l1),
                  child: Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width /
                            wid(context, 25),
                      ),
                      Text(t1),
                      IconButton(
                          onPressed: () {
                            showMaterialTimePicker(
                              context: context,
                              selectedTime: time1,
                              onChanged: (value) {
                                setState(() {
                                  time1 = value;
                                  s = true;
                                });
                              },
                            );
                          },
                          icon: Icon(Icons.arrow_drop_down))
                    ],
                  ))
            ],
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height / hei(context, 15)),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "OFF TIME",
                style:
                    TextStyle(fontFamily: "Poppins", fontSize: 15, color: one),
              ),
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100), color: l1),
                  child: Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width /
                            wid(context, 25),
                      ),
                      Text(t2),
                      IconButton(
                          onPressed: () {
                            showMaterialTimePicker(
                              context: context,
                              selectedTime: time2,
                              onChanged: (value) {
                                setState(() {
                                  time2 = value;
                                  r = true;
                                });
                              },
                            );
                          },
                          icon: Icon(Icons.arrow_drop_down))
                    ],
                  ))
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / hei(context, 25),
        ),
        Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width / wid(context, 20.0),
              right: MediaQuery.of(context).size.width / wid(context, 20.0),
              bottom: MediaQuery.of(context).size.height / hei(context, 20.0),
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  button1(
                    pop: k,
                    label: 'Save ',
                    onPressed: () {},
                  ),
                ])),
        SizedBox(
          height: MediaQuery.of(context).size.height / hei(context, 138),
        )
      ]),
    );
  }
}
