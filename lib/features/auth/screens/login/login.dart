import 'package:e_commerce_app/common/styles/spacing_styles.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../../../utils/constants/image_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
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
                  const SizedBox(
                    height: TSizes.sm,
                  ),
                  Text(
                    TTexts.loginTitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ],
              ),
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
                      const SizedBox(
                        height: TSizes.spaceBtwInputFields,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.password_check),
                          labelText: TTexts.password,
                          suffixIcon: Icon(Iconsax.eye_slash),
                        ),
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwInputFields / 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ///rememberMe
                          Row(
                            children: [
                              Checkbox(value: true, onChanged: (value) {}),
                              const Text(TTexts.rememberMe),
                            ],
                          ),

                          ///Forget Password

                          TextButton(
                              onPressed: () {},
                              child: const Text(TTexts.forgetPassword)),
                          const SizedBox(
                            height: TSizes.spaceBtwInputFields,
                          ),

                          SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: const Text(TTexts.signin),
                              )),

                          const SizedBox(
                            height: TSizes.spacebtwSections,
                          ),

                          SizedBox(
                              width: double.infinity,
                              child: OutlinedButton(
                                onPressed: () {},
                                child: const Text(TTexts.createAccount),
                              )),
                          const SizedBox(
                            height: TSizes.spacebtwSections,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Divider(
                    color: dark ? TColors.darkGray : TColors.gray,
                    thickness: 0.5,
                    indent: 60,
                    endIndent: 5,
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
