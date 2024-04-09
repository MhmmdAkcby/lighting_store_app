import 'package:flutter/material.dart';
import 'package:lighting_store_app/data/entity/product.dart';
import 'package:lighting_store_app/data/entity/product_list_data.dart';
import 'package:lighting_store_app/ui/core/navigator_manager.dart';
import 'package:lighting_store_app/ui/core/project_color.dart';
import 'package:lighting_store_app/ui/core/project_padding.dart';
import 'package:lighting_store_app/ui/detail_view.dart';

class ListViewBuilderProduct extends StatefulWidget {
  const ListViewBuilderProduct({super.key});

  @override
  State<ListViewBuilderProduct> createState() => _ListViewBuilderProductState();
}

class _ListViewBuilderProductState extends State<ListViewBuilderProduct> {
  Future<List<Product>> loadProduct() async {
    return ProductListData().productList();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Product>>(
      future: loadProduct(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          var productList = snapshot.data;
          return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: productList!.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              var product = productList[index];
              return Padding(
                padding: ProjectPadding.paddingAllStandart2,
                child: SizedBox(
                  child: _CardDesign(product: product),
                ),
              );
            },
          );
        } else {
          return const Center();
        }
      },
    );
  }
}

class _CardDesign extends StatelessWidget {
  const _CardDesign({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        NavigatorManager().navigateToWidget(
            context,
            DetailView(
              product: product,
            ));
      },
      child: Card(
        color: ProjectColor.purpleColor,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(_ProjectDoubleValue().radius),
              child: _ProductImage(product: product),
            ),
            Padding(
              padding: ProjectPadding.paddingAllStandart2,
              child: Text(product.product_name),
            ),
          ],
        ),
      ),
    );
  }
}

class _ProductImage extends StatelessWidget {
  const _ProductImage({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Image.asset(product.product_image,
        fit: BoxFit.fill, height: _ProjectDoubleValue().height, width: _ProjectDoubleValue().width);
  }
}

class _ProjectDoubleValue {
  final double height = 130.0;
  final double width = 150.0;
  final double radius = 10.0;
}
