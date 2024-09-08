import 'package:drugstore/Widgets/buttonNavigationBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPAgeState();
}

class _LoginPAgeState extends State<LoginPage> {
  bool index = false;
  @override
  Widget build(BuildContext context) {
    TextEditingController Frist = TextEditingController();
    TextEditingController Second = TextEditingController();

    return Scaffold(
      backgroundColor: Color(0xffe9f9ff),
      body: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Lottie.asset("Images/login.json", repeat: true),
          ),
          Center(
            child: Container(
              width: 300,
              height: 350,
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.1),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 50,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 76, 76, 220),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)),
                    ),
                    child: const Center(
                      child: Text(
                        "LogIn Page",
                        style: TextStyle(color: Colors.black, fontSize: 25),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          decoration: const BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(color: Colors.black))),
                          child: TextField(
                            controller: Second,
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide.none),
                              hintText: "Enter Your E-Mail",
                              prefixIcon: Icon(
                                Icons.person,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          decoration: const BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(color: Colors.black))),
                          child: TextField(
                            controller: Frist,
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide.none),
                              hintText: "Enter Your Password",
                              prefixIcon: Icon(
                                Icons.key,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                  height: 10,
                                  child: Checkbox(
                                    value: index,
                                    onChanged: (value) {
                                      setState(() {
                                        index = value!;
                                      });
                                    },
                                  ),
                                ),
                                const Text(
                                  "Remember me",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const InkWell(
                              child: Text("Forget Password?",
                                  style:
                                  TextStyle(fontWeight: FontWeight.bold)),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                    const botton_navigator()));
                          },
                          child: Container(
                            width: 120,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 76, 76, 220),
                                borderRadius: BorderRadius.circular(30)),
                            child: const Center(
                                child: Text(
                                  "LogIn",
                                  style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                                )),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Don't have an account"),
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "Sin Up",
                                  style: TextStyle(color: Colors.blue),
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
