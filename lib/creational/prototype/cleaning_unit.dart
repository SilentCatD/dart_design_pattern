import 'robot.dart';

enum CleaningTool {
  mop,
  waterSpray,
}

class CleaningUnit extends Robot {
  final CleaningTool cleaningTool;

  const CleaningUnit({
    required super.type,
    required this.cleaningTool,
  });

  CleaningUnit.fromSource({required CleaningUnit cleaningUnit})
      : cleaningTool = cleaningUnit.cleaningTool,
        super.fromSource(robot: cleaningUnit);

  @override
  Robot clone() {
    return CleaningUnit.fromSource(cleaningUnit: this);
  }

  @override
  void performAction() {
    print("Cleaning the surrounding with $cleaningTool");
  }
}
