import 'package:flutter/material.dart';
import 'package:order_delivery/data_layer/constants/app_colors.dart';
import 'package:order_delivery/managers/theme_manager.dart';

class OrderRow extends StatelessWidget {
  const OrderRow({
    super.key,
    required this.title,
    required this.data,
  });

  final String title;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Text(
            '$title: ',
            style: ThemeManager.medium(size: 14, color: AppColors.black),
          ),
          Text(
            data,
            style: ThemeManager.regular(size: 14, color: AppColors.fontDescription),
          ),
        ],
      ),
    );
  }
}
