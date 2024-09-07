import 'package:flutter/material.dart';
import 'package:l_store/common/widgets/products/cart/add_remove_button.dart';
import 'package:l_store/common/widgets/products/cart/card_item.dart';
import 'package:l_store/common/widgets/text/product_price_text.dart';
import 'package:l_store/utils/constants/sizes.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({super.key, this.showAddRemoveButtons = true});

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) => const SizedBox(
        height: TSizes.spaceBtwSections,
      ),
      itemCount: 2,
      itemBuilder: (_, index) => Column(
        children: [
          const TCartItem(),
          if (showAddRemoveButtons)
            const SizedBox(height: TSizes.spaceBtwItems),
          //Add remove button
          if (showAddRemoveButtons)
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(width: 70),
                    TProductQuantityWithAddRemoveButton(),
                  ],
                ),

                //Product total Price
                TProductPriceText(price: '256'),
              ],
            )
        ],
      ),
    );
  }
}
