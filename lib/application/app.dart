import 'package:ecommerce_ostad/presentation/ui/screens/splash_screen.dart';
import 'package:ecommerce_ostad/presentation/ui/utility/color_palette.dart';
import 'package:flutter/material.dart';

class CraftBay extends StatelessWidget {
  const CraftBay({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      theme: ThemeData(
        //primaryColor: Color(0xFF07ADAE),
        //make Primary Swatch
        //primarySwatch: MaterialColor(0xFF07ADAE, ColorPalette().color),
        primarySwatch: MaterialColor(ColorPalette.primaryColor.value, ColorPalette().color),
        progressIndicatorTheme: ProgressIndicatorThemeData(
          color: Color(0xFF07ADAE),
        )
      ),
    );
  }
}
