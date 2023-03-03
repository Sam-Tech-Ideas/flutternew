import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {},
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Image.asset(
                'images/logo.png',
                width: 300,
                height: 200,
              ),
              const Text("Login to Your Account",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  )),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(18)),
                    ),
                    labelText: 'Email',
                    hintText: 'Enter valid emaiil',
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(18)),

                    ),
                    labelText: 'Password',
                    hintText: 'Enter secure password',
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 150, vertical: 25),
                  side: const BorderSide(color: Colors.black12, width: 1),
                  elevation: 0,
                ),
                child: const Text(
                  "Sign in",
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Sign up",
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
