import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:tasks_list/services/demand.dart';

class ListOfDemands extends ChangeNotifier {
  List<Demand> _demands = [
    Demand(
        demandID: '000',
        price: '1200DA',
        deliveryPosition: 'Wahat',
        productsCount: '30',
        isDone: false),
    Demand(
        demandID: '000',
        price: '1200DA',
        deliveryPosition: 'Wahat',
        productsCount: '30',
        isDone: false),
    Demand(
        demandID: '000',
        price: '1200DA',
        deliveryPosition: 'Wahat',
        productsCount: '30',
        isDone: false),
    Demand(
        demandID: '000',
        price: '1200DA',
        deliveryPosition: 'Wahat',
        productsCount: '30',
        isDone: false),
  ];

  int get demandCount {
    return _demands.length;
  }

  UnmodifiableListView<Demand> get demands {
    return UnmodifiableListView(_demands);
  }

  void addDemand(
      {required String demandID,
      required String price,
      required String deliveryPosition,
      required String productsCount,
      required bool isDone}) {
    _demands.add(Demand(
        demandID: demandID,
        isDone: isDone,
        deliveryPosition: deliveryPosition,
        price: price,
        productsCount: productsCount));
    notifyListeners();
  }

  void deleteDemand(Demand demand) {
    _demands.remove(demand);
    notifyListeners();
  }

  void updateDemand(Demand demand) {
    demand.toggleDone();
    notifyListeners();
  }
}
