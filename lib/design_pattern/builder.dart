/// Builder is a creational design pattern that lets you construct complex o
/// bjects step by step. The pattern allows you to produce different types and
/// representations of an object using the same construction code.

abstract class Wall {}

class WoodWall extends Wall {}

class StoneWall extends Wall {}

abstract class Door {}

class WoodDoor extends Door {}

class StoneDoor extends Door {}

abstract class Window {}

class StoneWindow extends Window {}

class WoodWindow extends Window {}

abstract class House {
  Wall? wall;
  Door? door;
  Window? window;
}

class WoodHouse extends House {}

class StoneHouse extends House {}

abstract class HouseBuilder {
  void setWall();

  void setDoor();

  void setWindow();

  void reset();

  House build();
}

class StoneHouseBuilder extends HouseBuilder {
  late StoneHouse _house;

  StoneHouseBuilder() {
    reset();
  }

  @override
  StoneHouse build() {
    final res = _house;
    reset();
    return res;
  }

  @override
  void setDoor() {
    _house.door = StoneDoor();
  }

  @override
  void setWall() {
    _house.wall = StoneWall();
  }

  @override
  void setWindow() {
    _house.window = StoneWindow();
  }

  @override
  void reset() {
    _house = StoneHouse();
  }
}

class WoodHouseBuilder extends HouseBuilder {
  late WoodHouse _house;

  WoodHouseBuilder() {
    _house = WoodHouse();
  }

  @override
  WoodHouse build() {
    final res = _house;
    reset();
    return res;
  }

  @override
  void setDoor() {
    _house.door = WoodDoor();
  }

  @override
  void setWall() {
    _house.wall = WoodWall();
  }

  @override
  void setWindow() {
    _house.window = WoodWindow();
  }

  @override
  void reset() {
    _house = WoodHouse();
  }
}

class Director {
  HouseBuilder builder;

  Director(this.builder);

  void setFullOptions() {
    builder.setDoor();
    builder.setWindow();
    builder.setWall();
  }
}

void main() {
  StoneHouseBuilder stoneHouseBuilder = StoneHouseBuilder();
  final director = Director(stoneHouseBuilder);
  director.setFullOptions();
  final result = stoneHouseBuilder.build();
}
