import 'package:flutter/material.dart';
import 'package:medical_app/screens/home_screen.dart';
import 'package:medical_app/screens/login_screen.dart';
import 'package:medical_app/screens/navbar_roots.dart';
import 'package:medical_app/screens/sign_up_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const LoginScreen()));
                },
                child: const Text(
                  'SKIP',
                  style: TextStyle(
                      color: Color.fromARGB(255, 191, 13, 231), fontSize: 20),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Image.asset("assets/images/doctors.png"),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Doctors Appointment",
              style: TextStyle(
                  color: Color.fromARGB(255, 11, 137, 226),
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  wordSpacing: 2),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Appoint your doctor",
              style: TextStyle(
                  color: Color.fromARGB(255, 1, 8, 13),
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1,
                  wordSpacing: 2),
            ),
            const SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                  color: const Color.fromARGB(255, 54, 38, 228),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
                    },
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      child: Text(
                        "Log In",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
                Material(
                  color: const Color.fromARGB(255, 54, 38, 228),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const NavBarRoots()));
                    },
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
