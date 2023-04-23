import 'robot.dart';

enum GunType {
  MachineGun,
  Sniper,
}

class BattleUnit extends Robot {
  final GunType gunType;
  final int _deployer;

  const BattleUnit({required super.type, required this.gunType})
      : _deployer = 1;

  BattleUnit.fromSource({required BattleUnit robot})
      : gunType = robot.gunType,
        _deployer = robot._deployer,
        super.fromSource(robot: robot);

  @override
  Robot clone() {
    return BattleUnit.fromSource(robot: this);
  }

  @override
  void performAction() {
    print("Attacking with gunType $gunType");
  }
}
