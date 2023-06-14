import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import '../provider_onboarding/onboarding_indicator_provider.dart';

class IndicatorWidget extends StatelessWidget {
  const IndicatorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final onboardingIndicatorProvider = Provider.of<OnboardingIndicatorProvider>(context);
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 20,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: onboardingIndicatorProvider.buildPageIndicator(context),
          ),
        ],
      ),
    );
  }
}
