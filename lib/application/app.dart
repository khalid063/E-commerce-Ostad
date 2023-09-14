import 'package:ecommerce_ostad/presentation/ui/screens/splash_screen.dart';
import 'package:ecommerce_ostad/presentation/ui/utility/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CraftBay extends StatelessWidget {
  const CraftBay({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      theme: ThemeData(
        //primaryColor: Color(0xFF07ADAE),
        //make Primary Swatch
        //primarySwatch: MaterialColor(0xFF07ADAE, ColorPalette().color),
        primarySwatch: MaterialColor(AppColors.primaryColor.value, AppColors().color),
        /// Elevated Button style
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 12,),
            textStyle: const TextStyle(
              fontSize: 16,
              letterSpacing: 0.5,
              fontWeight: FontWeight.w600,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          )
        ),
        inputDecorationTheme: const InputDecorationTheme(
          contentPadding: EdgeInsets.symmetric(horizontal: 16),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey)
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey)
          ),
          disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey)
          ),
        ),
        progressIndicatorTheme: const ProgressIndicatorThemeData(
          color: Color(0xFF07ADAE),
        ),
      ),
    );
  }
}
