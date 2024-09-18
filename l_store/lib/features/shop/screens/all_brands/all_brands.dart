import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:l_store/common/brands/cards/brand_card.dart';
import 'package:l_store/common/widgets/appbar/appbar.dart';
import 'package:l_store/common/widgets/layouts/grid_layout.dart';
import 'package:l_store/common/widgets/text/section_heading.dart';
import 'package:l_store/features/shop/screens/all_brands/brand_products.dart';
import 'package:l_store/utils/constants/sizes.dart';
import 'package:l_store/utils/helpers/dummy_data.dart';

class AllBrands extends StatelessWidget {
  const AllBrands({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const TAppBar(
          title: Text('Brand'),
          showBackArrow: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                //Heading
                const TSectionHeading(
                  title: 'Brands',
                  showActionsButton: false,
                ),
                const SizedBox(height: TSizes.spaceBtwItems),

                //Brands
                TGridLayout(
                  itemCount: 6,
                  mainAxisExtent: 80,
                  itemBuilder: (context, index) => TBrandCard(
                    title: DummyData().brandNames[index],
                    imageUrl: DummyData().brands[index],
                    showborder: true,
                    onTap: () => Get.to(
                      () => const BrandProducts(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
