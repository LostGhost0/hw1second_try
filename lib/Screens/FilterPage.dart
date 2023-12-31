import 'package:flutter/material.dart';
import 'package:hw1second_try/CustomWidget/ButtonWidget.dart';
import 'package:hw1second_try/CustomWidget/TextWidget.dart';
import 'package:hw1second_try/CustomWidget/RecipeiesType.dart';
import 'package:hw1second_try/CustomWidget/CatagoryWidget.dart';

/* this file for filter page, it has name of the page and sections but
I didn't add functionality to it yet */
class BottomSheetContent extends StatelessWidget {
  const BottomSheetContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          const CustomTextWidget(customText1: 'Filter'),
          const SizedBox(height: 10),
          const CustomTextWidget(customText1: 'Category'),
          CustomCategoryWidget(),
          const SizedBox(
            height: 10,
          ),
          const CustomTextWidget(customText1: 'Recipe Type'),
          CustomRecipeTypeWidget(),
          const SizedBox(
            height: 10,
          ),
          CustomButtonsWidget(
            customText: 'Apply Filter',
            isElevatedButton: true,
            onPress: () {},
            bgColor: Color(0xff70B9BE),
          ),
          CustomButtonsWidget(
            customText: 'Clear Filter',
            fgColor: Color(0xff70B9BE),
            isElevatedButton: false,
            onPress: () {},
            bgColor: Color(0xff70B9BE),
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}