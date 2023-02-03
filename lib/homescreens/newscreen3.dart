import 'package:deliveryman_app/homescreens/home.dart';
import 'package:deliveryman_app/homescreens/permission.dart';
import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';
import 'controller2.dart';
import 'currenttrips.dart';

class New3 extends StatefulWidget {
  const New3({super.key});

  @override
  State<New3> createState() => _New3State();
}

class _New3State extends State<New3> {
  @override
  Widget build(BuildContext context)  {
    Future<void> _showMyDialog() async {
      return showDialog<void>(
          context: context,
          builder: (context) {
            return Controller2();
          });
    }

    return Scaffold(
      body: ListView.builder(
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.white,
                    height: MediaQuery.of(context).size.height / 3.23,
                    width: double.infinity,
                    child: Container(
                      decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 31, 69, 101),
                              offset:   Offset(
                                5.0,
                                5.0,
                              ),
                              blurRadius: 7.0,
                            ), //BoxShadow
                            BoxShadow(
                              color: Color.fromARGB(255, 255, 255, 255),
                              offset:   Offset(0.0, 0.0),
                              blurRadius: 0.0,
                              spreadRadius: 0.0,
                            ), //BoxShadow
                          ],
                          gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomCenter,
                              stops: [
                                0.6,
                                0.9,
                              ],
                              colors: [
                                Color.fromARGB(120, 130, 208, 248),
                                Color.fromARGB(230, 152, 204, 247)
                              ]),
                          color: Colors.amberAccent,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30.0),
                              bottomRight: Radius.circular(1.0),
                              // topLeft: Radius.circular(30.0),
                              bottomLeft: Radius.circular(1.0))),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Permission()));
                                  },
                                  icon: const Icon(
                                    Icons.arrow_forward,
                                  ),
                                ),
                                const Padding(
                                  padding: const EdgeInsets.only(right: 34),
                                  child: Text(
                                    "One-way trip",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ),
                                ElevatedButton(
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          builder: (context) {
                                            return AlertDialog(
                                                shape:  RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                25))),
                                                title: const Text(
                                                  "One -way Trip",
                                                  style:
                                                      TextStyle(fontSize: 17),
                                                ),
                                                actions: [
                                                  Container(
                                                    height: 60,
                                                    decoration: BoxDecoration(
                                                      color: Color.fromARGB(
                                                          255, 230, 230, 230),
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.grey
                                                              .withOpacity(0.1),
                                                          spreadRadius: 1,
                                                          blurRadius: 2,
                                                          offset: const Offset(
                                                              0.2,
                                                              3), // changes position of shadow
                                                        ),
                                                      ],
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              20.0),
                                                      child: Column(children: [
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: const [
                                                            Text(
                                                              "Distance",
                                                              style: TextStyle(
                                                                  fontSize: 14,
                                                                  // color: firstColor,
                                                                  fontFamily:
                                                                      'Inter-SemiBold'),
                                                            ),
                                                          ],
                                                        ),
                                                      ]),
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 30,
                                                    width: 300,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Color.fromARGB(
                                                                  255,
                                                                  157,
                                                                  157,
                                                                  157)
                                                              .withOpacity(0.1),
                                                          spreadRadius: 1,
                                                          blurRadius: 2,
                                                          offset: const Offset(
                                                              0.2,
                                                              3), // changes position of shadow
                                                        ),
                                                      ],
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              right: 20),
                                                      child: Text("8 kms"),
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 60,
                                                    decoration: BoxDecoration(
                                                      color: Color.fromARGB(
                                                          255, 230, 230, 230),
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.grey
                                                              .withOpacity(0.1),
                                                          spreadRadius: 1,
                                                          blurRadius: 2,
                                                          offset: const Offset(
                                                              0.2,
                                                              3), // changes position of shadow
                                                        ),
                                                      ],
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              20.0),
                                                      child: Column(children: [
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Text(
                                                              "Location",
                                                              style: TextStyle(
                                                                  fontSize: 14,
                                                                  // color: firstColor,
                                                                  fontFamily:
                                                                      'Inter-SemiBold'),
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
                                                          color: Colors.grey
                                                              .withOpacity(0.1),
                                                          spreadRadius: 1,
                                                          blurRadius: 2,
                                                          offset: const Offset(
                                                              0.2,
                                                              3), // changes position of shadow
                                                        ),
                                                      ],
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              20.0),
                                                      child: Column(children: [
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Text(
                                                              "Nagercoil",
                                                              style: TextStyle(
                                                                  fontSize: 14,
                                                                  // color: firstColor,
                                                                  fontFamily:
                                                                      'Inter-SemiBold'),
                                                            ),
                                                            Text(
                                                              "Kanyakumari",
                                                              style: TextStyle(
                                                                fontSize: 12,
                                                                fontFamily:
                                                                    'Inter-SemiBold',
                                                                // color: firstColor,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        const SizedBox(
                                                          height: 5,
                                                        ),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: const [
                                                            Text(
                                                              "Mugesh",
                                                              style: TextStyle(
                                                                fontSize: 14,
                                                                fontFamily:
                                                                    'Inter-Bold',
                                                                // color: firstColor,
                                                              ),
                                                            ),
                                                            Text(
                                                              "Mugredh",
                                                              style: TextStyle(
                                                                fontSize: 14,
                                                                fontFamily:
                                                                    'Inter-Bold',
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
                                                      color: Color.fromARGB(
                                                          255, 230, 230, 230),
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.grey
                                                              .withOpacity(0.1),
                                                          spreadRadius: 1,
                                                          blurRadius: 2,
                                                          offset: const Offset(
                                                              0.2,
                                                              3), // changes position of shadow
                                                        ),
                                                      ],
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              20.0),
                                                      child: Column(children: [
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children:const [
                                                            Text(
                                                              "Location",
                                                              style: TextStyle(
                                                                  fontSize: 14,
                                                                  // color: firstColor,
                                                                  fontFamily:
                                                                      'Inter-SemiBold'),
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
                                                          color: Colors.grey
                                                              .withOpacity(0.1),
                                                          spreadRadius: 1,
                                                          blurRadius: 2,
                                                          offset: const Offset(
                                                              0.2,
                                                              3), // changes position of shadow
                                                        ),
                                                      ],
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              20.0),
                                                      child: Column(children: [
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: const [
                                                            Text(
                                                              "Name",
                                                              style: TextStyle(
                                                                  fontSize: 14,
                                                                  // color: firstColor,
                                                                  fontFamily:
                                                                      'Inter-SemiBold'),
                                                            ),
                                                            Text(
                                                              "Kanyakumari",
                                                              style: TextStyle(
                                                                fontSize: 12,
                                                                fontFamily:
                                                                    'Inter-SemiBold',
                                                                // color: firstColor,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        const SizedBox(
                                                          height: 5,
                                                        ),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: const [
                                                            Text(
                                                              "Phone",
                                                              style: TextStyle(
                                                                fontSize: 14,
                                                                fontFamily:
                                                                    'Inter-Bold',
                                                                // color: firstColor,
                                                              ),
                                                            ),
                                                            Text(
                                                              "+78234626426",
                                                              style: TextStyle(
                                                                fontSize: 14,
                                                                fontFamily:
                                                                    'Inter-Bold',
                                                                // color: firstColor,
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      ]),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 56),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        ElevatedButton.icon(
                                                          onPressed: () {
                                                            print(
                                                                "You pressed Icon Elevated Button");
                                                          },
                                                          icon: Icon(Icons
                                                              .phone), //icon data for elevated button
                                                          label: Text(
                                                              "Call Customer"), //label text
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                            backgroundColor:
                                                                Color.fromARGB(
                                                                    255,
                                                                    31,
                                                                    69,
                                                                    101), //elevated btton background color
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 9,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      ElevatedButton(
                                                          style: ElevatedButton.styleFrom(
                                                              backgroundColor:
                                                                  Color
                                                                      .fromARGB(
                                                                          255,
                                                                          31,
                                                                          69,
                                                                          101),
                                                              padding: const EdgeInsets
                                                                      .symmetric(
                                                                  horizontal:
                                                                      26,
                                                                  vertical: 10),
                                                              textStyle: const TextStyle(
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold)),
                                                          onPressed: () {
                                                            Navigator.pop(
                                                                context);
                                                          },
                                                          child: const Text(
                                                            "Reject",
                                                            style: TextStyle(
                                                                // color: firstColor,
                                                                fontFamily:
                                                                    'Inter-SemiBold'),
                                                          )),
                                                      ElevatedButton(
                                                          style: ElevatedButton.styleFrom(
                                                              backgroundColor:
                                                                  Color
                                                                      .fromARGB(
                                                                          255,
                                                                          31,
                                                                          69,
                                                                          101),
                                                              padding: const EdgeInsets
                                                                      .symmetric(
                                                                  horizontal:
                                                                      26,
                                                                  vertical: 10),
                                                              textStyle: const TextStyle(
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold)),
                                                          onPressed: () {
                                                            _showMyDialog();
                                                          },
                                                          child: const Text(
                                                            "Accept",
                                                            style: TextStyle(
                                                                // color: firstColor,
                                                                fontFamily:
                                                                    'Inter-SemiBold'),
                                                          )),
                                                    ],
                                                  ),
                                                ]);
                                          });
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(255, 31, 69, 101),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 7),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                    child: Row(
                                      children: const [
                                        Text("Accept"),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Icon(Icons.arrow_forward)
                                      ],
                                    ))
                              ],
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Text(
                                  'Food',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Text(
                                  "Cash on pickup",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Text(
                                  "Distance",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 255, 13, 13)),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Text(
                                  "8 Kms",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 255, 28, 28)),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text(
                                      "Nagercoil",
                                      style: TextStyle(
                                          fontSize: 14,
                                          // color: firstColor,
                                          fontFamily: 'Inter-SemiBold'),
                                    ),
                                    Icon(
                                      Icons.location_on,
                                      size: 20,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Text(
                                        ".........",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontFamily: 'Inter-SemiBold',
                                          // color: firstColor,
                                        ),
                                      ),
                                    ),
                                    Icon(
                                      Icons.location_on_outlined,
                                      size: 20,
                                    ),
                                    Text(
                                      "Kanyakumari",
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Mugesh",
                                      style: TextStyle(
                                        fontSize: 14, fontFamily: 'Inter-Bold',
                                        // color: firstColor,
                                      ),
                                    ),
                                    Text(
                                      "Mugredh",
                                      style: TextStyle(
                                        fontSize: 14, fontFamily: 'Inter-Bold',
                                        // color: firstColor,
                                      ),
                                    )
                                  ],
                                ),
                              ]),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
