import 'car_family_builder.dart';

class CarFamilyDirector {
  void buildSportCar(CarFamilyBuilder builder) {
    builder
      ..reset()
      ..setEngine(EngineType.sport)
      ..setGPS(true)
      ..setSeats(2)
      ..setTripComputer(true);
  }

  void buildSUVCar(CarFamilyBuilder builder) {
    builder
      ..reset()
      ..setEngine(EngineType.normal)
      ..setGPS(true)
      ..setSeats(7)
      ..setTripComputer(false);
  }
}
