// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hunter_app/Pages/loginPage.dart';
import 'package:hunter_app/widget/checkbox.dart';
import 'package:hunter_app/widget/textfield.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final username = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final confirmpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Center(
                child: Image.asset(
                  'assets/Logo saya.jpg',
                  width: 150,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    'REGISTER',
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    'Please sign up to begin your adventures !',
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
                  //Username
                  MyTextfield(
                      hintText: 'Username',
                      icon: Icon(Icons.person),
                      icons: Icon(
                        Icons.abc,
                        color: Colors.white,
                      ),
                      textcontroller: username),
                  SizedBox(
                    height: 10,
                  ),

                  //email
                  MyTextfield(
                      hintText: 'Email',
                      icon: Icon(Icons.email),
                      icons: Icon(
                        Icons.abc,
                        color: Colors.white,
                      ),
                      textcontroller: email),
                  SizedBox(
                    height: 10,
                  ),

                  //password
                  MyTextfield(
                      hintText: 'Password',
                      icon: Icon(Icons.lock),
                      icons: Icon(
                        Iconsax.eye_slash,
                        size: 20,
                      ),
                      textcontroller: password),
                  SizedBox(
                    height: 10,
                  ),

                  //confirm password
                  MyTextfield(
                      hintText: 'Confirm Password',
                      icon: Icon(Icons.lock),
                      icons: Icon(
                        Iconsax.eye_slash,
                        size: 20,
                      ),
                      textcontroller: confirmpassword),

                  //remember me
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Remember me',
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      ),
                      MyCheckBox()
                    ],
                  ),

                  SizedBox(
                    height: 40,
                  ),

                  //tombol sign up
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                        child: Text(
                          'Sign Up',
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  //login lagi
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    LoginPage()));
                      },
                      child: Text(
                        'Already have an account ? Sign In',
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 13),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
