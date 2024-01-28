import 'package:flutter/material.dart';
import 'package:skin_care_application/utlis/constants.dart';
import 'package:skin_care_application/widgets/cart_list.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding:
                      EdgeInsets.only(left: 10, top: 8, bottom: 8, right: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Constants.accentColour1)),
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Constants.accentColour1,
                  ),
                ),
                Text(
                  "Cart",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Constants.accentColour1)),
                  child: Icon(
                    Icons.delete,
                    color: Constants.accentColour1,
                  ),
                ),
              ],
            ),
          ),
          CartList()
        ],
      )),
    );
  }
}
