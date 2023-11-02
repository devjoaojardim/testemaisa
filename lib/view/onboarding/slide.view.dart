import 'package:flutter/material.dart';
import 'package:testemaisa/view/login/login.dart';
import 'package:testemaisa/view/onboarding/slide.widget.dart';
class OnboardingPage {
  final String title;
  final String description;
  final String imagePath;

  OnboardingPage({required this.title, required this.description, required this.imagePath});
}

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _pageController;
  int _pageIndex = 0;
  List<OnboardingPage> onboardingPages = [
    OnboardingPage(
      title: 'Bem-vindo ao MyApp',
      description: 'Explore todos os recursos incríveis do nosso aplicativo.',
      imagePath: 'image/tenis.png',
    ),
    OnboardingPage(
      title: 'Facilidade de uso',
      description: 'Nosso aplicativo é fácil de usar e intuitivo.',
      imagePath: 'image/tenis.png',
    ),
    OnboardingPage(
      title: 'Comece agora',
      description: 'Clique em "Começar" para começar a usar o aplicativo.',
      imagePath: 'image/tenis.png',
    ),
  ];
  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _pageController,
        itemCount: onboardingPages.length,
        itemBuilder: (context, index) {
          return OnboardingPageWidget(onboardingPages[index]);
        },
      ),
      bottomSheet: _buildBottomSheet(context),
    );
  }

  Widget _buildBottomSheet(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
            TextButton(
              onPressed: () {
                _pageController.nextPage(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.ease,
                );
              },
              child: Text('Próximo'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navegue para a tela principal do seu aplicativo após o onboarding.
                Navigator.push(
                    context, MaterialPageRoute(builder: (builder) => Login()));
              },
              child: Text('Começar'),
            ),
        ],
      ),
    );
  }
}
