import 'package:flutter/material.dart';
import 'package:skin_care_application/utlis/constants.dart';

class CartList extends StatelessWidget {
  const CartList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return CartListitem();
          }),
    );
  }
}

class CartListitem extends StatelessWidget {
  const CartListitem({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      child: Container(
          width: width,
          child: Row(children: [
            Container(
              decoration: BoxDecoration(
                  color: Constants.accentColour2.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(10)),
              child: Image.asset(
                "assets/images/cream.png",
                height: 60,
                width: 60,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Scarley White",
                  style: TextStyle(
                      color: Colors.black,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Bright Serum",
                  style: TextStyle(
                      color: Colors.grey.shade500,
                      fontSize: 14,
                      letterSpacing: 0.5),
                ),
                SizedBox(
                  height: 5,
                ),
                const Text(
                  "\$10.3",
                  style: TextStyle(
                      color: Colors.black,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ],
            ),
            Expanded(
              child: SizedBox(),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Column(
                children: [
                  Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Constants.accentColour2,
                          borderRadius: BorderRadius.circular(10)),
                      child: Icon(
                        Icons.add,
                        size: 8,
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "4",
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Constants.accentColour2,
                          borderRadius: BorderRadius.circular(10)),
                      child: Icon(
                        Icons.remove,
                        size: 8,
                      )),
                ],
              ),
            )
          ])),
    );
  }
}
