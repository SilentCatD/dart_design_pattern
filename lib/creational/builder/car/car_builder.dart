import '../car_family_builder.dart';
import 'car.dart';

class CarBuilder implements CarFamilyBuilder {
  Car _car = Car();

  @override
  CarBuilder reset() {
    _car = Car();
    return this;
  }

  @override
  CarBuilder setEngine(EngineType engineType) {
    _car.engineType = engineType;
    return this;
  }

  @override
  CarBuilder setGPS(bool willSet) {
    _car.gps = willSet;
    return this;
  }

  @override
  CarBuilder setSeats(int seats) {
    _car.seats = seats;
    return this;
  }

  @override
  CarFamilyBuilder setTripComputer(bool willSet) {
    _car.tripComputer = willSet;
    return this;
  }

  Car build() {
    final resultCar = _car;
    reset();
    return resultCar;
  }
}
