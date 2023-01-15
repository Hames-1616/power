import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:power/utils/Customtext.dart';
import 'package:power/utils/Dimensions.dart';
import 'package:power/utils/buttonl.dart';
import 'package:power/utils/colors.dart';

class Register2 extends StatefulWidget {
  const Register2({super.key});

  @override
  State<Register2> createState() => _Register2State();
}

class _Register2State extends State<Register2> {
  bool empty1 = false;
  bool empty2 = false;
  bool empty3 = false;
  Color k = Colors.grey;
  TextEditingController email = new TextEditingController();
  TextEditingController pass = new TextEditingController();
  TextEditingController passc = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    if (empty1 == true && empty2 == true && empty3 == true) {
      k = one;
    } else
      k = Colors.grey;
    return Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
          Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / wid(context, 10),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / hei(context, 20)),
                child: Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height /
                          hei(context, 30)),
                  decoration: BoxDecoration(
                    color: l1,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      Get.back();
                    },
                  ),
                ),
              ),
            ],
          ),
          Column(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                // alignment: Alignment.bottomCenter,
                child: Text(
                  'R E G I S T E R',
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 32.0,
                    fontWeight: FontWeight.w600,
                    color: one,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'Register a new account',
                  style: TextStyle(
                    fontFamily: "Poppins",
                    color: three,
                    fontSize: 15.0,
                  ),
                ),
              ),
              SizedBox(
                  height:
                      MediaQuery.of(context).size.height / hei(context, 40)),
              Container(
                child: CustomTextField(
                  hintText: "Email",
                  icon: Icons.email,
                  obscureText: false,
                  con: email,
                  keyboardType: TextInputType.name,
                  onChanged: (value) {
                    setState(() {
                      if (passc.text != null)
                        empty1 = true;
                      else
                        empty1 = false;
                    });
                  },
                ),
              ),
              Container(
                child: CustomTextField(
                  hintText: "Password",
                  icon: Icons.lock,
                  obscureText: true,
                  con: pass,
                  keyboardType: TextInputType.name,
                  onChanged: (value) {
                    setState(() {
                      if (passc.text != null)
                        empty2 = true;
                      else
                        empty2 = false;
                    });
                  },
                ),
              ),
              Container(
                child: CustomTextField(
                  hintText: "Confirm Password",
                  icon: Icons.lock,
                  obscureText: true,
                  con: passc,
                  keyboardType: TextInputType.name,
                  onChanged: (value) {
                    setState(() {
                      if (passc.text != null)
                        empty3 = true;
                      else
                        empty3 = false;
                    });
                  },
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / hei(context, 10),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                  bottom: 20.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    button1(
                      pop: k,
                      label: 'Register',
                      onPressed: () {
                        //if (username.toLowerCase() == 'admin' &&
                        // password == 'idk123!') {
                        //Navigator.pushNamed(context, MainScreen.id);
                        // }
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / hei(context, 250),
              )
            ],
          ),
        ]));
  }
}
