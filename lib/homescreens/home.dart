import 'package:deliveryman_app/homescreens/newscreen3.dart';
import 'package:deliveryman_app/profile_screen/previous_orders.dart';
import 'package:deliveryman_app/profile_screen/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'newscreen.dart';
import 'newscreen2.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  DateTime timeBackPressed = DateTime.now();
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);
    return WillPopScope(
      onWillPop: () async {
        final difference = DateTime.now().difference(timeBackPressed);
        timeBackPressed = DateTime.now();
        if (difference >= Duration(seconds: 2)) {
          final String msg = 'Press the back button to exit';
          Fluttertoast.showToast(
            msg: msg,
          );
          return false;
        } else {
          Fluttertoast.cancel();
          SystemNavigator.pop();
          return true;
        }
      },
      // ignore: sort_child_properties_last
      child: Scaffold(
          appBar: AppBar(
            flexibleSpace: Container(decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
              Color.fromARGB(120, 130, 208, 248),
                Color.fromARGB(230, 152, 204, 247)
            ])          
         ),         ),
            title: const Text(
              "Orders",
              style: TextStyle(color: Colors.black, fontSize: 23),
            ),
            leading: const BackButton(color: Colors.black),
               backgroundColor:  Color.fromARGB(255, 124, 179, 225),
                                                           //elevated btton background color
                                                      
            elevation: 0,
            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => Profile()));
                  },
                  icon: const Icon(
                    MdiIcons.history,
                    //color: firstColor,
                    color: Colors.black,
                  )),
              const SizedBox(
                width: 10,
              )
            ],
          ),
          body: SafeArea(
              child: SingleChildScrollView(
                  child: Padding(
            padding: const EdgeInsets.all(15.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: TabBar(
                    controller: tabController,
                    // labelColor: firstColor,
                    indicatorColor: Color.fromARGB(255, 0, 0, 1),
                    isScrollable: false,
                    labelStyle: const TextStyle(
                        fontFamily: 'Inter-Medium', fontSize: 14),
                    unselectedLabelColor: Colors.grey,
                    tabs: const [
                      Tab(
                        text: "In progress trips",
                      ),
                      Tab(
                        text: "accepted trips",
                      ),
                      Tab(
                        text: "New  trips",
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: double.maxFinite,
                  height: MediaQuery.of(context).size.height / 1,
                  child: TabBarView(controller: tabController, children: const [
                    New(),
                    New2(),
                    New3(),
                  ]),
                )
              ]),
            ]),
          )))),
    );
  }
}
