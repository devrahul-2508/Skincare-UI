import 'package:flutter/material.dart';
import 'package:skin_care_application/utlis/constants.dart';

class DirectionChipWidgets extends StatefulWidget {
  const DirectionChipWidgets({super.key});

  @override
  State<DirectionChipWidgets> createState() => _DirectionChipWidgetsState();
}

class _DirectionChipWidgetsState extends State<DirectionChipWidgets> {
  String selectedDirection = "How to use";

  List<String> directions = ["Description", "How to use", "Reviews"];

  @override
  Widget build(BuildContext context) {
    return buildChipRow(directions);
  }

  Widget buildChipRow(List<String> directions) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: directions.map((direction) {
          bool isSelected = selectedDirection == direction;

          return GestureDetector(
            onTap: () {
              setState(() {
                selectedDirection = direction;
              });
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                  color: (isSelected)
                      ? Constants.accentColour1
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(10)),
              child: Text(
                direction,
                style:
                    TextStyle(color: (isSelected) ? Colors.white : Colors.grey),
              ),
            ),
          );
        }).toList());
  }
}
