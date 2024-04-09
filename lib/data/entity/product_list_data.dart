import 'package:lighting_store_app/data/entity/product.dart';
import 'package:lighting_store_app/ui/product/image_path_for_product.dart';
import 'package:lighting_store_app/ui/product/language/language_item.dart';

class ProductListData {
  List<Product> productList() {
    var productList = <Product>[];
    var pl1 = Product(
        id: 1,
        product_name: LanguageItem.pendantLamp,
        product_image: ImagePathForProduct.imagePathName1,
        product_descriptions: LanguageItem.demoDescriptions,
        product_price: _ProductPrice().pendantLamp);
    var pl2 = Product(
        id: 2,
        product_name: LanguageItem.dreamLamp,
        product_image: ImagePathForProduct.imagePathName2,
        product_descriptions: LanguageItem.demoDescriptions,
        product_price: _ProductPrice().dreamLamp);
    var pl3 = Product(
        id: 3,
        product_name: LanguageItem.tableLamp,
        product_image: ImagePathForProduct.imagePathName3,
        product_descriptions: LanguageItem.demoDescriptions,
        product_price: _ProductPrice().tableLamp);
    var pl4 = Product(
        id: 4,
        product_name: LanguageItem.pendantLamp,
        product_image: ImagePathForProduct.imagePathName4,
        product_descriptions: LanguageItem.demoDescriptions,
        product_price: _ProductPrice().pendantLamp);
    var pl5 = Product(
        id: 5,
        product_name: LanguageItem.dreamLamp,
        product_image: ImagePathForProduct.imagePathName5,
        product_descriptions: LanguageItem.demoDescriptions,
        product_price: _ProductPrice().dreamLamp);
    var pl6 = Product(
        id: 6,
        product_name: LanguageItem.tableLamp,
        product_image: ImagePathForProduct.imagePathName6,
        product_descriptions: LanguageItem.demoDescriptions,
        product_price: _ProductPrice().tableLamp);
    var pl7 = Product(
        id: 7,
        product_name: LanguageItem.pendantLamp,
        product_image: ImagePathForProduct.imagePathName7,
        product_descriptions: LanguageItem.demoDescriptions,
        product_price: _ProductPrice().pendantLamp);
    var pl8 = Product(
        id: 8,
        product_name: LanguageItem.dreamLamp,
        product_image: ImagePathForProduct.imagePathName8,
        product_descriptions: LanguageItem.demoDescriptions,
        product_price: _ProductPrice().dreamLamp);
    var pl9 = Product(
        id: 9,
        product_name: LanguageItem.tableLamp,
        product_image: ImagePathForProduct.imagePathName9,
        product_descriptions: LanguageItem.demoDescriptions,
        product_price: _ProductPrice().tableLamp);
    var pl10 = Product(
        id: 10,
        product_name: LanguageItem.pendantLamp,
        product_image: ImagePathForProduct.imagePathName10,
        product_descriptions: LanguageItem.demoDescriptions,
        product_price: _ProductPrice().pendantLamp);
    var pl11 = Product(
        id: 11,
        product_name: LanguageItem.dreamLamp,
        product_image: ImagePathForProduct.imagePathName11,
        product_descriptions: LanguageItem.demoDescriptions,
        product_price: _ProductPrice().dreamLamp);
    var pl12 = Product(
        id: 12,
        product_name: LanguageItem.tableLamp,
        product_image: ImagePathForProduct.imagePathName12,
        product_descriptions: LanguageItem.demoDescriptions,
        product_price: _ProductPrice().tableLamp);

    productList.add(pl1);
    productList.add(pl2);
    productList.add(pl3);
    productList.add(pl4);
    productList.add(pl5);
    productList.add(pl6);
    productList.add(pl7);
    productList.add(pl8);
    productList.add(pl9);
    productList.add(pl10);
    productList.add(pl11);
    productList.add(pl12);
    return productList;
  }
}

class _ProductPrice {
  final double tableLamp = 159.90;
  final double pendantLamp = 179.99;
  final double dreamLamp = 145.99;
}
