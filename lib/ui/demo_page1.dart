import 'package:flutter/material.dart';
import 'package:lighting_store_app/ui/core/project_color.dart';
import 'package:lighting_store_app/ui/core/project_padding.dart';
import 'package:lighting_store_app/ui/product/banner_image.dart';
import 'package:lighting_store_app/ui/product/language/language_item.dart';
import 'package:lighting_store_app/ui/product/list_view_card.dart';
import 'package:lighting_store_app/ui/product/listview_builder_product.dart';

class DemoPage1 extends StatefulWidget {
  const DemoPage1({super.key});

  @override
  State<DemoPage1> createState() => _DemoPage1State();
}

class _DemoPage1State extends State<DemoPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(padding: ProjectPadding.paddingAllOne, child: _SearchBarCard().cardSearchBar),
                      Card(
                          color: ProjectColor.purpleColor,
                          child: IconButton(onPressed: () {}, icon: const Icon(Icons.space_dashboard_rounded)))
                    ],
                  ),
                ],
              ),
              const _TextInfo(textOne: LanguageItem.newProduct, textTwo: LanguageItem.seeAll),
              const SizedBox(height: _DoubleNumber.heightSizedBozOne, child: ListViewBuilderProduct()),
              const BannerImage(),
              const _TextInfo(textOne: LanguageItem.populerLight, textTwo: LanguageItem.seeAll),
              const SizedBox(height: _DoubleNumber.heightSizedBozTwo, child: ListViewCard())
            ],
          ),
        ),
      ),
    );
  }
}

class _TextInfo extends StatelessWidget {
  const _TextInfo({
    super.key,
    required this.textOne,
    required this.textTwo,
  });
  final String textOne;
  final String textTwo;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: ProjectPadding.paddingAllStandart,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(textOne, style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w500)),
          TextButton(onPressed: () {}, child: Text(textTwo)),
        ],
      ),
    );
  }
}

RoundedRectangleBorder _cardShape() =>
    const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)));

class _InputDecarotor {
  final searchInput = const InputDecoration(
      border: InputBorder.none,
      fillColor: ProjectColor.purpleColor,
      hintText: 'Search',
      prefixIcon: Icon(Icons.search));
}

class _SearchBarCard {
  final cardSearchBar = Card(
    color: ProjectColor.purpleColor,
    shape: _cardShape(),
    child: SizedBox(
      width: _DoubleNumber.searchWidth,
      child: TextField(autofocus: false, decoration: _InputDecarotor().searchInput),
    ),
  );
}

class _DoubleNumber {
  static const searchWidth = 300.0;
  static const heightSizedBozOne = 180.0;
  static const heightSizedBozTwo = 165.0;
}
