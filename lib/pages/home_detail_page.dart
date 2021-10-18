import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_application_1/models/catlog.dart';

class HomeDetailPage extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final Item catalog;
  const HomeDetailPage({
    Key? key,
    // ignore: non_constant_identifier_names
    required this.catalog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl4.red800.make(),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.grey.shade700),
                  shape: MaterialStateProperty.all(const StadiumBorder())),
              child: "Add To Cart".text.make(),
            ).wh(120, 50)
          ],
        ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image),
            ).h32(context),
            Expanded(
              child: VxArc(
                height: 30.0,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                  color: context.cardColor,
                  width: context.screenWidth,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        catalog.name.text.xl4.bold
                            .color(Theme.of(context).colorScheme.primary)
                            .make(),
                        catalog.desc.text.xl
                            .color(Theme.of(context).colorScheme.primaryVariant)
                            .make(),
                        10.heightBox,
                        "Sit eos aliquyam lorem ipsum clita. Ipsum eirmod justo takimata diam ea takimata tempor nonumy rebum. Ipsum clita labore et takimata aliquyam diam diam dolore, et justo justo at stet dolores. Dolor voluptua ipsum accusam nonumy, stet eirmod erat gubergren magna tempor at sadipscing at, et gubergren sanctus dolores consetetur."
                            .text
                            .make()
                            .p16(),
                      ],
                    ).py64(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
