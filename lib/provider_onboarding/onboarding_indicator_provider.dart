import 'package:flutter/material.dart';
import '../widget/indicator_logic_color_widget.dart';

class OnboardingIndicatorProvider extends ChangeNotifier {
  int _currentPage = 0;

  final PageController pageController = PageController(
    initialPage: 0,
  );

  List<Widget> buildPageIndicator(BuildContext context) {
    List<Widget> list = [];
    for (int i = 0; i < 3; i++) {
      list.add(
        i == _currentPage
            ? indicatorLogicColorWidget(true, context)
            : indicatorLogicColorWidget(false, context),
      );
    }
    return list;
  }

  void changeAnimationPointOnIndicator(int page) {
    _currentPage = page;
    notifyListeners();
  }

  void disposeIndicator() {
    _currentPage = 0;
    notifyListeners();
  }

  void changePages() {
    pageController.nextPage(
      duration: const Duration(
        milliseconds: 250,
      ),
      curve: Curves.easeIn,
    );
    notifyListeners();
  }
}