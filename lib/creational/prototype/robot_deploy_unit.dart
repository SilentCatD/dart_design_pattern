import 'robot.dart';

class RobotDeployUnit {
  final Map<String, Robot> _robotRegistry = {};

  void register(String type, Robot robot) {
    _robotRegistry[type] = robot;
  }

  Robot deploy(String type) {
    assert(_robotRegistry.containsKey(type));
    final newUnit = _robotRegistry[type]!.clone();
    return newUnit;
  }
}
