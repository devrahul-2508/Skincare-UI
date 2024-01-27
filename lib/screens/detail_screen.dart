import 'package:flutter/material.dart';
import 'package:skin_care_application/utlis/constants.dart';
import 'package:skin_care_application/widgets/cart_checkout.dart';
import 'package:skin_care_application/widgets/direction_chip_widgets.dart';
import 'package:skin_care_application/widgets/quantity_chip_widgets.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          SizedBox(
            height: height * 0.1,
          ),
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Constants.accentColour1)),
            child: Icon(Icons.arrow_back_ios),
          ),
          Image.asset("assets/images/cream.png"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Scarlet Whitening",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Brightly Serum",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Constants.accentColour2.withOpacity(0.5)),
                child: const Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          DirectionChipWidgets(),
          SizedBox(
            height: 10,
          ),
          Text(
              "Illuminate your skin with our advanced skin whitening cream, crafted with potent ingredients to reduce dark spots and uneven tones. Experience a radiant complexion as the cream works to brighten and nourish, revealing your natural beauty. Say goodbye to dullness and hello to a luminous glow with our skin-whitening solution."),
          SizedBox(
            height: 10,
          ),
          QuantityChipWidgets(),
          SizedBox(
            height: 10,
          ),
          Align(alignment: Alignment.bottomCenter, child: DetailCheckout())
        ],
      ),
    ));
  }
}
