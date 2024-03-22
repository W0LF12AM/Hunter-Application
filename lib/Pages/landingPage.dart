// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hunter_app/Pages/loginPage.dart';
import 'package:hunter_app/Pages/registerPage.dart';
import 'package:hunter_app/widget/button.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 250),
          child: Center(
            child: Image.asset(
              'assets/Main Logo.png',
              width: 200,
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Column(
              children: [
                Expanded(
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.only(topRight: Radius.circular(50))),
                      width: double.infinity,
                      height: 100,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 35, left: 30),
                            child: Row(
                              children: [
                                Text('WELCOME !',
                                    style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 30, right: 40),
                            child: Text(
                                'Welcome to hunter associaton app, there will be a lot of recent raid or event for all of you that sign up, hope you guys enjoy our app :)',
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500)),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 50, right: 20),
                                child: Row(
                                  children: [
                                    MyButton(
                                      tombol: 'Register',
                                      goto: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder:
                                                    (BuildContext context) =>
                                                        RegisterPage()));
                                      },
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    MyButton(
                                        tombol: 'Login',
                                        goto: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder:
                                                    (BuildContext context) =>
                                                        LoginPage(),
                                              ));
                                        })
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      )),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
