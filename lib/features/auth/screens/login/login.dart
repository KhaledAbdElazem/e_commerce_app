// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:e_commerce_app/common/styles/spacing_styles.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../../../utils/constants/image_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Logo Title Sub-Title
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    image: AssetImage(
                        dark ? TImage.lightAppLogo : TImage.darkAppLogo),
                  ),
                  Text(
                    TTexts.loginTitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: TSizes.sm),
                  Text(
                    TTexts.loginsubtitle,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(height: TSizes.spacebtwSections),
                ],
              ),

              // Form
              Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: TSizes.spacebtwSections,
                  ),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.direct_right),
                          labelText: TTexts.email,
                        ),
                      ),
                      const SizedBox(height: TSizes.spaceBtwInputFields),
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.password_check),
                          labelText: TTexts.password,
                          suffixIcon: Icon(Iconsax.eye_slash),
                        ),
                      ),
                      const SizedBox(height: TSizes.spaceBtwInputFields / 2),
                      Row(
                        children: [
                          Checkbox(value: true, onChanged: (value) {}),
                          const Text(TTexts.rememberMe),
                          Expanded(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: TextButton(
                                onPressed: () {},
                                child: const Text(TTexts.forgetPassword),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: TSizes.spacebtwSections),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text(TTexts.signin),
                      ),
                      const SizedBox(height: TSizes.spacebtwSections),
                      OutlinedButton(
                        onPressed: () {},
                        child: const Text(TTexts.createAccount),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Divider(
                      color: dark ? TColors.darkGray : TColors.gray,
                      thickness: 0.5,
                      indent: 60,
                      endIndent: 5,
                    ),
                  ),
                  Text(
                    TTexts.orSignUpWith.capitalize!,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  Flexible(
                    child: Divider(
                      color: dark ? TColors.darkGray : TColors.gray,
                      thickness: 0.5,
                      indent: 5,
                      endIndent: 60,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: TSizes.spacebtwSections),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: TColors.gray),
                        borderRadius: BorderRadius.circular(100)),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Image(
                        width: TSizes.iconMd,
                        height: TSizes.iconMd,
                        image: AssetImage(TImage.google),
                      ),
                    ),
                  ),
                  const SizedBox(width: TSizes.spacebtwItems),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: TColors.gray),
                        borderRadius: BorderRadius.circular(100)),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Image(
                        width: TSizes.iconMd,
                        height: TSizes.iconMd,
                        image: AssetImage(TImage.facebook),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
