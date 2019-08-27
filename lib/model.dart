class Product {
  String name;
  String type;
  String imgUrl;
  String price;
  String description;
  String power;
  String descPost;

  Product(
      {this.imgUrl,
      this.name,
      this.price,
      this.power,
      this.type,
      this.description,
      this.descPost});
}

var products = [
  Product(
    imgUrl: "bike.png",
    name: "6MW K30",
    price: "999",
    type: "Bicycle",
    description: "Amazing Speed.",
    power: "Incredible Power.",
    descPost: "The Top Fuel 9.9 XX1 AXS is built for Speed and Capability on Any Terrain!",
  ),
];
