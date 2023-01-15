import 'package:flutter/material.dart';
import 'package:power/utils/colors.dart';

class CustomTextField2 extends StatelessWidget {
  CustomTextField2(
    {
    this.a = 20,
    required this.n,
    required this.hintText,
    required this.icon,
    this.obscureText = false,
    required this.keyboardType,
    required this.onChanged,
    required this.con,
    Key? key,
  }) : super(key: key);
  final FocusNode n;
  int a;
  final String hintText;
  final IconData icon;
  final bool obscureText;
  final TextInputType keyboardType;
  final Function(String) onChanged;
  final TextEditingController con;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 15.0),
      child: TextField(
        focusNode: n,
        maxLength: a,
        obscureText: obscureText,
        keyboardType: keyboardType,
        style: TextStyle(
          fontFamily: "Poppins",
          color: one,
          fontWeight: FontWeight.w600,
          fontSize: 15.0,
        ),
        decoration: InputDecoration(
          counterText: "",
          contentPadding: const EdgeInsets.all(18.0),
          filled: true,
          fillColor: l1,
          prefixIcon: Icon(
            icon,
            size: 24.0,
            color: one,
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            fontFamily: "Poppins",
            color: one,
            fontWeight: FontWeight.w600,
            fontSize: 15.0,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: l1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: two),
          ),
        ),
        onChanged: onChanged,
      ),
    );
  }
}
