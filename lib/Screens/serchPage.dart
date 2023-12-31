import 'package:flutter/material.dart';
import 'package:hw1second_try/CustomWidget/AppBarWidget.dart';
import 'package:hw1second_try/CustomWidget/ButtonWidget.dart';
import 'package:hw1second_try/CustomWidget/CatagoryWidget.dart';
import 'package:hw1second_try/CustomWidget/EditorChoice.dart';
import 'package:hw1second_try/CustomWidget/FieldsWidget.dart';
import 'package:hw1second_try/CustomWidget/TextWidget.dart';
import 'WorkingOnIt.dart';
import 'package:hw1second_try/CustomWidget/PoupularRecipeis.dart';
import 'FilterPage.dart';



/* this file is the main page of the app, it is search page, it has appBar,
text field, filter button, choice cip, popular recipes section,
editor's choice section and nav bar at the bottom,
if you click on the filter button the filter page will apear from bottom,
I didn't add functionality for nav bar at bottom but other buttons works fine */
class SearchPage extends StatelessWidget {
  const SearchPage({super.key});
  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return const BottomSheetContent();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:
          const CustomAppBarWidget(page: 'Search'), // this is my custom appBar
      bottomNavigationBar: BottomNavigationBar(
        // this for nav bar at the bottom, add icons only without functinality
        fixedColor: Colors.black,
        unselectedItemColor: Colors.grey,
        currentIndex: 0,
        onTap: (int index) {
          if (index == 0) {
          } else if (index == 1) {}
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Expanded(
                  flex: 5,
                  child: CustomFieldsWidget(
                    // text field for search
                    label: 'Search',
                    customFontSize: 16,
                    customHintText: 'Search',
                    customPrefixIcon: Icon(Icons.search),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: CustomButtonsWidget(
                    // the filter page button, the on press function on top of this file
                    onPress: () {
                      _showBottomSheet(context);
                    },
                    isElevatedButton: false,
                    isSizedBoxButton: true,
                    sizedBoxButtonHeight: 60,
                    sizedBoxIcon: const Icon(
                      Icons.connect_without_contact_outlined,
                      size: 15,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            CustomCategoryWidget(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CustomTextWidget(
                    customText1: 'Popular Recipes'), // Popular Recipes section
                const SizedBox(width: 125),
                CustomButtonsWidget(
                  onPress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const WorkingOnIt(),
                      ),
                    );
                  },
                  isElevatedButton: false,
                  customText: 'View All',
                  customFontSize: 13,
                  fgColor: const Color(0xff6FB9BE),
                ),
              ],
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CustomPopularRecipesCardWidget(
                    mainMealName: 'Stake & vigitables',
                    mainImageAsset: 'assets/images/food_images/food1.jpg',
                  ),
                  CustomPopularRecipesCardWidget(
                    mainMealName: 'Special salad',
                    mainImageAsset: 'assets/images/food_images/food2.jpg',
                  ),
                  CustomPopularRecipesCardWidget(
                    mainMealName: 'مدري خبز والا لحم',
                    mainImageAsset: 'assets/images/food_images/food3.jpg',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CustomTextWidget(
                    customText1: "Editor's Choice"), // Editor's Choice section
                const SizedBox(width: 125),
                CustomButtonsWidget(
                  onPress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const WorkingOnIt(),
                      ),
                    );
                  },
                  isElevatedButton: false,
                  customText: 'View All',
                  customFontSize: 13,
                  fgColor: const Color(0xff6FB9BE),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CustomEditorChoiceWidget(
                      onPress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const WorkingOnIt(),
                          ),
                        );
                      },
                      mainMealName: 'bidza',
                      profileName: 'Mohammed Alsahli',
                      mainImageAsset: 'assets/images/food_images/food6.jpg',
                      profileImageAsset:
                          'assets/images/profile_images/person1.jpg',
                      containerWidth: MediaQuery.of(context).size.width,
                    ),
                    CustomEditorChoiceWidget(
                      onPress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const WorkingOnIt(),
                          ),
                        );
                      },
                      mainMealName: 'salad',
                      profileName: 'another person',
                      mainImageAsset: 'assets/images/food_images/food5.jpg',
                      profileImageAsset:
                          'assets/images/profile_images/person2.jpg',
                      containerWidth: MediaQuery.of(context).size.width,
                    ),
                    CustomEditorChoiceWidget(
                      onPress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const WorkingOnIt(),
                          ),
                        );
                      },
                      mainMealName: 'Pancake',
                      profileName: 'person3',
                      mainImageAsset: 'assets/images/food_images/food4.jpg',
                      profileImageAsset:
                          'assets/images/profile_images/person3.jpg',
                      containerWidth: MediaQuery.of(context).size.width,
                    ),
                    CustomEditorChoiceWidget(
                      onPress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const WorkingOnIt(),
                          ),
                        );
                      },
                      mainMealName: 'للحين ما ادري وش ذا',
                      profileName: 'محمد سعود السهلي',
                      mainImageAsset: 'assets/images/food_images/food3.jpg',
                      profileImageAsset:
                          'assets/images/profile_images/person6.jpg',
                      containerWidth: MediaQuery.of(context).size.width,
                    ),
                    CustomEditorChoiceWidget(
                      onPress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const WorkingOnIt(),
                          ),
                        );
                      },
                      mainMealName: 'Another Salad',
                      profileName: 'F',
                      mainImageAsset: 'assets/images/food_images/food9.jpg',
                      profileImageAsset:
                          'assets/images/profile_images/person5.jpg',
                      containerWidth: MediaQuery.of(context).size.width,
                    ),
                    CustomEditorChoiceWidget(
                      onPress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const WorkingOnIt(),
                          ),
                        );
                      },
                      mainMealName: 'كيكة',
                      profileName: 'Mohammed Alsahli',
                      mainImageAsset: 'assets/images/food_images/food7.jpg',
                      profileImageAsset:
                          'assets/images/profile_images/person4.jpg',
                      containerWidth: MediaQuery.of(context).size.width,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}