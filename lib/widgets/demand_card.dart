import 'package:flutter/material.dart';

import '../constants.dart';

class DemandCard extends StatelessWidget {
  final String demandID;
  final String price;
  final String deliveryPosition;
  final String productsCount;
  const DemandCard(
      {Key? key,
      required this.demandID,
      required this.price,
      required this.deliveryPosition,
      required this.productsCount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
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
      padding: EdgeInsets.all(20.0),
      margin: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Color(0xffe9ebf8),
      ),
    );
  }
}
