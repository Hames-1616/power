import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:power/screens/page1.dart';
import 'package:power/utils/Customtext.dart';
import 'package:power/utils/Dimensions.dart';
import 'package:power/utils/buttonl.dart';
import 'package:power/utils/colors.dart';
import 'package:power/utils/customtext2.dart';
import 'package:power/utils/inss.dart';
import 'package:power/utils/list.dart';

class editi extends StatefulWidget {
  editi({super.key});

  @override
  State<editi> createState() => _editiState();
}

class _editiState extends State<editi> {
  late FocusNode node;

  @override
  void initState() {
    super.initState();
    node = FocusNode();
  }

  @override
  void dispose() {
    node.dispose();
    super.dispose();
  }

  String q = "";
  bool empty = false;
  Color k = Colors.grey;
  TextEditingController add = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    if (empty == true) {
      k = one;
    } else {
      k = Colors.grey;
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
            'A D D  R O O M',
            style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 32.0,
              fontWeight: FontWeight.w600,
              color: one,
            ),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height / hei(context, 40)),
        Container(
          alignment: Alignment.center,
          child: CustomTextField2(
            n: node,
            con: add,
            hintText: 'Room Name',
            icon: Icons.house,
            keyboardType: TextInputType.name,
            onChanged: (value) {
              setState(() {
                if (value.length < 1) {
                  empty = false;
                } else {
                  empty = true;
                }
                q = value;
              });
              //username = value != '' ? value : '';
            },
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / hei(context, 10),
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
                    onPressed: () {
                      if (k == Colors.grey) {
                        node.requestFocus();
                      } else {
                        del = 0;
                        int s = ++index;
                        ins(q, context, s);
                        Get.to(Page1());
                      }

                      //Get.to(Page1());
                      //if (username.toLowerCase() == 'admin' &&
                      // password == 'idk123!') {
                      //Navigator.pushNamed(context, MainScreen.id);
                      // }
                    },
                  ),
                ])),
                SizedBox(
            height: MediaQuery.of(context).size.height / hei(context, 138),
          )
      ]),
    );
  }
}
