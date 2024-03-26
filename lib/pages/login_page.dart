import 'package:flutter/material.dart';

import '../utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/login_image.png', fit: BoxFit.cover),
            const SizedBox(height: 20.0),
            Text(
              "Welcome $name",
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Enter Username", labelText: "Username"),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextField(
                    decoration: const InputDecoration(
                        hintText: "Enter Password", labelText: "Password"),
                    onChanged: (String value) {
                      // NEVER CALLED
                      debugPrint('Changed: $value');
                    },
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  InkWell(
                    onTap: () async {
                      setState(() {
                        changeButton = true;
                      });
                      await Future.delayed(const Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      width: changeButton ? 50 : 150,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 8),
                        color: Colors.deepPurple,
                      ),
                      child: changeButton
                          ? const Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : const Text(
                              'Login',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                    ),
                  )
                  // ElevatedButton(
                  //     onPressed: () {
                  //       Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //     },
                  //     style: TextButton.styleFrom(
                  //       minimumSize: const Size(120, 35),
                  //     ),
                  //     child: const Text("Login"))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
