class CartModel {
  String nameStore;
  List<ProductCart> itemProduct;
  CartModel({
    required this.nameStore,
    required this.itemProduct,
  });
}

class ProductCart {
  ProductCart({
    required this.id,
    required this.image,
    
    required this.name,
    required this.price,
    this.size,
    this.color,
    required this.amount,
  });
  final int id;
  String image,  name;
  int price;
  String? size;
  String? color;
  int amount;
}
