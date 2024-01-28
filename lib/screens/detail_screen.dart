import 'package:flutter/material.dart';
import 'package:skin_care_application/utlis/constants.dart';
import 'package:skin_care_application/widgets/detail_checkout.dart';
import 'package:skin_care_application/widgets/direction_chip_widgets.dart';
import 'package:skin_care_application/widgets/quantity_chip_widgets.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
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
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "SCARLETT",
                        style: TextStyle(
                            fontSize: 16,
                            letterSpacing: 2.5,
                            color: Colors.grey),
                      ),
                      Text(
                        "view brand",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Constants.accentColour3,
                            fontSize: 10),
                      )
                    ],
                  )
                ],
              ),
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
                    SizedBox(
                      height: 5,
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
                  padding: const EdgeInsets.all(8),
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
            const SizedBox(
              height: 10,
            ),
            const DirectionChipWidgets(),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Illuminate your skin with our advanced skin whitening cream, crafted with potent ingredients to reduce dark spots and uneven tones.",
              style: TextStyle(height: 1.8, color: Colors.grey, fontSize: 14),
            ),
            const SizedBox(
              height: 15,
            ),
            const QuantityChipWidgets(),
            const SizedBox(
              height: 15,
            ),
            Align(alignment: Alignment.bottomCenter, child: DetailCheckout())
          ],
        ),
      )),
    );
  }
}
