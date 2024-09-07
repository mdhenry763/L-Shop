import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:l_store/common/widgets/appbar/appbar.dart';
import 'package:l_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:l_store/common/widgets/list_tile/settings_tile.dart';
import 'package:l_store/common/widgets/list_tile/user_profile.dart';
import 'package:l_store/common/widgets/text/section_heading.dart';
import 'package:l_store/features/personalization/screens/address/address.dart';
import 'package:l_store/features/personalization/screens/profile/profile.dart';
import 'package:l_store/features/shop/screens/order/order.dart';
import 'package:l_store/utils/constants/colors.dart';
import 'package:l_store/utils/constants/sizes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Header
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  TAppBar(
                    title: Text(
                      'Account',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: TColors.white),
                    ),
                  ),

                  //User Profile Image
                  TUserProfileTile(onPressed: () => Get.to(() => const ProfileScreen()),),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),
            //Body
             Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  //Account Settings
                  const TSectionHeading(
                    title: 'Account Settings',
                    showActionsButton: false,
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  TSettingsMenuTile(
                    icon: Iconsax.safe_home,
                    title: 'My addresses',
                    subTitle: 'Set shopping delivert address',
                    onTap: () => Get.to(() => const UserAddressScreen()),
                  ),
                  const TSettingsMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: 'My Cart',
                    subTitle: 'Add, remove products and move to checkout',
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.bag_tick,
                    title: 'My Orders',
                    subTitle: 'In-progress and Completed Orders',
                    onTap: () => Get.to(() => const OrderScreen()),
                  ),
                  const TSettingsMenuTile(
                    icon: Iconsax.bank,
                    title: 'Bank Account',
                    subTitle: 'Withdraw balance to registered bank account',
                  ),
                  const TSettingsMenuTile(
                    icon: Iconsax.discount_shape,
                    title: 'My Coupons',
                    subTitle: 'List of all the discounted coupons',
                  ),
                  const TSettingsMenuTile(
                    icon: Iconsax.notification,
                    title: 'Notification',
                    subTitle: 'Set any kind of notification message',
                  ),
                  const TSettingsMenuTile(
                    icon: Iconsax.security_card,
                    title: 'Account Privacy',
                    subTitle: 'Manage data usage and connected accounts',
                  ),

                  // App Settings Section
                  const SizedBox(height: TSizes.spaceBtwSections),
                  const TSectionHeading(
                    title: 'App Settings',
                    showActionsButton: false,
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  const TSettingsMenuTile(
                    icon: Iconsax.document_upload,
                    title: 'Load Data',
                    subTitle: 'Upload Data to your Cloud Firebase',
                  ),

                  //Switches
                  TSettingsMenuTile(
                    icon: Iconsax.location,
                    title: 'GeoLocation',
                    subTitle: 'Set recommendation based on location',
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.security_user,
                    title: 'Safe Mode',
                    subTitle: 'Search result is safe for all ages',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.image,
                    title: 'HD Image Quality',
                    subTitle: 'Set image quality to be seen',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),

                  const SizedBox(height: TSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: () {}, child: const Text('Logout')),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
