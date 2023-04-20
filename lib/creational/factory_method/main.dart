import 'base_logistic.dart';
import 'sea_logistic.dart';
import 'road_logistic.dart';

enum LocationType {
  sea,
  ground,
}

Storage createStorage(LocationType type) {
  switch (type) {
    case LocationType.sea:
      return SeaStorage();
    case LocationType.ground:
      return WareHouse();
  }
}

void main() {
  final locationType = LocationType.sea;
  final storage = createStorage(locationType);
  storage.deliver();
}
