class CatalogModel {
  static final items =[
    Item(
      id: "1",
      name: "Iphone 12",
      desc: "BEst PHeinw",
      price: 999,
      color: "#33505a",
      image: "https://m.media-amazon.com/images/I/71v2jVh6nIL._AC_UF1000,1000_QL80_.jpg",
    )
  ];
}

class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});
}
