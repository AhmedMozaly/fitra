import 'package:flutter/material.dart';
import 'package:order_delivery/data_layer/constants/app_colors.dart';
import 'package:order_delivery/managers/theme_manager.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({
    super.key,
    required this.children,
    this.title,
  });

  final String? title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 16),
      child: Column(
        children: [
          if (title != null)
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                title!,
                style: ThemeManager.medium(size: 16, color: AppColors.black),
              ),
            ),
          const SizedBox(height: 10),
          ...children,
        ],
      ),
    );
  }
}
