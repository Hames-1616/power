import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:get/get.dart';
import 'package:power/screens/page1-1.dart';
import 'package:power/utils/Dimensions.dart';
import 'package:power/utils/colors.dart';

class Page11 extends StatefulWidget {
  const Page11({super.key});

  @override
  State<Page11> createState() => _Page11State();
}

class _Page11State extends State<Page11> {
  String name = "Room";

  List<Container> containers = [];

  Icon customIcon = const Icon(Icons.search);
  Widget customSearchBar = Text(
    "D E V I C E S",
    style: TextStyle(color: two, fontSize: 17),
  );

  Icon up = Icon(Icons.edit);
  @override
  Widget build(BuildContext context) {
    void addcon() {}

    return Scaffold(
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
          children: <Widget>[Column(children: containers)],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 20,
        backgroundColor: l1,
        onPressed: () {
          setState(() {
            containers.add(Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height:
                        MediaQuery.of(context).size.height / hei(context, 20),
                  ),
                  Container(
                    //margin: EdgeInsets.only(left: 10,top: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: l1,
                    ),
                    width:
                        MediaQuery.of(context).size.height / hei(context, 340),
                    height:
                        MediaQuery.of(context).size.width / wid(context, 170),
                    child: Container(
                      width: MediaQuery.of(context).size.height /
                          hei(context, 340),
                      height:
                          MediaQuery.of(context).size.width / wid(context, 170),
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height /
                              hei(context, 20),
                          left: MediaQuery.of(context).size.width /
                              wid(context, 15),
                          right: MediaQuery.of(context).size.width /
                              wid(context, 15)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            name,
                            style: TextStyle(
                                color: one,
                                fontFamily: "Poppins",
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Column(
                            children: [
                              Container(
                                  decoration: BoxDecoration(
                                      color: l2,
                                      borderRadius: BorderRadius.circular(100)),
                                  // margin: EdgeInsets.only(bottom: 25),
                                  child: IconButton(
                                    color: one,
                                    icon: up,
                                    onPressed: () {
                                    
                                    },
                                  )),
                              SizedBox(
                                height: MediaQuery.of(context).size.width /
                                    wid(context, 25),
                              ),
                              Container(
                                  decoration: BoxDecoration(
                                      color: l2,
                                      borderRadius: BorderRadius.circular(100)),
                                  // margin: EdgeInsets.only(bottom: 25),
                                  child: IconButton(
                                    color: one,
                                    icon: Icon(Icons.delete),
                                    onPressed: () {
                                      setState(() {
                                        containers.remove(this);
                                      });
                                    },
                                  ))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ));
          });
        },
        child: Icon(
          Icons.add,
          color: one,
        ),
      ),
    );
  }
}
