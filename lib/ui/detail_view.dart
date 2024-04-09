import 'package:flutter/material.dart';
import 'package:lighting_store_app/data/entity/product.dart';
import 'package:lighting_store_app/ui/core/project_color.dart';
import 'package:lighting_store_app/ui/product/detail_view_descireption.dart';

class DetailView extends StatefulWidget {
  Product product;
  DetailView({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Stack(
              //alignment: Alignment.center,
              children: [
                ClipRRect(borderRadius: _imageRadius(), child: _Images(context)),
                _Positioned(top: _DoubleValues().top70, left: _DoubleValues().riglef, child: const _IconsBack()),
                _Positioned(top: _DoubleValues().top70, right: _DoubleValues().riglef, child: const _IconsFavorite()),
              ],
            ),
            DetailViewDescription(product: widget.product),
          ],
        ),
      ),
    );
  }

  BorderRadius _imageRadius() =>
      const BorderRadius.only(bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50));

  Image _Images(BuildContext context) {
    return Image.asset(widget.product.product_image,
        width: MediaQuery.of(context).size.width, height: _DoubleValues().height500, fit: BoxFit.cover);
  }
}

class _IconsFavorite extends StatelessWidget {
  const _IconsFavorite({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border, color: ProjectColor.whiteColor));
  }
}

class _Positioned extends StatelessWidget {
  const _Positioned({super.key, this.top, this.left, this.right, this.bottom, this.child});
  final top;
  final left;
  final right;
  final bottom;
  final child;
  @override
  Widget build(BuildContext context) {
    return Positioned(top: top, bottom: bottom, left: left, right: right, child: child);
  }
}

class _IconsBack extends StatelessWidget {
  const _IconsBack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          backNavigate(context);
        },
        icon: const Icon(Icons.arrow_back_sharp, color: ProjectColor.whiteColor));
  }
}

void backNavigate(BuildContext context) {
  Navigator.of(context).pop();
}

class _DoubleValues {
  final double height500 = 500.0;
  final double top70 = 70.0;
  final double riglef = 15.0;
}
