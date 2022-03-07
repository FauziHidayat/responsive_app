import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.nunitoTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  final purpleColor = Color(0xff6688ff);
  final darkTextColor = Color(0xff1F1A3D);
  final lightTextColor = Color(0xff999999);
  final textFieldColor = Color(0xffF5F6FA);
  final borderColor = Color(0xffD9D9D9);

  Widget getTextField({required String hint}) {
    return TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(color: Colors.transparent, width: 0),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(color: Colors.transparent, width: 0),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 16),
            filled: true,
            fillColor: textFieldColor,
            hintText: hint,
            hintStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 52),
              Text(
                'Sign Up to Masterwinds',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: darkTextColor),
              ),
              SizedBox(height: 4),
              Wrap(
                children: [
                  Text(
                    'Already have an account?',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: lightTextColor),
                  ),
                  Text(
                    ' Login',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: purpleColor),
                  ),
                ],
              ),
              SizedBox(height: 24),
              getTextField(hint: 'Full Name'),
              SizedBox(height: 16),
              getTextField(hint: 'Email'),
              SizedBox(height: 16),
              getTextField(hint: 'Password'),
              SizedBox(height: 16),
              getTextField(hint: 'Confirm Password'),
              SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(purpleColor),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(vertical: 14)),
                      textStyle: MaterialStateProperty.all(TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w500))),
                  child: Text('Create Account'),
                ),
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Expanded(child: Divider()),
                  SizedBox(width: 16),
                  Text(
                    'or sign up via',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: lightTextColor),
                  ),
                  SizedBox(width: 16),
                  Expanded(child: Divider())
                ],
              ),
              SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      side: MaterialStateProperty.all(
                          BorderSide(color: borderColor)),
                      foregroundColor: MaterialStateProperty.all(darkTextColor),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(vertical: 14)),
                      textStyle: MaterialStateProperty.all(TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w500))),
                  child: Row(mainAxisSize: MainAxisSize.min, children: [
                    Image.asset('images/Google.png'),
                    SizedBox(width: 10),
                    Text('Google'),
                  ]),
                ),
              ),
              SizedBox(height: 16),
              Wrap(
                children: [
                  Text(
                    'By signing up to Masterwinds you agree to our',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: lightTextColor),
                  ),
                  Text(
                    'terms and condition',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: purpleColor),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
