import 'package:deliveryman_app/homescreens/home.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  final otpController = TextEditingController();
  String currentText = "";
  late String otp;
  bool hasError = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Verification",
              style: TextStyle(
                fontSize: 24,
                //color: firstColor,
                fontFamily: 'Inter-Bold',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              textAlign: TextAlign.start,
              "Enter the OTP code from the phone \nwe just sent you",
              style: TextStyle(fontFamily: 'Inter-Medium', fontSize: 14),
            ),
            const SizedBox(
              height: 67,
            ),
            PinCodeTextField(
              controller: otpController,
              keyboardType: TextInputType.number,
              autoFocus: true,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              length: 6,
              onChanged: (val) {
                print(val);
              },
              pinTheme: PinTheme(
                  // inactiveColor: firstColor,
                  errorBorderColor: Colors.black,
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(12),
                  fieldHeight: 50,
                  fieldWidth: 45,
                  activeFillColor: Colors.white,
                  selectedColor: Colors.red),
              onCompleted: (pin) {
                print("completed:" + pin);

                print("otp is ${otpController.text}");

                setState(() {
                  otp = otpController.text.isEmpty ? pin : otpController.text;
                  // primaryColor = val!.isNotEmpty ? firstColor : Colors.grey;
                });
              },
              appContext: context,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                hasError ? "Please enter the correct pin" : "",
                style: const TextStyle(
                    color: Colors.red,
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(
              height: 67,
            ),
            SizedBox(
                width: 329,
                height: 44,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor:  Color.fromARGB(255, 31, 69, 101),
                      //elevated btton background color
                    ),
                    onPressed: () async {
                      setState(() => hasError = true);
                      if (currentText.length != 6 ||
                          currentText != otpController) {
                        otpController.text;
                        print(otp);
                        await Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Home()));
                      } else {
                        setState(() {
                          hasError = false;
                        });
                      }
                    },
                    child: Text("Submit")))
          ],
        ),
      ),
    );
  }
}
