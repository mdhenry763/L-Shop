import 'package:flutter/material.dart';
import 'package:l_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:l_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:l_store/common/widgets/layouts/grid_layout.dart';
import 'package:l_store/common/widgets/products/prodcut_cards/product_card_vertical.dart';
import 'package:l_store/common/widgets/text/section_heading.dart';
import 'package:l_store/features/shop/screens/home/widgets/home_categories.dart';
import 'package:l_store/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:l_store/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:l_store/utils/constants/image_strings.dart';
import 'package:l_store/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TPrimaryHeaderContainer(
              child: Column(
                children: [
                  //Appbar
                  THomeAppBar(),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  //SearchBar
                  TSearchContainer(
                    text: 'Search in store',
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  //Categories
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        //Heading
                        TSectionHeading(
                          title: 'Popular Categories',
                          showActionsButton: false,
                          textColor: Colors.white,
                        ),
                        SizedBox(
                          height: TSizes.spaceBtwSections,
                        ),

                        //Categories
                        THomeCategories()
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //Body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  // Promo Slider
                  const TPromoSlider(banners: [TImages.promoBanner1, TImages.promoBanner2, TImages.promoBanner3],),
                  const SizedBox(height: TSizes.spaceBtwSections,),
                  
                  //Heading
                  TSectionHeading(title: 'Popular Products', onPressed: () {}),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  // Popular products
                  TGridLayout(itemCount: 4, itemBuilder: (_, index) => const TProductCardVertical())
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


