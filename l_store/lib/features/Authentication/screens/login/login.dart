import 'package:flutter/material.dart';
import 'package:l_store/common/styles/spacing_styles.dart';
import 'package:l_store/common/widgets/login_signup/form_divider.dart';
import 'package:l_store/common/widgets/login_signup/social_buttons.dart';
import 'package:l_store/features/Authentication/screens/login/widgets/login_signup/login_form.dart';
import 'package:l_store/features/Authentication/screens/login/widgets/login_signup/login_header.dart';
import 'package:l_store/utils/constants/sizes.dart';
import 'package:l_store/utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //Header
              TLoginHeader(),
              //Form
              TLoginForm(),
              //Divider
              TFormDivider(dividerText: TTexts.orSignInWith,),
              SizedBox(height: TSizes.spaceBtwItems,),
              //Footer
              TSocialButtons()

            ],
          ),
        ),
      ),
    );
  }
}








