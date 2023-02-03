import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';

import 'currenttrips.dart';
import 'home.dart';

class Controller2 extends StatefulWidget {
  const Controller2({super.key});

  @override
  State<Controller2> createState() => _Controller2State();
}

class _Controller2State extends State<Controller2> {
  @override
  Widget build(BuildContext context) {
    return  Container(
        child: AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(23),
            ),
            title: Container(
              decoration: const BoxDecoration(
                
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30.0),
                    bottomRight: Radius.circular(20.0),
                    topLeft: Radius.circular(30.0),
                    bottomLeft: Radius.circular(20.0)),
                gradient: LinearGradient(
                 begin: Alignment.topRight,
                    end: Alignment.bottomCenter,
                    stops: [
                      0.6,
                      0.9,
                    ],
                    colors: [
                      Color.fromARGB(120, 130, 230, 248),
                      Color.fromARGB(230, 152, 204, 247)
                    ]),
              ),
              height: 39,
              // color: Colors.blue,
              child: const Padding(
                padding: EdgeInsets.only(left: 50, top: 12),
                child: Text(
                  '2023-12-2:12:12:34:123132',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
            ),
            titlePadding: const EdgeInsets.all(0),
            actions: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 2,
                  offset: const Offset(0.2, 3), // changes position of shadow
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "One-Way Trip",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontFamily: 'Inter-SemiBold'),
                    ),
                    Text(
                      "8kms",
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Inter-SemiBold',
                        // color: firstColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Cash on pickup",
                          style: TextStyle(
                            fontSize: 14, color: Colors.redAccent,
                            fontFamily: 'Inter-Bold',
                            // color: firstColor,
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      "₹108",
                      style: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 14,
                        fontFamily: 'Inter-Bold',
                        // color: firstColor,
                      ),
                    ),
                  ],
                ),
              ]),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            height: 13,
          ),
          Container(
            height: 60,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 230, 230, 230),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 2,
                  offset: const Offset(0.2, 3), // changes position of shadow
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Location",
                      style: TextStyle(
                          fontSize: 14,
                          // color: firstColor,
                          fontFamily: 'Inter-SemiBold'),
                    ),
                  ],
                ),
              ]),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 2,
                  offset: const Offset(0.2, 3), // changes position of shadow
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Pickup contact",
                      style: TextStyle(
                          fontSize: 14,
                          // color: firstColor,
                          fontFamily: 'Inter-SemiBold'),
                    ),
                    Text(
                      "sealed cutomer service",
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Inter-SemiBold',
                        // color: firstColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Delivery location",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Inter-Bold',
                        // color: firstColor,
                      ),
                    ),
                    Text(
                      "+78234626426",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Inter-Bold',
                        // color: firstColor,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Delivery contact",
                      style: TextStyle(
                          fontSize: 14,
                          // color: firstColor,
                          fontFamily: 'Inter-SemiBold'),
                    ),
                    Text(
                      "sealed cutomer service",
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Inter-SemiBold',
                        // color: firstColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Pickup location",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Inter-Bold',
                        // color: firstColor,
                      ),
                    ),
                    Text(
                      "+78234626426",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Inter-Bold',
                        // color: firstColor,
                      ),
                    )
                  ],
                ),
              ]),
            ),
          ),
          Container(
            height: 60,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 230, 230, 230),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 2,
                  offset: const Offset(0.2, 3), // changes position of shadow
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Customer",
                      style: TextStyle(
                          fontSize: 14,
                          // color: firstColor,
                          fontFamily: 'Inter-SemiBold'),
                    ),
                  ],
                ),
              ]),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 2,
                  offset: const Offset(0.2, 3), // changes position of shadow
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Name",
                      style: TextStyle(
                          fontSize: 14,
                          // color: firstColor,
                          fontFamily: 'Inter-SemiBold'),
                    ),
                    Text(
                      "sealed cutomer service",
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Inter-SemiBold',
                        // color: firstColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Phone",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Inter-Bold',
                        // color: firstColor,
                      ),
                    ),
                    Text(
                      "+78234626426",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Inter-Bold',
                        // color: firstColor,
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton.icon(
                        onPressed: () {
                          print("You pressed Icon Elevated Button");
                        },
                        icon: const  Icon(
                            Icons.phone), //icon data for elevated button
                        label: const Text("Call Customer"), //label text
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 31, 69, 101),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 7),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        )),
                  ],
                ),
              ]),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    height: 50,
                    child: SliderButton(
                        action: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) => const Currenttrips()));

                          ///Do something here OnSlide
                          print("working");
                        },

                        ///Put label over here
                        label: const Text(
                          "Slide to start trip",
                          style: TextStyle(
                              color: Color(0xff4a4a4a),
                              fontWeight: FontWeight.w500,
                              fontSize: 17),
                        ),
                        icon: const Center(
                            child: Icon(
                          Icons.play_arrow_sharp,
                          color: Colors.white,
                          size: 20.0,
                          semanticLabel:
                              'Text to announce in accessibility modes',
                        )),

                        //Put BoxShadow here
                        boxShadow: const BoxShadow(
                          color: Colors.black,
                          blurRadius: 4,
                        ),

                        //Adjust effects such as shimmer and flag vibration here
                        shimmer: true,
                        vibrationFlag: true,

                        ///Change All the color and size from here.
                        width: 220,
                        radius: 47,
                        buttonColor: const Color.fromARGB(255, 31, 69, 101),
                        backgroundColor: const Color.fromARGB(255, 172, 206, 234),
                        highlightedColor: Colors.white,
                        baseColor: Colors.black),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 31, 69, 101),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 49, vertical: 7),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        //elevated btton background color
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Home()));
                      },
                      child: const Text(
                        "Cancel",
                        style: TextStyle(fontSize: 18),
                      ))
                ],
              ),
            ],
          )
        ]));
  }
}
