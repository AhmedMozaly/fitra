import 'package:flutter/material.dart';
import 'package:order_delivery/data_layer/constants/app_colors.dart';
import 'package:order_delivery/managers/theme_manager.dart';
import 'package:order_delivery/presentation_layer/widgets/home/home_section.dart';
import 'package:order_delivery/presentation_layer/widgets/home/map_view.dart';
import 'package:order_delivery/presentation_layer/widgets/home/order_row.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Order",
          style: ThemeManager.bold(size: 20, color: AppColors.primary),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const HomeSection(
                title: "Your Order",
                children: [
                  OrderRow(title: "Order Name", data: "Order 1"),
                ],
              ),
              const HomeSection(
                title: "Location",
                children: [
                  MapView(),
                ],
              ),
              HomeSection(
                title: "Notes",
                children: [
                  Text(
                    "Officia dolor velit aute velit labore adipisicing in ut. aute velit labore adipisicing in ut",
                    textAlign: TextAlign.start,
                    style: ThemeManager.regular(size: 12, color: AppColors.fontDescription),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
