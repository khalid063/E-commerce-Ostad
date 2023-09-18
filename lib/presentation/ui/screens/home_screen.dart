import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_ostad/presentation/ui/utility/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../utility/color_palette.dart';
import '../widgets/category_card.dart';
import '../widgets/circular_icon_button.dart';
import '../widgets/home/home_slider.dart';
import '../widgets/home/section_header.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            SvgPicture.asset(ImageAssets.craftyBayNavLogoSVG,),
            const Spacer(),
              CircularIconButton(
                icon: Icons.person,
                onTap: (){},
              ),
              const SizedBox(width: 8,),
              CircularIconButton(
                icon: Icons.call,
                onTap: (){},
              ),
            const SizedBox(width: 8,),
              CircularIconButton(
                icon: Icons.notifications_none,
                onTap: (){},
              ),
            ],
        )
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade200,
                  filled: true,
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search',
                  border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 16,),
              const HomeSlider(),    /// Slider use
              SectionHeader(
                title: 'Categories',
                onTap: (){},
              ),
              const SizedBox(height: 0,),
              SizedBox(
                height: 100,
                child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index){
                      return const CatagoryCard();
                }),
              ),
              const SizedBox(height: 16,),
              SectionHeader(
                title: 'Popular',
                onTap: (){},
              ),
            ],
          ),
        ),
      ),
    );
  }
}












