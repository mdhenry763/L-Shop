import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:l_store/common/widgets/appbar/appbar.dart';
import 'package:l_store/common/widgets/icons/circular_icon.dart';
import 'package:l_store/common/widgets/layouts/grid_layout.dart';
import 'package:l_store/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:l_store/features/shop/screens/home/home.dart';
import 'package:l_store/utils/constants/sizes.dart';
import 'package:l_store/utils/helpers/dummy_data.dart';

final List<String> images = DummyData().images;


class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title:
            Text('Wishlist', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          TCircularIcon(
            icon: Iconsax.add,
            onPressed: () => Get.to(const HomeScreen()),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TGridLayout(itemCount: 6, itemBuilder: (_, index) => TProductCardVertical(
                imageUrl: images[index],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
