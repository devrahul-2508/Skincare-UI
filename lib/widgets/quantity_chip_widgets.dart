import 'package:flutter/material.dart';
import 'package:skin_care_application/utlis/constants.dart';

class QuantityChipWidgets extends StatefulWidget {
  const QuantityChipWidgets({super.key});

  @override
  State<QuantityChipWidgets> createState() => _QuantityChipWidgetsState();
}

class _QuantityChipWidgetsState extends State<QuantityChipWidgets> {
  String selectedQuantity = "15 ml";

  List<String> quantities = ["15 ml", "20 ml", "25 ml"];

  @override
  Widget build(BuildContext context) {
    return buildChipRow(quantities, context);
  }

  Widget buildChipRow(List<String> quantities, BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: quantities.map((quantity) {
          bool isSelected = selectedQuantity == quantity;

          return GestureDetector(
            onTap: () {
              setState(() {
                selectedQuantity = quantity;
              });
            },
            child: Container(
              width: width * 0.28,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              decoration: BoxDecoration(
                  color: (isSelected)
                      ? Constants.accentColour1
                      : Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  quantity,
                  style: TextStyle(
                      fontSize: 18,
                      color: (isSelected) ? Colors.white : Colors.grey),
                ),
              ),
            ),
          );
        }).toList());
  }
}
