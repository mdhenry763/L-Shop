import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:l_store/common/widgets/images_text_widgets/vertical_image_text.dart';
import 'package:l_store/features/shop/screens/sub_category/sub_categories.dart';
import 'package:l_store/utils/constants/image_strings.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //List of different icons
    final List<String> images = [
      TImages.sportIcon,
      TImages.cosmeticsIcon,
      TImages.shoeIcon,
      TImages.toyIcon,
      TImages.jeweleryIcon,
      TImages.furnitureIcon,
      TImages.animalIcon,
      TImages.electronicsIcon,
      TImages.clothIcon,
    ];

    final List<String> names = [
      'Sport',
      'Cosmetics',
      'Shoe',
      'Toys',
      'Jewelry',
      'Furniture',
      'Pets',
      'Electronics',
      'Clothing',
    ];

    return SizedBox(
      height: 80,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: images.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return TVerticalImageText(
              image: images[index],
              title: names[index],
              onTap: () => Get.to(() => const SubCategoriesScreen()),
            );
          }),
    );
  }
}
