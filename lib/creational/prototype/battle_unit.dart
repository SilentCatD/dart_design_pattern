import 'robot.dart';

enum GunType {
  MachineGun,
  Sniper,
}

class BattleUnit extends Robot {
  final GunType gunType;

  const BattleUnit({required super.type, required this.gunType});

  BattleUnit.fromSource({required BattleUnit robot})
      : gunType = robot.gunType,
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
