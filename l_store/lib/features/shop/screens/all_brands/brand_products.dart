import 'package:flutter/material.dart';
import 'package:l_store/common/brands/cards/brand_card.dart';
import 'package:l_store/common/widgets/appbar/appbar.dart';
import 'package:l_store/common/widgets/products/sortable/sortable_products.dart';
import 'package:l_store/utils/constants/sizes.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TAppBar(
        title: Text('Nike'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TBrandCard(showborder: true),
              SizedBox(height: TSizes.spaceBtwSections),

              TSortableProducts()
            ],
          ),
        ),
      ),
    );
  }
}

