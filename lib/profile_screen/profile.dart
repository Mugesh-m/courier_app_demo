import 'package:deliveryman_app/homescreens/home.dart';
import 'package:deliveryman_app/otp.dart';
import 'package:deliveryman_app/profile_screen/container.dart';
import 'package:deliveryman_app/profile_screen/previous_orders.dart';
import 'package:deliveryman_app/profile_screen/user_details.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../login_page.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    Future<void>? _launched;
    String _phone = '';
    Future<void> _makePhoneCall(String? phoneNumber) async {
      final Uri launchUri = Uri(scheme: 'tel', path: "+91 9150965552");
      await launch(launchUri.toString());
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Profile",
          style: TextStyle(color: Colors.black, fontSize: 23),
        ),
        leading: BackButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const Home()));
            },
            color: Colors.black),
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const UserDetails()));
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
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '+91 7339669904',
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const PreviousOrder()));
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
                            child: Icon(
                              MdiIcons.history,
                              size: 20,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Histroy',
                            style: TextStyle(
                                fontFamily: 'Inter-Regular', fontSize: 16),
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
              InkWell(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text(
                            "This will call customer care.This is\nnot a toll free number.Do you want\nto continue",
                            style: TextStyle(fontSize: 17),
                          ),
                          actions: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ElevatedButton(
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
                                ),
                                const SizedBox(
                                  width: 100,
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
                                        _launched = _makePhoneCall(_phone);
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
                            child: Icon(
                              MdiIcons.cellphone,
                              size: 20,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Support',
                            style: TextStyle(
                                fontFamily: 'Inter-Regular', fontSize: 16),
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
                height: 12,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const MobileScreen()));
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
                            child: Icon(
                              MdiIcons.logout,
                              size: 20,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Logout',
                            style: TextStyle(
                                fontFamily: 'Inter-Regular', fontSize: 16),
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
