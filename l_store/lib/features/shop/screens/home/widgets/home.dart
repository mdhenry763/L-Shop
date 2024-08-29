import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:l_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:l_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:l_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:l_store/common/widgets/images/rounded_images.dart';
import 'package:l_store/common/widgets/text/section_heading.dart';
import 'package:l_store/features/shop/screens/home/widgets/home_categories.dart';
import 'package:l_store/features/shop/screens/home_appbar.dart';
import 'package:l_store/utils/constants/image_strings.dart';
import 'package:l_store/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  CarouselSlider(
                    options: CarouselOptions(
                      viewportFraction: 1,
                    ),
                    items: const [
                      TRoundedImage(
                        imageUrl: TImages.promoBanner1,
                      ),
                      TRoundedImage(
                        imageUrl: TImages.promoBanner2,
                      ),
                      TRoundedImage(
                        imageUrl: TImages.promoBanner3,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  Row(
                    children: [
                      for(int i = 0; i < 3; i++)
                      const TCircularContainer(
                        height: 20,
                        width: 20,
                        backgroundColor: Colors.green,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
