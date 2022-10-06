/// Bridge is a structural design pattern that lets you split a large class or
/// a set of closely related classes into two separate hierarchies—abstraction
/// and implementation—which can be developed independently of each other.
abstract class Device {
  bool get enabled;

  int get volume;

  int get channel;

  void enable();

  void disable();

  void setVolume(int volume);

  void setChannel(int channel);
}

class RemoteControl {
  final Device device;

  const RemoteControl(this.device);

  void togglePower() {
    if (device.enabled) {
      device.disable();
    } else {
      device.enable();
    }
  }

  void volumeDown() {
    device.setVolume(device.volume - 10);
  }

  void volumeUp() {
    device.setVolume(device.volume + 10);
  }

  void channelUp() {
    device.setChannel(device.channel + 1);
  }

  void channelDown() {
    device.setChannel(device.channel - 1);
  }
}

class Tv implements Device {
  int _channel;
  int _volume;
  bool _power;

  Tv({int channel = 0, int volume = 0, bool power = false})
      : _channel = channel,
        _volume = volume,
        _power = power;

  @override
  void disable() {
    _power = false;
  }

  @override
  void enable() {
    _power = true;
  }

  @override
  bool get enabled => _power;

  @override
  void setChannel(int channel) {
    _channel = channel;
  }

  @override
  void setVolume(int volume) {
    _volume = volume;
  }

  @override
  int get channel => _channel;

  @override
  int get volume => _volume;
}

void main() {
  final tv = Tv();
  final remoteControl = RemoteControl(tv);
  remoteControl.togglePower();
  remoteControl.volumeDown();
}
