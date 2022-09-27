/// Singleton is a creational design pattern that lets you ensure that a class
/// has only one instance, while providing a global access point to this
/// instance.
class Singleton {
  static Singleton? _instance;

  Singleton._();

  factory Singleton() {
    _instance ??= Singleton._();
    return _instance!;
  }
}

void main() {
  final s1 = Singleton();
  final s2 = Singleton();
  assert(s1 == s2);
}
