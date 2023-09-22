

import 'package:ecommerce_ostad/presentation/ui/widgets/product_card.dart';
import 'package:flutter/material.dart';



class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Category Name',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        elevation: 0,
        leading: BackButton(
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ), itemBuilder: (context, index){
          return const FittedBox(child: ProductCard());
        }),
      ),
    );
  }
}
