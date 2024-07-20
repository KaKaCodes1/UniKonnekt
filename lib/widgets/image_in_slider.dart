import 'package:flutter/material.dart';

class ImageInSlider extends StatelessWidget {
  const ImageInSlider({
    super.key,
    this.border,
    this.padding,
    this.onPressed,
    this.width,
    this.height,
    this.applyImageRadius = true,
    this.fit = BoxFit.contain,
    this.backgroundColor = Colors.white10,
    this.isNetworkImage = false,
    required this.imageUrl,
    this.borderRadius = 10,
  });
  final double? width, height;
  final String? imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          border: border,
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: ClipRRect(
          borderRadius: applyImageRadius ? BorderRadius.circular(borderRadius) : BorderRadius.zero,
          child:  Image(fit: fit, image: isNetworkImage ? NetworkImage(imageUrl!) : AssetImage(imageUrl!) as ImageProvider ),
        ),
      ),
    );
  }
}