import 'dart:async';

import 'package:flutter/material.dart';
import 'package:order_delivery/data_layer/constants/app_colors.dart';
import 'package:order_delivery/managers/navigation_manager.dart';
import 'package:order_delivery/managers/theme_manager.dart';
import 'package:order_delivery/presentation_layer/screens/auth/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void _handleSplashActions() {
    Timer(const Duration(seconds: 3), () {
      NavigationManager.pushReplacement(context, const LoginScreen());
    });
  }

  @override
  void initState() {
    super.initState();
    _handleSplashActions();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            "Order Delivery",
            style: ThemeManager.bold(size: 20, color: AppColors.black),
          ),
        ),
      ),
    );
  }
}
