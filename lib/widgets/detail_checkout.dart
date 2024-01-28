import 'package:flutter/material.dart';
import 'package:skin_care_application/screens/cart_screen.dart';
import 'package:skin_care_application/utlis/constants.dart';

class DetailCheckout extends StatefulWidget {
  DetailCheckout({super.key});

  @override
  State<DetailCheckout> createState() => _DetailCheckoutState();
}

class _DetailCheckoutState extends State<DetailCheckout> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "\$10.33",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Constants.accentColour1)),
          child: Row(
            children: [
              const Icon(Icons.remove),
              const SizedBox(
                width: 30,
              ),
              Text(
                "$count",
                style: const TextStyle(color: Constants.accentColour1, fontSize: 18),
              ),
              const SizedBox(
                width: 30,
              ),
              const Icon(Icons.add)
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => const CartScreen()));
          },
          child: Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: Constants.accentColour3,
                borderRadius: BorderRadius.circular(20)),
            child: const Icon(
              Icons.shopping_cart,
              size: 25,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
