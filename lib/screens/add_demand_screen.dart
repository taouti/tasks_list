import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants.dart';
import '../services/list_of_demands.dart';

class AddDemandScreen extends StatelessWidget {
  String newDemand = '';
  @override
  Widget build(BuildContext context) {
    double keyBoardHeight = MediaQuery.of(context).viewInsets.bottom;
    return Container(
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: KAddTaskScreenBackgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 40.0, fontWeight: FontWeight.w500, color: KMainColor),
          ),
          SizedBox(height: 10.0),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontSize: 20.0),
            onChanged: (value) {
              newDemand = value;
            },
          ),
          SizedBox(height: 15.0),
          MaterialButton(
            height: 50.0,
            color: KMainColor,
            onPressed: () {
              if (newDemand != '') {
                Provider.of<ListOfDemands>(context, listen: false).addDemand(
                    demandID: newDemand,
                    productsCount: '30',
                    price: '209DA',
                    deliveryPosition: '800',
                    isDone: false);
                Navigator.pop(context);
              } else {
                Navigator.pop(context);
              }
            },
            child: Text(
              'Add',
              style: TextStyle(fontSize: 18.0, color: Colors.white),
            ),
          ),
          SizedBox(height: keyBoardHeight),
        ],
      ),
    );
  }
}
