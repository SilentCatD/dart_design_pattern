import 'base_ui_render.dart';

class iOSButton implements Button {
  @override
  void render() {
    print("rendering button for iOS");
  }
}

class iOSTextField implements TextField {
  @override
  void render() {
    print("rendering text field for iOS");
  }
}

class iOSUIFactory implements UIPlatformFactory {
  @override
  Button createButton() {
    return iOSButton();
  }

  @override
  TextField createTextField() {
    return iOSTextField();
  }
}
