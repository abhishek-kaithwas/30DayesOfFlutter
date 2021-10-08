class CatalogModel {
  static final items = [
    Item(
        id: 1,
        name: "iPhone 12 pro",
        desc: "Apple iPhone 12th generation",
        price: "999",
        color: "#33505a",
        image: "https://m.media-amazon.com/images/I/71MHTD3uL4L._SL1500_.jpg")
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final String price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}
