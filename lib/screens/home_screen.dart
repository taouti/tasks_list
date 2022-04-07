import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasks_list/services/list_of_demands.dart';
import 'package:tasks_list/widgets/demands_list.dart';
import 'package:tasks_list/widgets/selection_status_box.dart';

import '../constants.dart';

class HomePage extends StatelessWidget {
  final double _selectionWidth = 200.0;
  final String _available = 'متوفر';
  final String _unavailable = 'غائب';
  final String _newDemands = '';
  final String _acceptedDemands = '';
  // TODO: get demands from firebase

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KMainColor,
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     showModalBottomSheet<dynamic>(
      //       enableDrag: true,
      //       isScrollControlled: true,
      //       backgroundColor: Color(0xFF747474),
      //       context: context,
      //       builder: (context) => AddTaskScreen(),
      //     );
      //   },
      //   backgroundColor: KMainColor,
      //   child: Icon(Icons.add),
      // ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
                top: 60.0, left: 30.0, right: 30.0, bottom: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // CircleAvatar(
                //   child: Icon(
                //     Icons.list,
                //     size: 30.0,
                //     color: KMainColor,
                //   ),
                //   radius: 30.0,
                //   backgroundColor: KTextColor,
                // ),
                Center(
                  child: SelectionStatusBox(
                    selectionBoxWidth: _selectionWidth,
                    choiceOne: _available,
                    choiceTwo: _unavailable,
                  ),
                ),

                SizedBox(height: 10.0),
                Text(
                  'MASROF LAGHOUAT',
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                      color: KTextColor),
                ),
                Text(
                  '${Provider.of<ListOfDemands>(context).demandCount} Demandss',
                  style: TextStyle(color: KTextColor, fontSize: 12.0),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0)),
                color: KTextColor,
              ),
              child: DemandsList(),
            ),
          ),
        ],
      ),
    );
  }
}
