import 'package:flutter/material.dart';
import 'package:klobank/SCREEN/auth/otp.dart';
import 'package:klobank/SCREEN/button/custom_button.dart';
import 'package:klobank/SCREEN/colors/app_colors.dart';
// import 'package:klobank/SCREEN/home_page.dart';

class PhoneNumberScreen extends StatefulWidget {
  const PhoneNumberScreen({super.key});

  @override
  State<PhoneNumberScreen> createState() => _PhoneNumberScreenState();
}

class _PhoneNumberScreenState extends State<PhoneNumberScreen> {
  final Color fieldColor = const Color(0xFFF6FAFF); // Adjusted to proper format
  final Color strokeColor = const Color(0xFFE2EFFF);
  final TextEditingController _phoneController = TextEditingController();
  bool _isPhoneValid = false;

  final List<Map<String, String>> countryList = [
    {'code': '+1', 'flag': '🇺🇸'},
    {'code': '+44', 'flag': '🇬🇧'},
    {'code': '+91', 'flag': '🇮🇳'},
  ];
  String selectedCountryCode = '+1';

  @override
  void dispose() {
    _phoneController.dispose();
    super.dispose();
  }

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
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            children: [
              // Image Stack
              Stack(
                alignment: Alignment.center,
                children: [
                  // Larger first image
                  Image.asset(
                    'assets/images/otp1.png',
                    height: 200, // Increase image size
                    width: double.infinity,
                    fit: BoxFit.contain,
                  ),
                  // Overlay image
                  Positioned(
                    child: Image.asset(
                      'assets/images/otp2.png',
                      height: 180,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'OTP Verification',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    width: double.infinity,
                    child: const Text(
                      'We will send you a one time password on this mobile number',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: fieldColor,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: strokeColor),
                ),
                child: Row(
                  children: [
                    DropdownButton<String>(
                      value: selectedCountryCode,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedCountryCode = newValue!;
                        });
                      },
                      items: countryList.map((country) {
                        return DropdownMenuItem<String>(
                          value: country['code']!,
                          child: Row(
                            children: [
                              Text(
                                country['flag']!,
                                style: const TextStyle(
                                  fontSize: 30,
                                ),
                              ),
                              const SizedBox(width: 10),
                              // Text(country['code']!),
                            ],
                          ),
                        );
                      }).toList(),
                      underline: const SizedBox(),
                    ),
                    const VerticalDivider(
                      color: Colors.grey,
                      thickness: 1,
                      width: 20, // Space between dropdown and text field
                    ),
                    Expanded(
                      child: TextField(
                        controller: _phoneController,
                        keyboardType: TextInputType.phone,
                        decoration: const InputDecoration(
                          hintText: 'Phone number',
                          border: InputBorder.none,
                        ),
                        onChanged: (value) {
                          setState(() {
                            _isPhoneValid =
                                value.length > 9; // Validate 10+ digits
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              // Continue Button
              CustomButton(
                label: 'Continue',
                onPressed: _isPhoneValid
                    ? () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const OtpScreen(),
                          ),
                        );
                      }
                    : null,
                backgroundColor: _isPhoneValid
                    ? AppColors.buttonAndLogoColor
                    : Colors.blue.shade200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
