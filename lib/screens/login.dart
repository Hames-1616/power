import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:power/screens/Register.dart';
import 'package:power/screens/page1.dart';
import 'package:power/screens/register2.dart';
import 'package:power/utils/Dimensions.dart';
import 'package:power/utils/buttonl.dart';
import 'package:power/utils/colors.dart';

import '../utils/Customtext.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  int s = 0;
  int p = 0;
  bool empty1 = false;
  bool empty2 = false;
  bool rememberMe = false;
  Color k = Colors.grey;
  String username = '';
  String password = '';
  TextEditingController pass = new TextEditingController();
  TextEditingController user = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    if (empty1 == true && empty2 == true) {
      k = one;
    } else
      k = Colors.grey;
    return Scaffold(
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
        alignment: Alignment.center,
        child: Text(
          'W E L C O M E',
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
          'Login to your account',
          style: TextStyle(
            fontFamily: "Poppins",
            color: three,
            fontSize: 15.0,
          ),
        ),
      ),
      SizedBox(height: MediaQuery.of(context).size.height / hei(context, 40)),
      Container(
        alignment: Alignment.center,
        child: CustomTextField(
          con: user,
          hintText: 'Email',
          icon: Icons.person,
          keyboardType: TextInputType.name,
          onChanged: (value) {
            username = value != '' ? value : '';
            setState(() {
              //if (user.text != null)
              //empty1 = true;
              s = value.length;

              if (s >= 10)
                empty1 = true;
              else
                empty1 = false;
            });
          },
        ),
      ),
      Container(
        alignment: Alignment.center,
        child: CustomTextField(
          con: pass,
          a: 8,
          hintText: 'Password',
          icon: Icons.lock,
          obscureText: true,
          keyboardType: TextInputType.visiblePassword,
          onChanged: (value) {
            password = value != '' ? value : '';
            setState(() {
              p = value.length;
              //if (pass.text != null)
              //empty2 = true;
              if (p >= 6)
                empty2 = true;
              else
                empty2 = false;
            });
          },
        ),
      ),
      Container(
          alignment: Alignment.center,
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          checkColor: Colors.white,
                          fillColor: MaterialStateProperty.all(one),
                          value: rememberMe,
                          onChanged: (value) {
                            setState(() {
                              rememberMe = value!;
                            });
                          },
                        ),
                        Text(
                          'Remember Me',
                          style: TextStyle(
                            fontFamily: "Poppins",
                            color: Colors.black38,
                            fontSize: 14.0,
                          ),
                        )
                      ],
                    ),
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          //foregroundColor: MaterialStateProperty.all(three),
                          ),
                      child: Text(
                        'Forgot Password ?',
                        style: TextStyle(fontFamily: "Poppins", color: one),
                      ),
                    )
                  ]))),
      SizedBox(
        height: MediaQuery.of(context).size.height / hei(context, 10),
      ),
      Padding(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width / wid(context, 20.0),
            right: MediaQuery.of(context).size.width / wid(context, 20.0),
            bottom: MediaQuery.of(context).size.height / hei(context, 20.0),
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            button1(
              pop: k,
              label: 'Log In',
              onPressed: () {
                Get.to(Page1());
                //if (username.toLowerCase() == 'admin' &&
                // password == 'idk123!') {
                //Navigator.pushNamed(context, MainScreen.id);
                // }
              },
            ),
            Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height /
                        hei(context, 10.0)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Don\'t have an account ?',
                      style: TextStyle(fontFamily: "Poppins", fontSize: 12.0),
                    ),
                    TextButton(
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all(one),
                      ),
                      onPressed: () {
                        Get.to(Register());
                      },
                      child: Text(
                        'Sign up ',
                        style: TextStyle(fontFamily: "Poppins", fontSize: 12.0),
                      ),
                    )
                  ],
                ))
          ]))
    ]));
  }
}
