/// Facade is a structural design pattern that provides a simplified interface
/// to a library, a framework, or any other complex set of classes.
class PaymentService {
  void billing() {}
}

class DeliveryService {
  void ship() {}
}

class OrderManager {
  void createOrder() {}
}

abstract class OnlineSellFacade {
  void placeOrder();
}

class OnlineSellFacadeImpl implements OnlineSellFacade {
  final PaymentService paymentService;
  final DeliveryService deliveryService;
  final OrderManager orderManager;

  const OnlineSellFacadeImpl(
      this.orderManager, this.deliveryService, this.paymentService);

  @override
  void placeOrder() {
    orderManager.createOrder();
    paymentService.billing();
    deliveryService.ship();
  }
}

void main() {
  final orderManager = OrderManager();
  final deliveryService = DeliveryService();
  final paymentService = PaymentService();
  OnlineSellFacade onlineSellFacade =
      OnlineSellFacadeImpl(orderManager, deliveryService, paymentService);
  onlineSellFacade.placeOrder();
}
