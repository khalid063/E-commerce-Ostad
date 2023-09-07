import 'package:ecommerce_ostad/presentation/ui/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class CraftBay extends StatelessWidget {
  const CraftBay({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      theme: ThemeData(
        primaryColor: Color(0xFF07ADAE),
        progressIndicatorTheme: ProgressIndicatorThemeData(
          color: Color(0xFF07ADAE),
        )
      ),
    );
  }
}
