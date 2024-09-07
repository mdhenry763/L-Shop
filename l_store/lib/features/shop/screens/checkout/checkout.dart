import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:l_store/common/widgets/appbar/appbar.dart';
import 'package:l_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:l_store/common/widgets/login_signup/success/success_screen.dart';
import 'package:l_store/common/widgets/products/cart/coupon_widget.dart';
import 'package:l_store/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:l_store/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:l_store/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:l_store/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:l_store/navigation_menu.dart';
import 'package:l_store/utils/constants/colors.dart';
import 'package:l_store/utils/constants/image_strings.dart';
import 'package:l_store/utils/constants/sizes.dart';
import 'package:l_store/utils/helpers/helper_functions.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: TAppBar(
          title: Text('Order Review',
              style: Theme.of(context).textTheme.headlineSmall),
          showBackArrow: true),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            const TCartItems(showAddRemoveButtons: false),
            const SizedBox(height: TSizes.spaceBtwSections),

            //Coupon TextField
            const TCouponCode(),
            const SizedBox(height: TSizes.spaceBtwSections),

            TRoundedContainer(
              showBorder: true,
              backgroundColor: isDark ? TColors.black : TColors.white,
              padding: const EdgeInsets.all(TSizes.md),
              child: const Column(
                children: [
                  //Pricing
                  TBillingAmountSection(),
                  SizedBox(height: TSizes.spaceBtwItems),
                  //Divider
                  Divider(),
                  SizedBox(height: TSizes.spaceBtwItems),
                  //Payment Methods
                  TBillingPaymentSection(),
                  SizedBox(height: TSizes.spaceBtwItems),
                  //Address
                  TBillingAddressSection()
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () => Get.to(() => SuccessScreen(
                  image: TImages.successfulPaymentIcon,
                  title: 'Payment Success',
                  subTitle: 'Your item will be shipped soon',
                  onPressed: () => Get.offAll(() => const NavigationMenu()),
                )),
            child: const Text('Checkout \$256.0')),
      ),
    );
  }
}
