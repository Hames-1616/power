
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:power/utils/Customtext.dart';
import 'package:power/utils/Dimensions.dart';
import 'package:power/utils/buttonl.dart';
import 'package:power/utils/colors.dart';

class disp3 extends StatefulWidget {
  const disp3({super.key});

  @override
  State<disp3> createState() => _disp3State();
}

class _disp3State extends State<disp3> {
  static const platform = MethodChannel("check");
  String ssid = "";
  String passw = "";
  Future<void> _connect() async {
    var arguments = {'ssi': 'ICMS SKILL LIMITED', 'pass': 'zaffer@123456789'};
    var conne = await platform.invokeListMethod('connect', arguments);
  }

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
          'C O N N E C T',
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
          'Connect to the device',
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
          hintText: 'SSID',
          icon: Icons.person,
          keyboardType: TextInputType.name,
          onChanged: (value) {
            //username = value != '' ? value : '';
            setState(() {
              //if (user.text != null)
              //empty1 = true;
              s = value.length;

              if (s >= 5)
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
          a: 9,
          hintText: 'Password',
          icon: Icons.lock,
          obscureText: true,
          keyboardType: TextInputType.visiblePassword,
          onChanged: (value) {
            //password = value != '' ? value : '';
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
              label: "Connect",
              onPressed: () {
                if (k == one) {
                  _connect();
                }
              },
            ),
          ])),
      //SizedBox(height: MediaQuery.of(context).size.width/wid(context, 5),),
      Padding(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width / wid(context, 20.0),
            right: MediaQuery.of(context).size.width / wid(context, 20.0),
            bottom: MediaQuery.of(context).size.height / hei(context, 20.0),
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            button1(
              pop: one,
              label: 'Open Network Manager',
              onPressed: () {
                
              },
            ),
          ]))
    ]));
  }
}
