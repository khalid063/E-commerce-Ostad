import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_ostad/presentation/ui/utility/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../utility/color_palette.dart';
import '../widgets/circular_icon_button.dart';


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
              HomeSlider(),    /// Slider use

            ],
          ),
        ),
      ),
    );
  }
}


class CircularIconButton extends StatelessWidget {

  final IconData icon;
  final VoidCallback onTap;

  const CircularIconButton({super.key, required this.icon, required this.onTap,});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      borderRadius: BorderRadius.circular(30),
      child: CircleAvatar(
        radius: 16,
        backgroundColor: Colors.grey.shade200,
        child: Icon(icon, color: Colors.grey, size: 18,),
      ),
    );
  }
}


class HomeSlider extends StatefulWidget {
  const HomeSlider({super.key});

  @override
  State<HomeSlider> createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {

  ValueNotifier<int> _selectedSlider = ValueNotifier(0);   /// Slider under movable dot

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Simple slider code
        CarouselSlider(
          options: CarouselOptions(
            height: 180.0,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            onPageChanged: (int page, _){
              _selectedSlider.value = page;
            },
          ),
          items: [1,2,3,4,5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                        color: Colors.amber
                    ),
                    child: Text('text $i', style: TextStyle(fontSize: 16.0),)
                );
              },
            );
          }).toList(),
        ),
        const SizedBox(height: 16,),
        /// bottom movable dot code
        ValueListenableBuilder(valueListenable: _selectedSlider, builder: (context, value , _){
          List<Widget> list = [];
          for ( int i = 0; i < 5; i++){
            list.add(Container(
              width: 10,
              height: 10,
              margin: EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.red),
                  borderRadius: BorderRadius.circular(10),
                  color: value == i ? AppColors.primaryColor : null
              ),
            ));
          }
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: list,
          );
        })
      ],
    );
  }
}


