import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:order_delivery/data_layer/constants/app_colors.dart';
import 'package:order_delivery/data_layer/constants/app_images.dart';
import 'custom_progress_indicator.dart';

class CustomImage extends StatelessWidget {
  final String? image;
  final double? height;
  final double? width;
  final bool addRadius;
  final double radius;
  final bool? withShadow;
  final bool? fromAssets;
  final BoxFit? boxFit;
  final double rotate;
  final Color? color;

  const CustomImage({
    Key? key,
    required this.image,
    this.withShadow = false,
    this.height = 40,
    this.width = 40,
    this.addRadius = false,
    this.fromAssets = true,
    this.radius = 0,
    this.boxFit,
    this.rotate = 0,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: rotate,
      child: Container(
        decoration: withShadow!
            ? const BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: AppColors.black,
                    blurRadius: 2,
                    spreadRadius: 0.2,
                  ),
                ],
              )
            : null,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(radius),
          child: !fromAssets! && image != ""
              ? CachedNetworkImage(
                  imageUrl: image!,
                  fit: boxFit ?? BoxFit.cover,
                  height: height,
                  width: width,
                  placeholder: (ctx, text) => const CustomProgressIndicator(),
                  errorWidget: (context, url, error) => Image.asset(
                    AppImages.error,
                    height: height,
                  ),
                )
              : Image(
                  image: image == '' ? AssetImage(AppImages.error) : AssetImage(image!),
                  fit: boxFit ?? BoxFit.fill,
                  height: height,
                  width: width,
                  color: color,
                ),
        ),
      ),
    );
  }
}
