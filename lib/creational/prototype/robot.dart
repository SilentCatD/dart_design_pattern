abstract class Robot {
  final String type;

  const Robot({required this.type});

  Robot.fromSource({required Robot robot}) : type = robot.type;

  void performAction();

  Robot clone();
}
