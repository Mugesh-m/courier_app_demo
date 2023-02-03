import 'package:flutter/material.dart';

class PreviousOrder extends StatefulWidget {
  const PreviousOrder({super.key});

  @override
  State<PreviousOrder> createState() => _PreviousOrderState();
}

class _PreviousOrderState extends State<PreviousOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Text(
          "Previous Orders",
          style: TextStyle(color: Colors.black),
        ),
         backgroundColor:    Color.fromARGB(255, 124, 179, 225),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
             Container(
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height / 3.46,
                  width: double.infinity,
                  child: Container(
                    decoration: BoxDecoration(
                     boxShadow: [
                    BoxShadow(
                     color: Color.fromARGB(255, 31, 69, 101),
                      offset: const Offset(
                        5.0,
                        5.0,
                      ),
                      blurRadius: 7.0,
                      spreadRadius: 1.0,
                    ), //BoxShadow
                    BoxShadow(
                      color: Color.fromARGB(255, 255, 255, 255),
                      offset: const Offset(0.0, 0.0),
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
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) =>
                                  //             const Permission()));
                                },
                                icon: const Icon(
                                  Icons.arrow_forward,
                                ),
                              ),
                              const Padding(
                                padding: const EdgeInsets.only(right: 178),
                                child: Text(
                                  "One-way trip",
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                               
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
                                 '2023-12-2:12:12:34:123132',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
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
                          SizedBox(height: 8,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Text(
                                "₹133",
                                style: TextStyle(
                                  fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 248, 23, 23)),
                              ),
                            ],
                          ),
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
                                        padding: EdgeInsets.only(right: 20),
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
                                    children: const [
                                      Text(
                                        "kanyakumari",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'Inter-Bold',
                                          // color: firstColor,
                                        ),
                                      ),
                                      Text(
                                        "nagercoil",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'Inter-Bold',
                                          // color: firstColor,
                                        ),
                                      )
                                    ],
                                  ),
                           
                        ],
                      ),
                    ),
                  ),
                ),  ],
        ),
      ),
    );
  }
}
