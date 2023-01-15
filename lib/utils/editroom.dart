import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:power/screens/page1.dart';
import 'package:power/utils/Dimensions.dart';
import 'package:power/utils/buttonl.dart';
import 'package:power/utils/colors.dart';
import 'package:power/utils/cutomtext3.dart';
import 'package:power/utils/indd.dart';
import 'package:power/utils/list.dart';

class rena extends StatefulWidget {
  final int s;
  final String message;
  //final int s;
  const rena(
      {required this.s,
      required this.message, //required this.s,
      super.key});

  @override
  State<rena> createState() => _renaState();
}

class _renaState extends State<rena> {
  late FocusNode node;
  TextEditingController adde = new TextEditingController();

  @override
  void initState() {
    super.initState();
    node = FocusNode();
    String sq = widget.message;
    adde.text = sq;
  }

  @override
  void dispose() {
    node.dispose();
    super.dispose();
  }

  bool empty = false;
  Color k = Colors.grey;
  String q = "";
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
            'E D I T  R O O M',
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
          child: CustomTextField3(
            ini: widget.message,
            n: node,
            con: adde,
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
                        int z = edi(widget.s);
                        con.removeAt(z);
                        indd(q, context, z);
                        //ins(q, context, z);
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
                    pop: one,
                    label: 'Delete Room',
                    onPressed: () {
                      int z = indi(widget.s);
                      con.removeAt(z);
                      index--;

                      Get.to(Page1());
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


