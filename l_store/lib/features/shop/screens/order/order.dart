import 'package:flutter/material.dart';
import 'package:l_store/common/widgets/appbar/appbar.dart';
import 'package:l_store/features/shop/screens/order/widgets/order_list_items.dart';
import 'package:l_store/utils/constants/sizes.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          'My Orders',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        showBackArrow: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),

        //Orders
        child: TOrderListItems(),

      ),
    );
  }
}
