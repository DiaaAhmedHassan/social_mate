import 'package:flutter/material.dart';
import 'package:social_mate/features/onboarding/presentation/widgets/onboarding_background.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnboardingBackground(child: Column()),
    );
  }
}