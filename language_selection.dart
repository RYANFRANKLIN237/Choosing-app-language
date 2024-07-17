import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mansa/utils/constraints/colors.dart';
import 'package:mansa/utils/constraints/image_strings.dart';
import 'package:mansa/utils/constraints/text_strings.dart';

import '../../../../utils/constraints/sizes.dart';
import '../../../../utils/language/language_controller.dart';


class LanguageSelectionScreen extends StatelessWidget {
  const LanguageSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final LanguageController languageController = Get.put(LanguageController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Language'),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child:
           Column(
            children: [
              ListTile(
                  title: Row(
                    children: [
                      Image.asset(MImages.en, width: 24),
                      const SizedBox(width: MSizes.spaceBtwItems),
                       const Expanded(child: Text('English')),
                      Obx(() => Radio(
                          value: 'en',
                          groupValue: languageController.selectedLanguage.value,
                          onChanged: (value){
                            languageController.changeLanguage('en', 'US');
                          },
                          activeColor: MColors.primary,
                          ))
                    ],
                  ),),
              ListTile(
                title: Row(
                  children: [
                    Image.asset(MImages.fr, width: 24),
                    const SizedBox(width: MSizes.spaceBtwItems),
                    const Expanded(child: Text('French')),
                    Obx(() => Radio(
                        value: 'fr',
                        groupValue: languageController.selectedLanguage.value,
                        onChanged: (value){
                          languageController.changeLanguage('fr', 'FR');
                        },
                      activeColor: MColors.primary,
                    ))
                  ],
                ),),

            ],


          ),

        ),

        bottomNavigationBar:
        Padding(
          padding: const EdgeInsets.all(MSizes.defaultSpace),
            child: ElevatedButton(
              onPressed: (){
                Get.back();
              },
              child: Text(MTexts.done, style: const TextStyle(fontFamily: 'GeneralSans',fontSize: 14)),
            ),

        )
    );
  }
}
