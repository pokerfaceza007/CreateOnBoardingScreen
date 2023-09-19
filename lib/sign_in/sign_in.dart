import 'package:flutter/material.dart';
import 'package:flutter_widgets/component/my_button.dart';
import 'package:flutter_widgets/component/my_iconbutton.dart';
import 'package:flutter_widgets/component/my_textbutton.dart';
import 'package:flutter_widgets/component/my_textfield.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void signInUser() async {
    if (emailController.text != "" && passwordController.text != "") {
      print('It s okay');
    } else {
      print('Please input your email and password');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 30, 40),
        child: Form(
          child: Column(
            children: [
              const Spacer(),
              Text(
                "Hello, ready to get started",
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                  textStyle: Theme.of(context).textTheme.displayLarge,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Please sign in with your email and password.",
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                  textStyle: Theme.of(context).textTheme.displaySmall,
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  fontStyle: FontStyle.italic,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              MyTextField(
                controller: emailController,
                hintText: 'Enter your email',
                labelText: 'Email',
                secureText: false,
              ),
              const SizedBox(
                height: 20,
              ),
              MyTextField(
                controller: passwordController,
                hintText: 'Enter your password',
                labelText: 'Password',
                secureText: true,
              ),
              const SizedBox(
                height: 25,
              ),
              GestureDetector(
                onTap: () {
                  // Handle 'Forgot Password' functionality here
                  // You can add code to reset the password or navigate to the password reset screen
                },
                child: Text(
                  'Forgot Password',
                  style: GoogleFonts.lato(
                    textStyle: TextStyle(
                      color: Colors.blue, // Change the text color to blue when clicked
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              MyButton(
                onTap: signInUser,
                hinText: 'Sign In',
              ),
              Row(
                children: [
                  const Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.green,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'Or continue with',
                      style: TextStyle(color: Colors.yellowAccent.shade700),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyIconButton(imagePath: 'lib/assets/image/Facebook.png'),
                  SizedBox(
                    width: 10,
                  ),
                  MyIconButton(imagePath: 'lib/assets/image/Google.png'),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Not a member',
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                    const MyTextButton(
                      labelText: 'Register Now!',
                      pageRoute: 'register',
                    )
                  ],
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
