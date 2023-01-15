import 'package:flutter/material.dart';

class button1 extends StatefulWidget {
  final String label;
  final Function() onPressed;
  final Color pop;
 

  const button1({super.key, required this.label, required this.onPressed
  ,required this.pop,});

  @override
  State<button1> createState() => _button1State();
}

class _button1State extends State<button1> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(vertical: 12.0),
        ),
        backgroundColor: MaterialStateProperty.all(widget.pop),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        )),
      ),
      onPressed: widget.onPressed,
      child: Text(
        widget.label,
        style: TextStyle(fontFamily: "Poppins", fontSize: 16.0),
      ),
    );
  }
}
