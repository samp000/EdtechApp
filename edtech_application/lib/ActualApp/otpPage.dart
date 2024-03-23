import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class otpPage extends StatefulWidget {
  const otpPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _otpPageState();
  }
}

class _otpPageState extends State {
  OtpFieldController _otp = OtpFieldController();
  bool completedPin = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              SvgPicture.asset("assets/svgImg/otp.svg",
                  width: MediaQuery.of(context).size.width -
                      MediaQuery.of(context).size.width * 10 / 100),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 10),
                  Text(
                    "Enter OTP",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width -
                    MediaQuery.of(context).size.width * 10 / 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                ),
                child: OTPTextField(
                  controller: _otp,
                  length: 4,
                  width: MediaQuery.of(context).size.width,
                  style: TextStyle(fontSize: 25),
                  textFieldAlignment: MainAxisAlignment.spaceAround,
                  onCompleted: (pin) {
                    print("Completed: " + pin);

                    completedPin = true;

                    setState(() {});
                  },
                  onChanged: (pin) {
                    print("Changed: " + pin);
                  },
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: MediaQuery.of(context).size.width -
                      MediaQuery.of(context).size.width * 10 / 100,
                  decoration: BoxDecoration(
                      color: completedPin
                          ? Color.fromARGB(255, 126, 40, 141)
                          : Colors.grey,
                      borderRadius: const BorderRadius.all(Radius.circular(5))),
                  child: const Text(
                    "Submit",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.center,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Didn't get OTP ? Resend in "),
                    Text(
                      "4:23",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, color: Colors.blue),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
