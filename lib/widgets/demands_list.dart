import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasks_list/services/list_of_demands.dart';
import 'package:tasks_list/widgets/demand_tile.dart';

class DemandsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ListOfDemands>(
      builder: (context, listOfDemands, child) {
        return ListView.builder(
          itemCount: listOfDemands.demandCount,
          itemBuilder: (context, index) {
            final demand = listOfDemands.demands[index];
            return DemandTile(
              onLongPress: () {
                if (demand.isDone) {
                  listOfDemands.deleteDemand(demand);
                } else {
                  showDialog<String>(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('Delete Unchecked Task!'),
                      content: const Text(
                          'you are about to delete an unchecked task, do you want to delete it anyway?'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Cancel'),
                        ),
                        TextButton(
                          onPressed: () {
                            listOfDemands.deleteDemand(demand);
                            Navigator.pop(context);
                          },
                          child: const Text('Yes'),
                        ),
                      ],
                    ),
                  );
                }
              },
              demandID: demand.demandID,
              deliveryPosition: demand.deliveryPosition,
              price: demand.price,
              productsCount: demand.productsCount,
              onChanged: (bool? value) {
                listOfDemands.updateDemand(demand);
              },
            );
          },
        );
      },
    );
  }
}
