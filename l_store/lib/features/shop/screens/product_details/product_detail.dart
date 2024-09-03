import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:l_store/common/widgets/text/section_heading.dart';
import 'package:l_store/features/shop/screens/product_details/widgets/bottom_add_to_cart.dart';
import 'package:l_store/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:l_store/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:l_store/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:l_store/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:l_store/utils/constants/sizes.dart';
import 'package:readmore/readmore.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Product Image Slider
            const TProductImageSlider(),
            //Product Details
            Padding(
              padding: const EdgeInsets.only(
                  right: TSizes.defaultSpace,
                  left: TSizes.defaultSpace,
                  bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  //Rating and share
                  const TRatingAndShare(),

                  //Price, Title, Stock,
                  const TProductMetaData(),

                  //Attributes
                  const TProductAttributes(),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  //Checkout Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Checkout'),
                    ),
                  ),

                  //Description
                  const SizedBox(height: TSizes.spaceBtwSections),
                  const TSectionHeading(
                      title: 'Description', showActionsButton: false),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  const ReadMoreText(
                    'This is a product description for Blue Nike Sleeveless vest. There are more things that can be added but I am keeping it brief.',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: ' Show more',
                    trimExpandedText: ' Less',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  //Reviews
                  const Divider(),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TSectionHeading(title: 'Reviews (199)', showActionsButton: false),
                      IconButton(icon: const Icon(Iconsax.arrow_right_3, size: 18), onPressed: () {}, )
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
