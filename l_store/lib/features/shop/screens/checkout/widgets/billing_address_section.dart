import 'package:flutter/material.dart';
import 'package:l_store/common/widgets/text/section_heading.dart';
import 'package:l_store/utils/constants/sizes.dart';

class TBillingAddressSection extends StatelessWidget {
  const TBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TSectionHeading(title: 'Shipping Address', buttonTitle: 'Change', onPressed: () {}),
        Text('Lerato Cape Town', style: Theme.of(context).textTheme.bodyLarge),
        const SizedBox(height: TSizes.spaceBtwItems / 2),

        Row(
          children: [
            const Icon(Icons.phone, color: Colors.grey, size: 16),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text('+27-083-5649087' , style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),

        const SizedBox(height: TSizes.spaceBtwItems / 2),
        Row(
          children: [
            const Icon(Icons.location_history_sharp, color: Colors.grey, size: 16),
            const SizedBox(width: TSizes.spaceBtwItems),
            Expanded(child: Text('Cape Town, Western Cape, 8001, RSA' , style: Theme.of(context).textTheme.bodyMedium, softWrap: true,)),
          ],
        ),
      ]
    );
  }
}