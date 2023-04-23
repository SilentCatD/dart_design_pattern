import 'car_family_director.dart';
import 'car/car_builder.dart';
import 'car_manual/car_manual_builder.dart';
import 'car_box.dart';

void main() {
  final director = CarFamilyDirector();
  final carBuilder = CarBuilder();
  final carManualBuilder = CarManualBuilder();

  director.buildSportCar(carBuilder);
  director.buildSportCar(carManualBuilder);

  final sportCar = carBuilder.build();
  final sportCarManual = carManualBuilder.build();
  print(sportCarManual.description);

  final carBox = CarBox(carManual: sportCarManual, car: sportCar);
  carBox.ship();
}
