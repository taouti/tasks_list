import 'package:flutter/material.dart';

import '../constants.dart';

class SelectionStatusBox extends StatefulWidget {
  final double _selectionWidth;
  final String _choiceOne;
  final String _choiceTwo;

  const SelectionStatusBox({
    Key? key,
    required double selectionBoxWidth,
    required String choiceOne,
    required String choiceTwo,
  })  : _selectionWidth = selectionBoxWidth,
        _choiceOne = choiceOne,
        _choiceTwo = choiceTwo,
        super(key: key);

  @override
  State<SelectionStatusBox> createState() => _SelectionStatusBoxState();
}

class _SelectionStatusBoxState extends State<SelectionStatusBox> {
  BoxDecoration _decorationChange1 = KFirstBoxDecoration;
  BoxDecoration _decorationChange2 = KSecondBoxDecoration;
  Color _color1 = Colors.green;
  Color _color2 = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40.0,
        width: widget._selectionWidth,
        decoration: BoxDecoration(
            color: KTextBoxSecondColor,
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _decorationChange2 = KFirstBoxDecoration;
                    _decorationChange1 = KSecondBoxDecoration;
                    _color2 = Colors.green;
                    _color1 = Colors.white;
                  });
                },
                child: Container(
                  decoration: _decorationChange2,
                  child: Center(
                    child: Text(
                      widget._choiceTwo,
                      style: TextStyle(
                          color: _color2,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _decorationChange1 = KFirstBoxDecoration;
                    _decorationChange2 = KSecondBoxDecoration;
                    _color1 = Colors.green;
                    _color2 = Colors.white;
                  });
                },
                child: Container(
                  decoration: _decorationChange1,
                  child: Center(
                    child: Text(
                      widget._choiceOne,
                      style: TextStyle(
                          color: _color1,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
