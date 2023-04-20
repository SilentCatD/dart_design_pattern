abstract class Transport {
  void deliver();
}

abstract class Storage {
  Transport createTransport();

  void deliver() {
    final transport = createTransport();
    return transport.deliver();
  }
}
