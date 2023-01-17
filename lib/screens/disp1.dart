import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:power/screens/page1-2.dart';
import 'package:power/utils/Dimensions.dart';
import 'package:power/utils/colors.dart';
import 'package:power/utils/list.dart';

class disp1 extends StatefulWidget {
  const disp1({super.key});

  @override
  State<disp1> createState() => _disp1State();
}

class _disp1State extends State<disp1> {
    Icon customIcon = const Icon(Icons.search);
  Widget customSearchBar = Text(
    "D E V I C E S",
    style: TextStyle(color: two, fontSize: 17),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 20,
        backgroundColor: l1,
        onPressed: () {
          Get.to(editi());
        },
        child: Icon(
          Icons.add,
          color: one,
        ),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          Container(
            margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height / hei(context, 6),
                bottom: MediaQuery.of(context).size.height / hei(context, 5),
                right: MediaQuery.of(context).size.width / wid(context, 30),
                left: MediaQuery.of(context).size.width / wid(context, 5)),
            // height: 0,
            width: MediaQuery.of(context).size.width / wid(context, 50),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100), color: l1),
            child: IconButton(
                color: one,
                onPressed: () {
                  setState(() {
                    if (customIcon.icon == Icons.search) {
                      customIcon = const Icon(Icons.cancel);
                      customSearchBar = Container(
                        margin: EdgeInsets.only(
                            bottom: MediaQuery.of(context).size.width /
                                wid(context, 15)),
                        child: ListTile(
                          title: TextField(
                            autofocus: true,
                            //focusNode: node,
                            decoration: InputDecoration(
                              hintText: 'Search the Device',
                              hintStyle: TextStyle(
                                color: one,
                                fontSize: 18,
                                fontStyle: FontStyle.italic,
                              ),
                              border: InputBorder.none,
                            ),
                            style: TextStyle(
                              color: one,
                            ),
                          ),
                        ),
                      );
                    } else {
                      customIcon = Icon(Icons.search);
                      customSearchBar = Text(
                        "D E V I C E S",
                        style: TextStyle(color: two, fontSize: 17),
                      );
                    }
                  });
                },
                icon: customIcon),
          )
        ],
        title: Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height / hei(context, 45),
            width: MediaQuery.of(context).size.width / wid(context, 400),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100), color: l1),
            child: customSearchBar),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[Column(children: con)],
        ),
      ),
    );
  }
}
