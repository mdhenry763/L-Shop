import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:l_store/common/widgets/appbar/appbar.dart';
import 'package:l_store/common/widgets/custom_shapes/curved_widgets/curved_edges_widget.dart';
import 'package:l_store/common/widgets/icons/circular_icon.dart';
import 'package:l_store/common/widgets/images/rounded_images.dart';
import 'package:l_store/utils/constants/colors.dart';
import 'package:l_store/utils/constants/image_strings.dart';
import 'package:l_store/utils/constants/sizes.dart';
import 'package:l_store/utils/helpers/helper_functions.dart';

class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({
    super.key,
  });

  

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);

    return TCurvedEdgesWidget(
      child: Container(
        color: isDark ? TColors.darkerGrey : TColors.light,
        child: Stack(
          children: [
            const SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(TSizes.productImageRadius * 2),
                child: Center(
                    child: Image(
                        image: AssetImage(TImages.productImage1))),
              ),
            ),
    
            //Product Image Slider
            Positioned(
              right: 0,
              bottom: 30,
              left: TSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  separatorBuilder: (_, __) =>
                      const SizedBox(width: TSizes.spaceBtwItems),
                  itemCount: 6,
                  physics: const AlwaysScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (_, index) => TRoundedImage(
                    width: 80,
                    backgroundColor:
                        isDark ? TColors.dark : TColors.white,
                    border: Border.all(color: TColors.primary),
                    padding: const EdgeInsets.all(TSizes.sm),
                    imageUrl: TImages.productImage3,
                  ),
                ),
              ),
            ),
    
            //App bar Icons
            const TAppBar(
              showBackArrow: true,
              actions: [
                TCircularIcon(icon: Iconsax.heart5, color: Colors.red,)
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}