/// Prototype is a creational design pattern that lets you copy existing
/// objects without making your code dependent on their classes.
abstract class Cloneable {
  Cloneable clone();
}

class Shape implements Cloneable {
  late final String color;

  Shape(this.color);

  Shape.from(Shape shape) {
    this.color = shape.color;
  }

  @override
  Cloneable clone() {
    return Shape.from(this);
  }
}

class Rectangle extends Shape {
  late final int width;
  late final int height;

  Rectangle(this.width, this.height, String color) : super(color);

  Rectangle.from(Rectangle rectangle) : super.from(rectangle) {
    this.height = rectangle.height;
    this.width = rectangle.width;
  }

  @override
  Cloneable clone() {
    return Rectangle.from(this);
  }
}

void main() {
  final List<Cloneable> cloneAbles = [
    Shape("Red"),
    Rectangle(12, 15, "Blue"),
  ];
  final res = cloneAbles[1].clone();
  print(res);
}
