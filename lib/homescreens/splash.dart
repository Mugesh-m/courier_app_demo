import 'dart:async';
import 'package:deliveryman_app/homescreens/home.dart';
import 'package:get/get.dart';
 
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
 @override
  _SplashScreenState createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.push(
         context, MaterialPageRoute(builder: (context) => Home()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: firstColor,
      body: InkWell(
        onTap: () {
          // Navigator.pushReplacement(context, MaterialPageRoute(builder: (contex)=> Init()));     
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 700,
               
              
                child: Image.asset(
                  'assets/img.gif',
               
                  fit: BoxFit.cover,
                ),
              ),
               
            ],
          ),
        ),
      ),
    );
  }
}
