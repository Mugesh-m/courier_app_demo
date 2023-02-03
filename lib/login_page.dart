import 'package:flutter/material.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:slider_button/slider_button.dart';
import 'otp.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({super.key});

  @override
  State<MobileScreen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  String currentText = "a";
  String initialCountry = 'IN';
  final phoneController = TextEditingController();
  final formkey = GlobalKey<FormState>();
  String num = '';
  var countryCode;
  final countryPicker = const FlCountryCodePicker();
  var eid;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/screen.png",
                height: 349,
              ),
              const Text(
                "Sign in with the number",
                style: TextStyle(fontSize: 17, color: Colors.grey),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 11,
              ),
              SizedBox(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () async {
                        final code =
                            await countryPicker.showPicker(context: context);
                        if (code != null) print(code);
                        setState(() {
                          countryCode = code;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: Container(
                          height: 45,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(5)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                FittedBox(
                                    child: countryCode == null
                                        ? Image.asset(
                                            "assets/india.png",
                                          )
                                        : countryCode!.flagImage),
                                const SizedBox(
                                  width: 2,
                                ),
                                Text(
                                  countryCode == null
                                      ? '+91'
                                      : countryCode!.dialCode,
                                  style: const TextStyle(
                                      fontFamily: 'Inter-Medium', fontSize: 14),
                                ),
                                const Icon(
                                  Icons.arrow_drop_down,
                                  //color: firstColor,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                        height: 67,
                        width: MediaQuery.of(context).size.width / 1.6,
                        child: TextFormField(
                          onChanged: (val) {
                            setState(() {
                              // primaryColor = val.isNotEmpty
                              //     ? firstColor
                              //     : Colors.grey;
                            });
                          },
                          controller: phoneController,
                          keyboardType: TextInputType.phone,
                          autovalidateMode: AutovalidateMode.always,
                          maxLength: 10,
                          validator: (value) {
                            if (value == null ||
                                value.isEmpty ||
                                value.length < 10) {
                              return 'Please enter some text';
                            }
                          },
                          decoration: const InputDecoration(
                            counterText: ".",
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)),
                          ),
                        )),
                  ],
                ),
              ),
              const SizedBox(
                height: 34,
              ),
              SizedBox(
                  width: 300,
                  height: 44,
                  child: ElevatedButton(
                     style: ElevatedButton.styleFrom(
                                                      primary:     Color.fromARGB(255, 31, 69, 101),
                                                           //elevated btton background color
                                                      ),
                      onPressed: () {
                        if (formkey.currentState!.validate()) {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => const Otp()));
                        }
                      },
                      child: const Text(
                        "Continue",
                        style: TextStyle(fontSize: 18),
                      ))),
              const SizedBox(
                height: 12,
              ),
              
              const Text(
                "Will send OTP for verification",
                style: TextStyle(fontSize: 17, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
