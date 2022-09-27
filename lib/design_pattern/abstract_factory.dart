/// Abstract Factory is a creational design pattern that lets you produce
/// families of related objects without specifying their concrete classes.

abstract class Button {}

abstract class CheckBox {}

abstract class PlatformUIFactory {
  Button createButton();

  CheckBox createCheckBox();
}

class WindowButton extends Button {}

class WindowCheckBox extends CheckBox {}

class IosButton extends Button {}

class IosCheckBox extends CheckBox {}

class WindowUIFactory extends PlatformUIFactory {
  @override
  Button createButton() {
    return WindowButton();
  }

  @override
  CheckBox createCheckBox() {
    return WindowCheckBox();
  }
}

class IosUIFactory extends PlatformUIFactory {
  @override
  CheckBox createCheckBox() {
    return IosCheckBox();
  }

  @override
  Button createButton() {
    return IosButton();
  }
}

void main() {
  final PlatformUIFactory factory = WindowUIFactory();
  factory.createButton();
  factory.createCheckBox();
}
