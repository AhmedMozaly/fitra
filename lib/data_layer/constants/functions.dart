import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:order_delivery/data_layer/constants/app_colors.dart';
import 'package:order_delivery/managers/theme_manager.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class Functions {
  Functions._();

  static List<SingleChildWidget> getProviders() {
    return [
      // ChangeNotifierProvider(create: (context) => PrayerTimesProvider()),
    ];
  }

  static void showModalBottomSheetFunction(BuildContext context, Widget child) {
    showModalBottomSheet<void>(
      context: context,
      useRootNavigator: true,
      builder: (BuildContext context) {
        return child;
      },
    );
  }
}
