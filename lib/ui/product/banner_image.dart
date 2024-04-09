import 'package:flutter/material.dart';
import 'package:lighting_store_app/ui/product/image_path_for_product.dart';

class BannerImage extends StatelessWidget {
  const BannerImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(ImagePathForProduct.bannerImagePath);
  }
}
