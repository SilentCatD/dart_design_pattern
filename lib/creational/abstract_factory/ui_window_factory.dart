import 'base_ui_render.dart';

class WindowButton implements Button {
  @override
  void render() {
    print("rendering button for window");
  }
}

class WindowTextField implements TextField {
  @override
  void render() {
    print("rendering text field for window");
  }
}

class WindowUIFactory implements UIPlatformFactory {
  @override
  Button createButton() {
    return WindowButton();
  }

  @override
  TextField createTextField() {
    return WindowTextField();
  }
}
