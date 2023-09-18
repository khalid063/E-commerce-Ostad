import 'package:flutter/material.dart';

import '../utility/color_palette.dart';

class CatagoryCard extends StatelessWidget {
  const CatagoryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColors.primaryColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(Icons.shop, size: 40, color: AppColors.primaryColor,),
          ),
          const SizedBox(height: 8,),
          const Text('Electronics', style: TextStyle(
            fontSize: 15,
            color: AppColors.primaryColor,
            letterSpacing: 0.4,
          ),),
        ],
      ),
    );
  }
}