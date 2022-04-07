class Demand {
  final String demandID;
  final String price;
  final String deliveryPosition;
  final String productsCount;
  final bool isDone;

  Demand(
      {required this.demandID,
      required this.price,
      required this.deliveryPosition,
      required this.productsCount,
      required this.isDone});

  void toggleDone() {
    !this.isDone;
  }
}
