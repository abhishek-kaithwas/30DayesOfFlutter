import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:velocity_x/velocity_x.dart';

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        "Catalog App"
            .text
            .xl5
            .bold
            .color(Theme.of(context).colorScheme.primary)
            .make(),
        "Trending Products"
            .text
            .xl2
            .color(Theme.of(context).colorScheme.primaryVariant)
            .make(),
      ],
    );
  }
}
