/// Factory Method is a creational design pattern that provides an interface for
/// creating objects in a superclass, but allows subclasses to alter the type of
/// objects that will be created.

abstract class Transporter {
  void deliver();

  void returnBackToBase();
}

class Ship implements Transporter {
  @override
  void deliver() {
    print("Deliver by Sea");
  }

  @override
  void returnBackToBase() {
    print("Ship is back to the dock");
  }
}

class Truck implements Transporter {
  @override
  void deliver() {
    print("Deliver by Road");
  }

  @override
  void returnBackToBase() {
    print("Truck is back to warehouse");
  }
}

abstract class Logistic {
  Transporter createTransporter();

  void createAndDeliver() {
    final t = createTransporter();
    t.deliver();
    t.returnBackToBase();
  }
}

class SeaLogistic extends Logistic {
  @override
  Transporter createTransporter() {
    return Ship();
  }
}

class RoadLogistic extends Logistic {
  @override
  Transporter createTransporter() {
    return Truck();
  }
}

void main() {
  Logistic? logistic = SeaLogistic();
  Logistic? secondLogistic = RoadLogistic();
  logistic.createAndDeliver();
  secondLogistic.createAndDeliver();
}
