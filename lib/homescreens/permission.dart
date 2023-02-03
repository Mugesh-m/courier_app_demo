import 'package:flutter/material.dart';


class Permission extends StatefulWidget {
  const Permission({super.key});

  @override
  State<Permission> createState() => _PermissionState();
}

class _PermissionState extends State<Permission> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:   Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 149),
            child: Image.asset(
                      "assets/per.png",
                      height: 60,
                    ),
          ),
        ],
      ),
    );
  }
}
