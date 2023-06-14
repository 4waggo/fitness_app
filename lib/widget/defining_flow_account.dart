import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../page/home_page.dart';
import '../page/onboarding_page.dart';
import '../provider_onboarding/check_role_provider.dart';

class DefiningFlowAccount extends StatefulWidget {
  const DefiningFlowAccount({
    super.key,
  });

  @override
  State<DefiningFlowAccount> createState() => _DefiningFlowAccountState();
}

class _DefiningFlowAccountState extends State<DefiningFlowAccount> {
  @override
  Widget build(BuildContext context) {
    final defineRole = Provider.of<CheckRoleProvider>(context);

    return defineRole.tokenUser == 'new' ? const OnBoardingPage() : const HomePage();
  }
}