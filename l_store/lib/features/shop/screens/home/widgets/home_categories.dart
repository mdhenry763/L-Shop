import 'package:flutter/material.dart';
import 'package:l_store/common/widgets/images_text_widgets/vertical_image_text.dart';
import 'package:l_store/utils/constants/image_strings.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return TVerticalImageText(image: TImages.sportIcon, title: 'Shoe', onTap: () {},);
          }),
    );
  }
}