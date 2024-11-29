import 'package:flutter/material.dart';
import 'package:klobank/SCREEN/auth/phoneNumber_screen.dart';
import 'package:klobank/SCREEN/button/custom_button.dart';
import 'package:klobank/SCREEN/colors/app_colors.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  final Color fieldColor = const Color(0xFFF6FAFF); // Adjusted to proper format
  final Color strokeColor = const Color(0xFFE2EFFF);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
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
      body: SingleChildScrollView(
        // Wrap the entire body with SingleChildScrollView
        padding: const EdgeInsets.symmetric(
          horizontal: 24.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Create An Account',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            const Text(
              'Please complete all input fields to create your account',
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Full Names',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                wordSpacing: 3.0,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: widget.fieldColor, // Use widget to access fieldColor
                hintText: 'John Doe',
                hintStyle: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
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
              maxLines: 1,
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              'Email Address',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                wordSpacing: 3.0,
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: widget.fieldColor,
                hintText: 'name@gmail.com',
                hintStyle: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
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
              maxLines: 1,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Password',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              obscureText: _isObscure,
              decoration: InputDecoration(
                filled: true,
                fillColor: widget.fieldColor,
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
              maxLines: 1,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Confirm Password',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              obscureText: _isObscure,
              decoration: InputDecoration(
                filled: true,
                fillColor: widget.fieldColor,
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
              maxLines: 1,
            ),
            const SizedBox(
              height: 40,
            ),
            CustomButton(
              label: 'Next',
              fontSize: 20,
              textColor: Colors.white,
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PhoneNumberScreen(),
                  ),
                ),
              },
            ),
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () => Navigator.pushNamed(context, '/signup'),
                child: Container(
                  alignment: Alignment.center,
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      text: "By signing up, you agree to our ",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                      children: [
                        TextSpan(
                          text: 'Term of service',
                          style: TextStyle(
                            fontSize: 15,
                            color: AppColors.buttonAndLogoColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: " and ",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                        TextSpan(
                          text: 'Privacy policy',
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
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Align(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () => Navigator.pushNamed(context, '/'),
                child: RichText(
                  text: const TextSpan(
                    text: "Already have an account? ",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                    children: [
                      TextSpan(
                        text: 'Login',
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
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
