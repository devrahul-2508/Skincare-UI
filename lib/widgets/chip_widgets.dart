import 'package:flutter/material.dart';
import 'package:skin_care_application/utlis/constants.dart';

class ChipWidgets extends StatefulWidget {
  const ChipWidgets({super.key});

  @override
  State<ChipWidgets> createState() => _ChipWidgetsState();
}

class _ChipWidgetsState extends State<ChipWidgets> {
  String selectedCategory = 'Normal Skin'; // Default category

  // Define your categories and their respective colors
  Map<String, Color> categoryColors = {
    'Normal Skin': const Color(0xffd7a5ae),
    'Combination': const Color(0xfffde3f0),
    'Oily Skin': const Color(0xffcb718d),
  };
  @override
  Widget build(BuildContext context) {
    return buildChipRow(['Normal Skin', 'Combination', 'Oily Skin']);
  }

  Widget buildChipRow(List<String> categories) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: categories.map((category) {
          bool isSelected = selectedCategory == category;
          Color chipColor = categoryColors[category] ?? Colors.grey;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedCategory = category;
                });
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                decoration: BoxDecoration(
                  color: isSelected
                      ? Constants.accentColour1.withOpacity(0.09)
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(40.0),
                  border: Border.all(
                    color: Constants.accentColour1,
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 20.0,
                      height: 20.0,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: chipColor),
                    ),
                    const SizedBox(width: 8.0),
                    Text(
                      category,
                      style: TextStyle(
                          color: isSelected
                              ? Constants.accentColour1
                              : Colors.grey,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
