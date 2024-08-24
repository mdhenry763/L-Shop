import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:l_store/features/Authentication/screens/onboarding/onboarding.dart';
import 'package:l_store/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: LAppTheme.lightTheme,
      darkTheme: LAppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}