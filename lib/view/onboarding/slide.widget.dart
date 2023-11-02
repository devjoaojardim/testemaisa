import 'package:flutter/material.dart';
import 'package:testemaisa/view/onboarding/slide.view.dart';
class OnboardingPageWidget extends StatelessWidget {
  final OnboardingPage page;

  OnboardingPageWidget(this.page);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Material(
          elevation: 5,
          shadowColor: Colors.black,// Define o nível de elevação
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100), // Define o raio dos cantos
          ),
          child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100), // Define o raio dos cantos
              ),child: Image.asset(page.imagePath)),
        ),
        SizedBox(height: 20.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Text(
                page.title,
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0),
              Text(
                page.description,
                style: TextStyle(fontSize: 16.0),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ],
    );
  }
}