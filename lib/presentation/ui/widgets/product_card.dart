import 'package:flutter/material.dart';
import '../utility/color_palette.dart';
import '../utility/image_assets.dart';


class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: AppColors.primaryColor.withOpacity(0.1),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: SizedBox(
        width: 130,
        child: Column(
          children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                  color: AppColors.primaryColor.withOpacity(0.1),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                  ),
                  image: DecorationImage(
                    image: AssetImage(
                      ImageAssets.shoeImgJpg,
                    ),
                  )
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    'Nike Shoe AD587453876555',
                    maxLines: 1,
                    style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.blueGrey,
                    ),
                  ),
                  SizedBox(height: 0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('\$90', style: TextStyle(
                          fontSize: 13,
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.w500
                      ),),
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Icon(Icons.star, size: 15, color: Colors.amber,),
                          Text('4.8'),
                        ],
                      ),
                      Card(
                        color: AppColors.primaryColor,
                        child: Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Icon(Icons.favorite, size: 12, color: Colors.white,),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}