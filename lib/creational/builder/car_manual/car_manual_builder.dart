import 'car_manual.dart';
import '../car_family_builder.dart';

class CarManualBuilder implements CarFamilyBuilder {
  CarManual _manual = CarManual();

  @override
  CarManualBuilder reset() {
    _manual = CarManual();
    return this;
  }

  @override
  CarManualBuilder setEngine(EngineType engineType) {
    _manual.description += "Engine is: $engineType\n";
    return this;
  }

  @override
  CarManualBuilder setGPS(bool willSet) {
    _manual.description += "GPS is: $willSet\n";
    return this;
  }

  @override
  CarManualBuilder setSeats(int seats) {
    _manual.description += "Seats: $seats\n";
    return this;
  }

  @override
  CarManualBuilder setTripComputer(bool willSet) {
    _manual.description += "Trip Computer: $willSet\n";
    return this;
  }

  CarManual build() {
    final resultManual = _manual;
    reset();
    return resultManual;
  }
}
