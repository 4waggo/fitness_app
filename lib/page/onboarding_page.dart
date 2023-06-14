import 'package:fitness_app/page/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localstorage/localstorage.dart';
import 'package:provider/provider.dart';
import '../provider_onboarding/onboarding_indicator_provider.dart';
import '../widget/indicator_widget.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final PageController pageController = PageController(
    initialPage: 0,
  );

  void changePages() {
    pageController.nextPage(
      duration: const Duration(
        milliseconds: 250,
      ),
      curve: Curves.easeIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    final onboardingIndicatorProvider = Provider.of<OnboardingIndicatorProvider>(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (OverscrollIndicatorNotification overscroll) {
          overscroll.disallowIndicator();
          return false;
        },
        child: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: PageView(
                controller: onboardingIndicatorProvider.pageController,
                onPageChanged: (int page) =>
                    onboardingIndicatorProvider.changeAnimationPointOnIndicator(page),
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 40,
                        ),
                        Image.asset(
                          'assets/Onboarding-step-1-2.png',
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        const Center(
                          child: Text(
                            'Workout anywhere',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 6.0,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          child: Text(
                            'You can do your workout at home without any equipment, outside or at gym.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.2,
                        ),
                        Center(
                          child: Container(
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              color: Colors.orangeAccent,
                            ),
                            margin: const EdgeInsets.only(
                              right: 38,
                              left: 38,
                              top: 15,
                            ),
                            height: 50,
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                onTap: () => onboardingIndicatorProvider.changePages(),
                                child: const Center(
                                  child: Text(
                                    'Next',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 45,
                        ),
                        Image.asset(
                          'assets/Onboarding-step-2-2.png',
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        const Center(
                          child: Text(
                            'Learn techniques',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 6.0,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          child: Text(
                            'Our workout programs are made by professionals.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.2,
                        ),
                        Center(
                          child: Container(
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              color: Colors.orangeAccent,
                            ),
                            margin: const EdgeInsets.only(
                              right: 38,
                              left: 38,
                              top: 15,
                            ),
                            height: 50,
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                onTap: () => onboardingIndicatorProvider.changePages(),
                                child: const Center(
                                  child: Text(
                                    'Next',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 45,
                        ),
                        Image.asset(
                          'assets/Onboarding-step-3-2.png',
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        const Center(
                          child: Text(
                            'Support your body',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 6.0,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          child: Text(
                            'You will be able to study and develop yourself.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.2,
                        ),
                        Center(
                          child: Container(
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              color: Colors.orangeAccent,
                            ),
                            margin: const EdgeInsets.only(
                              right: 38,
                              left: 38,
                              top: 15,
                            ),
                            height: 50,
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                onTap: () async {
                                  final LocalStorage localStorage = LocalStorage('todo_app.json');
                                  await localStorage.setItem('token', 'old');
                                  print(localStorage.getItem('token'));
                                  Navigator.pushAndRemoveUntil(
                                    context,
                                    CupertinoPageRoute(
                                      builder: (context) => HomePage(),
                                    ),
                                        (route) => false,
                                  );
                                },
                                child: const Center(
                                  child: Text(
                                    'Start',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
                left: 0,
                right: 0,
                top: MediaQuery.of(context).size.height * 0.68,
                child: const IndicatorWidget(),
            ),
          ],
        ),
      ),
    );
  }
}