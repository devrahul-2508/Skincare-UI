import 'package:flutter/material.dart';
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
              const Icon(Icons.difference),
              const SizedBox(
                width: 30,
              ),
              Text(
                "$count",
                style: TextStyle(color: Constants.accentColour1),
              ),
              SizedBox(
                width: 30,
              ),
              Icon(Icons.add)
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Constants.accentColour1,
              borderRadius: BorderRadius.circular(20)),
          child: Icon(
            Icons.shop,
            size: 25,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
