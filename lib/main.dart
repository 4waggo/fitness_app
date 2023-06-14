import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:fitness_app/page/home_page.dart';
import 'package:fitness_app/page/onboarding_page.dart';
import 'package:fitness_app/page/splash_screen.dart';
import 'package:fitness_app/provider_onboarding/check_role_provider.dart';
import 'package:fitness_app/provider_onboarding/onboarding_indicator_provider.dart';
import 'package:fitness_app/widget/defining_flow_account.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const String title = 'Fitness App UI';

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<OnboardingIndicatorProvider>(
          create: (_) => OnboardingIndicatorProvider(),
        ),
        ChangeNotifierProvider<CheckRoleProvider>(
          create: (_) => CheckRoleProvider(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        home: AnimationManager(),
      ),
    );
  }
}

class AnimationManager extends StatefulWidget {
  const AnimationManager({Key? key}) : super(key: key);

  @override
  State<AnimationManager> createState() => _AnimationManagerState();
}

class _AnimationManagerState extends State<AnimationManager> {
  @override
  Widget build(BuildContext context) {
    final mainProvider = Provider.of<CheckRoleProvider>(context);
    mainProvider.defineRole();
    return AnimatedSplashScreen(
      splashTransition: SplashTransition.fadeTransition,
      splashIconSize: double.maxFinite,
      splash: const SplashScreen(),
      duration: 4000,
      nextScreen: const DefiningFlowAccount(),
    );
  }
}