import 'package:flutter/material.dart';
import 'package:order_delivery/data_layer/constants/app_colors.dart';
import 'package:order_delivery/managers/theme_manager.dart';
import 'package:order_delivery/presentation_layer/widgets/auth/sign_google_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Order Delivery",
              style: ThemeManager.bold(size: 28, color: AppColors.primary),
            ),
            Text(
              "Here you can manage your orders easily...",
              style: ThemeManager.regular(size: 14, color: AppColors.fontDescription),
            ),
            const SizedBox(height: 150),
            const SignGoogleButton(),
          ],
        ),
      ),
    );
  }
}
