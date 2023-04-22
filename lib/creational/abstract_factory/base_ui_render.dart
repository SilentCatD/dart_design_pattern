abstract class UIComponent {
  void render();
}

abstract class Button implements UIComponent {}

abstract class TextField implements UIComponent {}

abstract class UIPlatformFactory {
  Button createButton();

  TextField createTextField();
}
