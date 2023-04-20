import 'base_logistic.dart';

class Ship implements Transport {
  @override
  void deliver() {
    print("Delivering on sea by ship");
  }
}

class SeaStorage extends Storage {
  @override
  Transport createTransport() {
    return Ship();
  }
}
