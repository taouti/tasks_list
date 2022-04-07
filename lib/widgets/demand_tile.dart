import 'package:flutter/material.dart';

import '../constants.dart';

class DemandTile extends StatelessWidget {
  final String demandID;
  final String price;
  final String deliveryPosition;
  final String productsCount;
  final Function(bool? value) onChanged;
  final Function() onLongPress;
  DemandTile(
      {required this.onChanged,
      required this.onLongPress,
      required this.demandID,
      required this.price,
      required this.deliveryPosition,
      required this.productsCount});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPress,
      title: Text(demandID),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: Text(demandID + '  :رقم التوصيل', style: KCadrdTextStyle),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: Text(deliveryPosition + '  :مكان التوصيل',
                style: KCadrdTextStyle),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: Text(productsCount + '  :عدد السلع', style: KCadrdTextStyle),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: Text(price + '  :ثمن التوصيل', style: KCadrdTextStyle),
          ),
        ],
      ),
    );
  }
}
