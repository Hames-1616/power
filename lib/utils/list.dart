import 'package:flutter/cupertino.dart';

List<Container> con = [];
int index = -1;
int del = 0;
int indi(int s) {
  int x;

  if (index == -1) {
    del = 0;
  }

  if (s == 0) {
    x = s;
    del++;
  } else {
    x = s - del;
    del++;
  }
  return x;
}

int edi(int s) {
  int x;

  return s - del;
}
