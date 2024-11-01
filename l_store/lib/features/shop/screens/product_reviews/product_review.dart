import 'package:flutter/material.dart';
import 'package:l_store/common/widgets/appbar/appbar.dart';
import 'package:l_store/common/widgets/products/ratings/rating_bar_indicator.dart';

import 'package:l_store/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:l_store/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:l_store/utils/constants/sizes.dart';

class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  const TAppBar(title: Text('Reviews & Ratings'), showBackArrow: true),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(TSizes.defaultSpace),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Ratings and reviews are verified and are from people who use the same type of device that you use'),
            const SizedBox(height: TSizes.spaceBtwItems),

            const TOverallProductRating(),
            const TRatingBarIndicator(rating: 3.5),
            Text('12,611', style: Theme.of(context).textTheme.bodySmall),
            const SizedBox(height: TSizes.spaceBtwSections),

            //User Review List
            const UserReviewCard(),
            const UserReviewCard(),
            const UserReviewCard(),
            const UserReviewCard(),
          ],
        ),
      ),

    );
  }
}





