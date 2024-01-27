import 'package:flutter/material.dart';
import 'package:skin_care_application/screens/detail_screen.dart';
import 'package:skin_care_application/utlis/constants.dart';

class HorizontalItemList extends StatelessWidget {
  const HorizontalItemList({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      height: height * 0.35,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: HorizontalItemWidget());
          }),
    );
  }
}

class HorizontalItemWidget extends StatelessWidget {
  const HorizontalItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => DetailScreen()));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        decoration: BoxDecoration(
            color: Constants.accentColour2.withOpacity(0.4),
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Image.asset(
              "assets/images/cream.png",
              height: 150,
              width: 150,
            ),
            const Text(
              "Scarlet Whitening",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
            const Text(
              "Brightly Serum",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
            const Text(
              "\$10.0",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
