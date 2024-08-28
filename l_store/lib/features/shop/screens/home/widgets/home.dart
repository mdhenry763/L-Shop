import 'package:flutter/material.dart';
import 'package:l_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:l_store/features/shop/screens/home_appbar.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(children: [
                THomeAppBar(),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}



