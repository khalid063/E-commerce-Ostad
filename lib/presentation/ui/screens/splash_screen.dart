import 'package:ecommerce_ostad/presentation/ui/screens/auth/email_verification_screen.dart';
import 'package:ecommerce_ostad/presentation/ui/utility/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    goToNextScreen();
  }
  
  void goToNextScreen() {
    Future.delayed(Duration(seconds: 3)).then((value) => {
      Get.offAll(HomeScreen()),
        });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Center(
            child: SvgPicture.asset(
              ImageAssets.craftyBayLogoSVG,
              width: 100,
            ),
          ),
          Spacer(),
          const CircularProgressIndicator(),
          const SizedBox(
            height: 16,
          ),
          Text('Version 1.0.0'),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
