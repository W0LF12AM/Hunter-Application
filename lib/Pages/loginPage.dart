// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hunter_app/Pages/registerPage.dart';
import 'package:hunter_app/widget/textfield.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final email = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Logo
            Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Image.asset(
                'assets/Logo saya.jpg',
                width: 200,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            //text ( login, please sign in to start your adventures)
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text('LOGIN',
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold)),
                ),
              ],
            ),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    'Please sign in to continue your adventures !',
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.normal),
                  ),
                )
              ],
            ),

            SizedBox(
              height: 30,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  //username textfield
                  MyTextfield(
                      hintText: 'Username',
                      textcontroller: email,
                      icon: Icon(Icons.person),
                      icons: Icon(
                        Icons.abc,
                        color: Colors.white,
                      )),

                  SizedBox(
                    height: 10,
                  ),

                  //password textfield
                  MyTextfield(
                      textcontroller: password,
                      hintText: 'Password',
                      icon: Icon(Icons.lock),
                      icons: Icon(
                        Iconsax.eye_slash,
                        size: 20,
                      )),

                  //forgot password
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forgot Password ?',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.normal,
                                fontSize: 15,
                                color: Colors.white),
                          ))
                    ],
                  ),

                  SizedBox(
                    height: 15,
                  ),
                  //Sign in button
                  GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        width: double.infinity,
                        height: 50,
                        child: Center(
                          child: Text(
                            'Sign In',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                      )),

                  SizedBox(
                    height: 10,
                  ),
                  //sign up option
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    RegisterPage()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(15)),
                        width: double.infinity,
                        height: 50,
                        child: Center(
                          child: Text(
                            'Create Account',
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
