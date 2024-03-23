import 'package:edtech_application/ActualApp/loginPage1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Register extends StatefulWidget {
  const Register({super.key});
  @override
  RegisterPageState createState() => RegisterPageState();
}

class RegisterPageState extends State {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _mobilController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

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
                SvgPicture.asset("assets/svgImg/register.svg",
                    width: MediaQuery.of(context).size.width -
                        MediaQuery.of(context).size.width * 10 / 100),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    SizedBox(width: 10),
                    Text(
                      "Sign Up",
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
                      controller: _nameController,
                      style: const TextStyle(color: Colors.black),
                      decoration: const InputDecoration(
                        labelText: "Full Name",
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter Full Name';
                        }
                        return null;
                      }),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width -
                      MediaQuery.of(context).size.width * 10 / 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: TextFormField(
                      controller: _mobilController,
                      style: const TextStyle(color: Colors.black),
                      decoration: const InputDecoration(
                        labelText: "Mobile No",
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter Mobile No';
                        }
                        return null;
                      }),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width -
                      MediaQuery.of(context).size.width * 10 / 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: TextFormField(
                      controller: _emailController,
                      style: const TextStyle(color: Colors.black),
                      decoration: const InputDecoration(
                        labelText: "Email",
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter Email';
                        }
                        return null;
                      }),
                ),
                const SizedBox(
                  height: 25,
                ),
                GestureDetector(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Login(),
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
                      "Register",
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
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (contex) => const Login(),
                      ),
                    );
                  },
                  child: Container(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Already have Account !  "),
                        Text(
                          "Login",
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
