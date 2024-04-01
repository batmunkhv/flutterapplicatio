import 'package:flutter/material.dart';
import 'package:flutter_application_1/log_in.dart';

// ignore: camel_case_types
class signUpScreen extends StatelessWidget {
  const signUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Create new account",
            style: TextStyle(
              fontFamily: "Lato",
              fontWeight: FontWeight.bold,
              letterSpacing: 0.2,
              fontSize: 23,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "Welcome to our App",
            style: TextStyle(
              fontFamily: "Lato",
              letterSpacing: 0.2,
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Image.network(
            'https://picsum.photos/250?image=9',
            height: 150,
            width: 150,
          ),
          const Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Email",
              style: TextStyle(
                fontFamily: "Nunito Sans",
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(9),
              ),
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              labelText: "Enter your email address",
              labelStyle: const TextStyle(
                fontFamily: "Nunito Sans",
                fontSize: 14,
                letterSpacing: 0.1,
              ),
              prefixIcon: const Icon(Icons.email, size: 20),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Password",
              style: TextStyle(
                fontFamily: "Nunito Sans",
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(9),
              ),
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              labelText: "Create new Password",
              labelStyle: const TextStyle(
                fontFamily: "Nunito Sans",
                fontSize: 14,
                letterSpacing: 0.1,
              ),
              prefixIcon: const Icon(Icons.lock, size: 20),
              suffixIcon: const Icon(Icons.visibility),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          InkWell(
            child: Container(
              width: 320,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromARGB(255, 10, 105, 230),
                      Color.fromARGB(255, 12, 45, 230),
                    ],
                  )),
              child: Center(
                child: Text(
                  "Register",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have account?",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
              InkWell(
                onTap: () {
                  // end button darahad hiigdeh uildel bichigdene
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return logInScreen();
                  }));
                },
                child: Text(
                  "Log In",
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
