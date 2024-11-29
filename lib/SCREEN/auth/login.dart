import 'package:flutter/material.dart';
import 'package:klobank/SCREEN/button/custom_button.dart';
import 'package:klobank/SCREEN/colors/app_colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  final Color fieldColor = const Color(0xFFF6FAFF); 
  final Color strokeColor = const Color(0xFFE2EFFF);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background_color,
      appBar: AppBar(
        backgroundColor: AppColors.background_color,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 18,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 28.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Login',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            const Text(
              'Please enter your email address and password to log in to your account',
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Email Address',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                wordSpacing: 3.0,
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: widget.fieldColor, // Use widget to access fieldColor
                hintText: 'name@gmail.com',
                hintStyle: const TextStyle(
                  fontSize: 15,
                  color: AppColors.textColor,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: widget.strokeColor),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: widget.strokeColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: widget.strokeColor, width: 2.0),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Password',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              obscureText: _isObscure,
              decoration: InputDecoration(
                filled: true,
                fillColor: widget.fieldColor, // Use widget to access fieldColor
                hintText: '***********',
                hintStyle: const TextStyle(
                  fontSize: 15,
                  color: AppColors.textColor,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: widget.strokeColor),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: widget.strokeColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: widget.strokeColor, width: 2.0),
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                    _isObscure ? Icons.visibility_off : Icons.visibility,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    setState(() {
                      _isObscure = !_isObscure;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 1,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                  onPressed: () =>
                      {Navigator.pushNamed(context, '/forget_password')},
                  child: const Text(
                    'Forget Password?',
                    style: TextStyle(
                      fontSize: 15,
                      color: AppColors.buttonAndLogoColor,
                    ),
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            CustomButton(
              label: 'Login',
              fontSize: 20,
              textColor: Colors.white,
              onPressed: () {},
            ),
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () => Navigator.pushNamed(context, '/SignupPage'),
                child: RichText(
                  text: const TextSpan(
                    text: "Don't have an account? ",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                    children: [
                      TextSpan(
                        text: 'Sign up',
                        style: TextStyle(
                          fontSize: 15,
                          color: AppColors.buttonAndLogoColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )

            // const Text(
            //   'Don\'t have an account? Sign up now.',
            //   style: TextStyle(
            //     fontSize: 15,
            //     color: AppColors.textColor,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
