import 'package:flutter/material.dart';
import 'package:l_store/common/widgets/chips/choice_chip.dart';
import 'package:l_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:l_store/common/widgets/text/product_price_text.dart';
import 'package:l_store/common/widgets/text/product_title.dart';
import 'package:l_store/common/widgets/text/section_heading.dart';
import 'package:l_store/utils/constants/colors.dart';
import 'package:l_store/utils/constants/sizes.dart';
import 'package:l_store/utils/helpers/helper_functions.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);

    return Column(
      children: [
        //Selected Attributes Pricing and Description
        TRoundedContainer(
          padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: isDark ? TColors.darkerGrey : TColors.grey,
          child: Column(
            children: [
              Row(
                children: [
                  const TSectionHeading(
                      title: 'Variation', showActionsButton: false),
                  const SizedBox(width: TSizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const TProductTitleText(
                              title: 'Price: ', smallSize: true),
                          const SizedBox(width: TSizes.spaceBtwItems),
                          //Actual price
                          Text(
                            '\$25',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(width: TSizes.spaceBtwItems / 2),
                          //Sale price
                          const TProductPriceText(price: '20'),
                        ],
                      ),
                      Row(
                        children: [
                          const TProductTitleText(
                              title: 'Stock: ', smallSize: true),
                          const SizedBox(width: TSizes.spaceBtwItems / 2),
                          Text('In Stock',
                              style: Theme.of(context).textTheme.titleMedium),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              //variation description
              const TProductTitleText(
                title:
                    'This is the description of the product and it can go upto max 4 lines.',
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),

        //Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: 'Colors', showActionsButton: false),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            Wrap(
              children: [
                
                TChoiceChip(text: 'Green', selected: true, onSelected: (value) {}),
                TChoiceChip(text: 'Blue', selected: false, onSelected: (value) {}),
                TChoiceChip(text: 'Red', selected: false, onSelected: (value) {}),
              ],
            ),
          ],
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: 'Sizes', showActionsButton: false),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                
                TChoiceChip(text: 'EU 34', selected: true, onSelected: (value) {}),
                TChoiceChip(text: 'Eu 36', selected: false, onSelected: (value) {}),
                TChoiceChip(text: 'EU 38', selected: false, onSelected: (value) {}),
              ],
            ),
          ],
        )
      ],
    );
  }
}
