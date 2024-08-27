import 'package:flutter/material.dart';
import 'package:l_store/common/widgets/login_signup/form_divider.dart';
import 'package:l_store/common/widgets/login_signup/social_buttons.dart';
import 'package:l_store/features/Authentication/screens/signup/widgets/signup_form.dart';
import 'package:l_store/utils/constants/sizes.dart';
import 'package:l_store/utils/constants/text_strings.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                //Title
                Text(TTexts.signupTitle,
                    style: Theme.of(context).textTheme.headlineMedium),
                const SizedBox(height: TSizes.spaceBtwSections),

                //Form
                const TCreateAccountForm(),

                const SizedBox(height: TSizes.spaceBtwSections,),
                //Divider
                const TFormDivider(dividerText: TTexts.orSignUpWith),
                const SizedBox(height: TSizes.spaceBtwSections,),
                //Social buttons
                const TSocialButtons()
              ],
            ),
          ),
        ));
  }
}


