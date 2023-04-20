import 'package:dart_design_pattern/creational/factory_method/base_logistic.dart';

class Truck implements Transport {
  @override
  void deliver() {
    print("Delivering on road by truck");
  }
}

class WareHouse extends Storage {
  @override
  Transport createTransport() {
    return Truck();
  }
}
