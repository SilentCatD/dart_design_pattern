/// Composite is a structural design pattern that lets you compose objects into
/// tree structures and then work with these structures as if they were
/// individual objects.
abstract class GettablePrice {
  double get price;
}

class Product implements GettablePrice {
  final double _price;

  const Product(double price) : _price = price;

  @override
  double get price => _price;
}

class Box implements GettablePrice {
  final List<GettablePrice> contents;

  const Box(this.contents);

  @override
  double get price {
    var sum = 0.0;
    for (var content in contents) {
      sum += content.price;
    }
    return sum;
  }
}

void main() {
  final List<Product> productBatch1 = [];
  final List<Product> productBatch2 = [];
  final List<Product> productBatch3 = [];
  final List<Product> productBatch4 = [];


  for (var i = 0; i < 10; i++) {
    productBatch1.add(Product((i + 1).toDouble()));
    productBatch2.add(Product((i * 2 + 1).toDouble()));
    productBatch3.add(Product((i * 3 + 1).toDouble()));
    productBatch4.add(Product((i * 4 + 1).toDouble()));
  }

  final box1 = Box(productBatch2);
  final box2 = Box(productBatch3);
  final box3 = Box([...productBatch4, box2]);
  final box4 = Box([...productBatch1, box1, box3]);
  print(box4.price);
}
