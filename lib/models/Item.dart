import 'SellerDetails.dart';

class Item{
  final String id;
  final String description;
  final int price;
  final Condition condition;
  final String image;
  final  SellerDetails sellerdetail;

  Item({required this.id, required this.description, required this.price, required this.condition, required this.image,
    required this.sellerdetail});
}

enum Condition{
  BEST, GOOD, OLD
}
