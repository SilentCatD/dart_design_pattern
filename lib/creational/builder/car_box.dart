import 'car_manual/car_manual.dart';
import 'car/car.dart';

class CarBox {
  final Car car;
  final CarManual carManual;

  const CarBox({
    required this.carManual,
    required this.car,
  });

  void ship() {
    print("shipping...");
  }
}
