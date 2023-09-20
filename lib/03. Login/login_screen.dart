import 'package:flutter/material.dart';
import 'package:riveapptwo/00.%20Components/const.dart';
import 'package:riveapptwo/00.%20Components/custom_tag.dart';
import 'package:riveapptwo/00.%20Components/my_text_field.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(height: 50),
              Image.asset(
                'assets/images/TaLogo-01.png',
                height: 150,
              ),
              const SizedBox(height: 50),
              Text(
                'Welcome back  you\'ve been missed',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 25),

              //emailFormField
              MyTextFiel(
                controller: usernameController,
                hintText: 'Email',
                obscuredText: false,
              ),

              const SizedBox(height: 025),
              // password
              MyTextFiel(
                controller: passwordController,
                hintText: 'Password',
                obscuredText: true,
              ),
              const SizedBox(height: 012),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forget Password?',
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 025),

              CustomTag(
                backgroundColor: kColors11,
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Login',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 025),

              Row(
                children: [
                  const Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      'Or continue with',
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 012),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Colors.white,
                  ),
                  color: Colors.grey[200],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset(
                    'assets/images/google.png',
                    height: 30,
                  ),
                ),
              ),

              const SizedBox(height: 025),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Not a member?'),
                  const SizedBox(width: 5),
                  TextButton(
                      onPressed: () {}, child: const Text('Register Now')),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
