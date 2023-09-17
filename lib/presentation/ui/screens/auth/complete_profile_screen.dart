import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../utility/color_palette.dart';
import '../../utility/image_assets.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({super.key});

  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 20,),
                Center(
                  child: SvgPicture.asset(
                    ImageAssets.craftyBayLogoSVG,
                    width: 100,
                  ),
                ),
                const SizedBox(height: 20,),
                const Text(
                  'Complete Profile',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 8,),
                const Text(
                  'Get started with us by share your details',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 16,),
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: 'First Name'
                  ),
                ),
                const SizedBox(height: 8,),
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: 'Last Name'
                  ),
                ),
                const SizedBox(height: 8,),
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: 'Mobile'
                  ),
                ),
                const SizedBox(height: 8,),
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: 'City'
                  ),
                ),
                const SizedBox(height: 8,),
                TextFormField(
                  maxLines: 6,
                  decoration: const InputDecoration(
                      hintText: 'Shipping Address',
                    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  ),
                ),
                const SizedBox(height: 16,),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Complete'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



