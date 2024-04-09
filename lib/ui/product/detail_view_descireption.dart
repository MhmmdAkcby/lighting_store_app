import 'package:flutter/material.dart';
import 'package:lighting_store_app/data/entity/product.dart';
import 'package:lighting_store_app/ui/core/project_color.dart';
import 'package:lighting_store_app/ui/core/project_padding.dart';
import 'package:lighting_store_app/ui/product/language/language_item.dart';

// ignore: must_be_immutable
class DetailViewDescription extends StatefulWidget {
  DetailViewDescription({super.key, required this.product});
  Product product;
  @override
  State<DetailViewDescription> createState() => _DetailViewDescriptionState();
}

class _DetailViewDescriptionState extends State<DetailViewDescription> {
  int _num = 1;

  void _iconAddOrRemove(bool isIncrement) {
    if (isIncrement) {
      _num++;
    } else {
      if (_num > 0) {
        _num--;
      }
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: ProjectPadding.paddingAllOne3,
          child: Row(
            children: [
              Column(
                children: [_ProductText(widget: widget), const _StockCheck()],
              ),
              const Spacer(),
              _cards(
                  context,
                  ProjectColor.barColor,
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.file_upload_outlined, color: ProjectColor.whiteColor)),
                  _radius(_Radius().radius)),
              _cards(
                  context,
                  ProjectColor.barColor,
                  IconButton(onPressed: () {}, icon: const Icon(Icons.turned_in_not, color: ProjectColor.whiteColor)),
                  _radius(_Radius().radius)),
            ],
          ),
        ),
        _descriptionHead(context),
        _description(),
        _priceInfo(context),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              child: Row(children: [
                IconButton(
                  onPressed: () {
                    _iconAddOrRemove(false);
                  },
                  icon: const Icon(Icons.remove),
                ),
                Text(_num.toString()),
                IconButton(
                    onPressed: () {
                      _iconAddOrRemove(true);
                    },
                    icon: const Icon(Icons.add)),
              ]),
            ),
            Padding(
              padding: ProjectPadding.paddingAllStandart,
              child: _buyButton(),
            ),
          ],
        )
      ],
    );
  }

  ElevatedButton _buyButton() {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          backgroundColor: ProjectColor.loginScreenButtonColor, shape: _radius(_Radius().radiusElevatedButton)),
      child: _buttonText(),
    );
  }

  Padding _buttonText() {
    return const Padding(
      padding: ProjectPadding.buttonPadding2,
      child: Text(
        LanguageItem.buyText,
        style: TextStyle(color: ProjectColor.whiteColor),
      ),
    );
  }

  Padding _priceInfo(BuildContext context) {
    return Padding(
      padding: ProjectPadding.paddingAllOne,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            '${widget.product.product_price} \$',
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(color: ProjectColor.textColorPurple, fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }

  //RoundedRectangleBorder _radius() => const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)));

  Padding _description() {
    return Padding(
      padding: ProjectPadding.paddingOnlyLeft,
      child: Text(
        widget.product.product_descriptions,
      ),
    );
  }

  Row _descriptionHead(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: ProjectPadding.paddingAllStandart,
          child: Text(
            LanguageItem.descritions,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w800),
          ),
        ),
      ],
    );
  }
}

class _StockCheck extends StatelessWidget {
  const _StockCheck({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        color: ProjectColor.barColor,
        child: Padding(
          padding: ProjectPadding.paddingAllStandart,
          child: Text(LanguageItem.avaliableInStock,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: ProjectColor.whiteColor)),
        ));
  }
}

Card _cards(BuildContext context, color, child, shape) {
  return Card(
    color: color,
    child: child,
    shape: shape,
  );
}

RoundedRectangleBorder _radius(double radius) => RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius));

class _ProductText extends StatelessWidget {
  const _ProductText({
    super.key,
    required this.widget,
  });

  final DetailViewDescription widget;

  @override
  Widget build(BuildContext context) {
    return Text(
      widget.product.product_name,
      style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w600),
    );
  }
}

class _Radius {
  final double radius = 50.0;
  final double radiusElevatedButton = 10;
}
