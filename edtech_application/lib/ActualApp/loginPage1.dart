import 'package:edtech_application/ActualApp/otpPage.dart';
import 'package:edtech_application/ActualApp/registerPage1.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<StatefulWidget> createState() {
    return _LoginState();
  }
}

class _LoginState extends State {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _mobNo = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SvgPicture.asset("assets/svgImg/login.svg",
                    width: MediaQuery.of(context).size.width -
                        MediaQuery.of(context).size.width * 10 / 100),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    SizedBox(width: 10),
                    Text(
                      "Login",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
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
                  child: TextFormField(
                      controller: _mobNo,
                      style: const TextStyle(color: Colors.black),
                      decoration: const InputDecoration(
                        labelText: "Mobile Number",
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter mobile no';
                        }
                        return null;
                      }),
                ),
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const otpPage(),
                          ));
                    }
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: MediaQuery.of(context).size.width -
                        MediaQuery.of(context).size.width * 10 / 100,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 126, 40, 141),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: const Text(
                      "Login",
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
                const Text(
                  "OR",
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const otpPage(),
                        ));
                  },
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width -
                        MediaQuery.of(context).size.width * 10 / 100,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(92, 167, 165, 165),
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          "assets/svgIcons/google.svg",
                          width: 30,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Text(
                          "Log in with Google",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (contex) => const Register(),
                      ),
                    );
                  },
                  child: Container(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Dont have any Account ?   "),
                        Text(
                          "Register",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.blue[800]),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
