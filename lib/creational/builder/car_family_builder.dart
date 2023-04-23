enum EngineType {
  sport,
  normal,
}

abstract class CarFamilyBuilder {
  CarFamilyBuilder reset();

  CarFamilyBuilder setSeats(int seats);

  CarFamilyBuilder setEngine(EngineType engineType);

  CarFamilyBuilder setTripComputer(bool willSet);

  CarFamilyBuilder setGPS(bool willSet);
}
