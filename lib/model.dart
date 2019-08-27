class Product {
  String name;
  String type;
  String imgUrl;
  String price;

  Product({this.imgUrl, this.name, this.price, this.type});
}

var products = [
  Product(
    imgUrl: "images/bike.png",
    name: "6MW K30",
    price: "999",
    type: "Bicycle",
  ),
];
