import 'package:flutter/material.dart';
import 'package:order_delivery/data_layer/constants/app_colors.dart';
import 'package:order_delivery/data_layer/constants/app_images.dart';
import 'package:order_delivery/managers/navigation_manager.dart';
import 'package:order_delivery/managers/theme_manager.dart';
import 'package:order_delivery/presentation_layer/screens/home/home_screen.dart';
import 'package:order_delivery/presentation_layer/widgets/custom_image.dart';

class SignGoogleButton extends StatefulWidget {
  const SignGoogleButton({
    super.key,
  });

  @override
  State<SignGoogleButton> createState() => _SignGoogleButtonState();
}

class _SignGoogleButtonState extends State<SignGoogleButton> {
  void onPress() {
    NavigationManager.pushReplacement(context, const HomeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: AppColors.red,
          boxShadow: const [
            BoxShadow(
              blurRadius: 30,
              color: Colors.black26,
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImage(
              image: AppImages.google,
              width: 20,
              height: 20,
              color: AppColors.white,
            ),
            const SizedBox(width: 8),
            Text(
              "Sign in with GOOGLE",
              style: ThemeManager.medium(size: 18, color: AppColors.white),
            ),
          ],
        ),
      ),
    );
  }
}
