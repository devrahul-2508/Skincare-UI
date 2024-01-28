import 'package:flutter/material.dart';
import 'package:skin_care_application/utlis/constants.dart';

class CartCheckout extends StatelessWidget {
  const CartCheckout({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  "Amount Price",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade600,
                      fontSize: 16),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "55.08",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              decoration: BoxDecoration(
                  color: Constants.accentColour1,
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  const Text(
                    "Check out",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: const Text("4"),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
