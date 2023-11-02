import 'package:flutter/material.dart';
import 'package:testemaisa/view/onboarding/slide.view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Future<void> initializeData() async {
    Future.delayed(Duration(seconds: 4), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (builder) => OnboardingScreen()));
    });
  }

  @override
  void initState() {
    initializeData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.network(
              "https://logosmarcas.net/wp-content/uploads/2020/04/Nike-Logo.png",
              width: 250,
              height: 250,
            ),
          )
        ],
      )),
    );
  }
}
