 

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:slider_button/slider_button.dart';
import 'home.dart';
import 'map_screen/map.dart';

class Currenttrips extends StatefulWidget {
  const Currenttrips({super.key});

  @override
  State<Currenttrips> createState() => _CurrenttripsState();
}

class _CurrenttripsState extends State<Currenttrips> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Current Trips",
            style: TextStyle(color: Colors.black, fontSize: 23),
          ),
          leading: BackButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Home()));
              },
              color: Colors.black),
          backgroundColor: Color.fromARGB(255, 124, 179, 225),
          elevation: 0,
        ),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 230, 230, 230),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),

                      spreadRadius: 1,

                      blurRadius: 2,

                      offset:
                          const Offset(0.2, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Order:2023-12-2:12:12:34:123132",
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
                      offset:
                          const Offset(0.2, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Oneway Trip",
                          style: TextStyle(
                              fontSize: 14,
                              // color: firstColor,
                              fontFamily: 'Inter-SemiBold'),
                        ),
                        Text(
                          "8kms",
                          style: TextStyle(
                            fontSize: 15,
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
                      children: [
                        Text(
                          "Package Type",
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Inter-Bold',
                            // color: firstColor,
                          ),
                        ),
                        Text(
                          "Food",
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Inter-Bold',
                            // color: firstColor,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Cash Type",
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Inter-Bold',
                              color: Colors.redAccent),
                        ),
                        Text(
                          "Cash on Pickup",
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Inter-Bold',
                              color: Colors.redAccent
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
                  color: Color.fromARGB(255, 230, 230, 230),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),

                      spreadRadius: 1,

                      blurRadius: 2,

                      offset:
                          const Offset(0.2, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Payment Pending",
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
                      offset:
                          const Offset(0.2, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "₹108",
                          style: TextStyle(
                              fontSize: 14,
                              // color: firstColor,
                              fontFamily: 'Inter-SemiBold'),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton.icon(
                          onPressed: () {
                              
                          
                          },
                          icon: Icon(Icons
                              .currency_rupee), //icon data for elevated button
                          label: Text("PAYMENT PICKED UP"), //label text
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 31, 69,
                                101), //elevated btton background color
                          ),
                        ),
                      ],
                    ),
                  ]),
                ),
              ),
              Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 230, 230, 230),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),

                      spreadRadius: 1,

                      blurRadius: 2,

                      offset:
                          const Offset(0.2, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Pickup address",
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
                        offset:
                            const Offset(0.2, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Contact details",
                            style: TextStyle(
                                fontSize: 14,
                                // color: firstColor,
                                fontFamily: 'Inter-SemiBold'),
                          ),
                          Text(
                            "Contact Customer",
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Inter-SemiBold',
                              // color: firstColor,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                           
                          
                          ElevatedButton.icon(
                              onPressed: () {
 
                                  Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>  MapScreen()));

                                print("You pressed Icon Elevated Button");
                              },
                              icon: Icon(Icons
                                  .map_rounded), //icon data for elevated button
                              label: Text("PAYMENT PICKED UP"), //label text
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromARGB(255, 31, 69,
                                    101), //elevated btton background color
                              ),
                            ),
                        ],
                      ),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "kanyakumari",
                            style: TextStyle(
                                fontSize: 14,
                                // color: firstColor,
                                fontFamily: 'Inter-SemiBold'),
                          ),
                          ElevatedButton.icon(
                              onPressed: () {
                                 showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text(
                            "Pickup confirmation?\nHas the pickup been completed",
                            style: TextStyle(fontSize: 17),
                          ),
                          actions: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                         backgroundColor: Color.fromARGB(255, 31, 69,
                                    101),
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 10),
                                          textStyle: const TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold)),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text(
                                        "Cancel",
                                        style: TextStyle(
                                            // color: firstColor,
                                            fontFamily: 'Inter-SemiBold'),
                                      )),
                                ),
                                SizedBox(width: 12,),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                       backgroundColor: Color.fromARGB(255, 31, 69,
                                    101),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 10),
                                        textStyle: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold)),
                                    onPressed: () {
                                     Navigator.pop(context);
                                    },
                                    child: const Text("Okay",
                                        style: TextStyle(
                                            //  color: firstColor,
                                            fontFamily: 'Inter-SemiBold'))),
                              ],
                            ),
                          ],
                        );
                      });
                                print("You pressed Icon Elevated Button");
                              },
                              icon: Icon(Icons
                                  .play_circle), //icon data for elevated button
                              label: Text("NAVIGATE TO PICKUP"), //label text
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromARGB(255, 31, 69,
                                    101), //elevated btton background color
                              ),
                            ),
                           
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton.icon(
                                  onPressed: () {
                                     showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text(
                            "Delivery Confirmation\nHas the delivery been completed?",
                            style: TextStyle(fontSize: 17),
                          ),
                          actions: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                         backgroundColor: Color.fromARGB(255, 31, 69,
                                    101),
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 10),
                                          textStyle: const TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold)),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text(
                                        "Cancel",
                                        style: TextStyle(
                                            // color: firstColor,
                                            fontFamily: 'Inter-SemiBold'),
                                      )),
                                ),
                                SizedBox(width: 12,),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                       backgroundColor: Color.fromARGB(255, 31, 69,
                                    101),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 10),
                                        textStyle: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold)),
                                    onPressed: () {
                                     Navigator.pop(context);
                                    },
                                    child: const Text("Okay",
                                        style: TextStyle(
                                            //  color: firstColor,
                                            fontFamily: 'Inter-SemiBold'))),
                              ],
                            ),
                          ],
                        );
                      });
                                    print("You pressed Icon Elevated Button");
                                  },
                                  icon: Icon(Icons
                                      .thumb_up), //icon data for elevated button
                                  label: Text("SET PICKUP COMPLETED"), //label text
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color.fromARGB(255, 31, 69,
                                        101), //elevated btton background color
                                  ),
                                ),
                        ],
                      ),
                    ]),
                  ))
            ])));
  }
}
