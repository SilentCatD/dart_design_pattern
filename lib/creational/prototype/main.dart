import 'robot_deploy_unit.dart';
import 'battle_unit.dart';
import 'cleaning_unit.dart';

void main() {
  final registry = RobotDeployUnit();

  const String cleanTypeA = "cleanTypeA";
  registry.register(
    cleanTypeA,
    CleaningUnit(
      type: cleanTypeA,
      cleaningTool: CleaningTool.waterSpray,
    ),
  );
  const String cleanTypeB = "cleanTypeA";
  registry.register(
    cleanTypeB,
    CleaningUnit(
      type: cleanTypeB,
      cleaningTool: CleaningTool.mop,
    ),
  );

  const String battleTypeA = "battleTypeA";
  registry.register(
    battleTypeA,
    BattleUnit(type: battleTypeA, gunType: GunType.MachineGun),
  );

  final robot = registry.deploy(battleTypeA);
  robot.performAction();
}
