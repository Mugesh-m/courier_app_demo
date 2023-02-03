import 'package:deliveryman_app/profile_screen/container.dart';
import 'package:flutter/material.dart';

class UserDetails extends StatefulWidget {
  const UserDetails({super.key});

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 220),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Text(
              "Save",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
        ),
        leading: const BackButton(color: Colors.black),
        backgroundColor:    Color.fromARGB(255, 124, 179, 225),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(children: [
              InkWell(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text(
                            "Change Name",
                          ),
                          actions: [
                            TextFormField(
                              decoration: const InputDecoration(
                                hintText: "Enter your name",
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey)),
                              ),
                            ),
                            const SizedBox(
                              height: 19,
                            ),
                            Row(
                              children: [
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary:    Color.fromARGB(255, 124, 179, 225),
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
                                const SizedBox(
                                  width: 120,
                                ),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.blueGrey,
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 10),
                                        textStyle: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold)),
                                    onPressed: () {
                                      setState(() {
                                        // _launched =
                                        //     _makePhoneCall(_phone);
                                      });
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
                  // personalEditBottomSheet(context);
                },
                child: NewContainer(
                  height: 60,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: const [
                          Padding(
                            padding: EdgeInsets.all(6.0),
                            // child: Icon(
                            //   MdiIcons.accountOutline,
                            //   color: firstColor,size: 20,
                            // ),
                          ),
                          Text(
                            'Full Name',
                            style: TextStyle(
                                fontFamily: 'Inter-Regular',
                                fontSize: 16,
                                color: Colors.grey),
                          )
                        ]),
                        const Icon(
                          Icons.arrow_forward_ios_sharp,
                          size: 20,
                          // color: firstColor,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text(
                            "Please contact your \nadministrator",
                          ),
                          actions: [
                            SizedBox(
                              width: 100,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary:  Color.fromARGB(255, 124, 179, 225),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 10),
                                      textStyle: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold)),
                                  onPressed: () {
                                    setState(() {
                                      Navigator.pop(context);
                                      // _launched =
                                      //     _makePhoneCall(_phone);
                                    });
                                  },
                                  child: const Text("Okay",
                                      style: TextStyle(
                                          // color: firstColor,
                                          fontFamily: 'Inter-SemiBold'))),
                            ),
                          ],
                        );
                      });
                  // personalEditBottomSheet(context);
                },
                child: NewContainer(
                  height: 60,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: const [
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Phone',
                            style: TextStyle(
                                fontFamily: 'Inter-Regular',
                                fontSize: 16,
                                color: Colors.grey),
                          ),
                          SizedBox(
                            width: 39,
                          ),
                          Text(
                            '+91 7339669904',
                            style: TextStyle(
                                fontFamily: 'Inter-Regular', fontSize: 16),
                          ),
                        ]),
                        const Icon(
                          Icons.arrow_forward_ios_sharp,
                          size: 20,
                          // color: firstColor,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              
              InkWell(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text(
                            "Change Email",
                          ),
                          actions: [
                            TextFormField(
                              decoration: const InputDecoration(
                                hintText: "Enter Your Email Address",
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey)),
                              ),
                            ),
                            const SizedBox(
                              height: 19,
                            ),
                            Row(
                              children: [
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Color.fromARGB(255, 124, 179, 225),
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
                                const SizedBox(
                                  width: 120,
                                ),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary:   Color.fromARGB(255, 124, 179, 225),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 10),
                                        textStyle: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold)),
                                    onPressed: () {
                                      setState(() {
                                        // _launched =
                                        //     _makePhoneCall(_phone);
                                      });
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
                  // personalEditBottomSheet(context);
                },
                child: NewContainer(
                  height: 60,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: const [
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Email',
                            style: TextStyle(
                                fontFamily: 'Inter-Regular',
                                fontSize: 16,
                                color: Colors.grey),
                          )
                        ]),
                        const Icon(
                          Icons.arrow_forward_ios_sharp,
                          size: 20,
                          // color: firstColor,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
