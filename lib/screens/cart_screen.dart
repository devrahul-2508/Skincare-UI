import 'package:flutter/material.dart';
import 'package:skin_care_application/utlis/constants.dart';
import 'package:skin_care_application/widgets/cart_checkout.dart';
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
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding:
                      const EdgeInsets.only(left: 10, top: 8, bottom: 8, right: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Constants.accentColour1)),
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: Constants.accentColour1,
                  ),
                ),
                const Text(
                  "Cart",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Constants.accentColour1)),
                  child: const Icon(
                    Icons.delete,
                    color: Constants.accentColour1,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 18),
            child: Row(
              children: [
                Icon(
                  Icons.shopping_cart,
                  size: 18,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Scarlet",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, letterSpacing: 0.5),
                ),
                Expanded(child: SizedBox()),
                Text(
                  "View Brand",
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
          const CartList(),
          const CartCheckout()
        ],
      )),
    );
  }
}
