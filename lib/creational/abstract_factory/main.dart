import 'base_ui_render.dart';
import 'ui_ios_factory.dart';
import 'ui_window_factory.dart';

enum PlatformType {
  window,
  iOS,
}

UIPlatformFactory createUIPlatformFactory(PlatformType type) {
  switch (type) {
    case PlatformType.window:
      return WindowUIFactory();
    case PlatformType.iOS:
      return iOSUIFactory();
  }
}

PlatformType getPlatformType() {
  return PlatformType.window;
}

void renderUIComponent(UIComponent component) {
  return component.render();
}

void main() {
  final platformType = getPlatformType();
  final factory = createUIPlatformFactory(platformType);
  renderUIComponent(factory.createButton());
  renderUIComponent(factory.createTextField());
}
