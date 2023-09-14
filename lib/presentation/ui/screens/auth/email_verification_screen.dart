import 'package:ecommerce_ostad/presentation/ui/screens/auth/otp_verification_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../utility/image_assets.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  @override
  State<EmailVerificationScreen> createState() => _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 100,),
              Center(
                child: SvgPicture.asset(
                  ImageAssets.craftyBayLogoSVG,
                  width: 100,
                ),
              ),
              const SizedBox(height: 20,),
              Text(
                'Welcome Back',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 8,),
              Text(
                'Please Enter Your Email Address',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 16,),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Email'
                ),
              ),
              const SizedBox(height: 16,),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(const OtpVerificationScreen());
                  },
                  child: const Text('Next'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
