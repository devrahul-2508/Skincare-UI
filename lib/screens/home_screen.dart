import 'package:flutter/material.dart';
import 'package:skin_care_application/utlis/constants.dart';
import 'package:skin_care_application/widgets/chip_widgets.dart';
import 'package:skin_care_application/widgets/horizontal_item_list.dart';
import 'package:skin_care_application/widgets/vertical_item_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Choose Your Skincare",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Hi Jelly",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                  ],
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Constants.accentColour1,
                      borderRadius: BorderRadius.circular(100)),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: width * 0.9,
            decoration: BoxDecoration(
                color: Constants.textFieldColour,
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: TextField(
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    suffixIcon: const Icon(Icons.search),
                    hintText: "Search Product kit or band",
                    hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 10 * height / 720,
                        fontWeight: FontWeight.w500),
                    border: InputBorder.none),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const ChipWidgets(),
          const SizedBox(
            height: 20,
          ),
          const HorizontalItemList(),
          const SizedBox(
            height: 10,
          ),
          const VerticalList()
        ],
      ),
    ));
  }
}
