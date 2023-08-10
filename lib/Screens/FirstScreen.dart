import 'package:flutter/material.dart';
import 'package:hw1second_try/CustomWidget/TextWidget.dart';
import 'package:hw1second_try/CustomWidget/ButtonWidget.dart';
import 'CreatAccount.dart';


class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff70B9BE),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'lib/Assets/images/image1.png',
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const CustomTextWidget(
                      isText2: true,
                      customText1: "Let's cooking",
                      customFontSize1: 20,
                      customText2:
                          "Cooking based on the food recipes you find and the food you love",
                      customFontSize2: 16,
                      isBold2: false,
                      customFontColor2: Colors.grey,
                      ifTextOverFlow: TextOverflow.clip,
                    ),
                 
                    CustomButtonsWidget(
                        onPress: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const CreateAccount(),
                            ),
                          );
                        },
                        customText: "Get Started",
                        elevatedButtonWidth: MediaQuery.of(context).size.width)
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
