import 'package:flutter/material.dart';
import 'package:skin_care_application/utlis/constants.dart';

class VerticalList extends StatelessWidget {
  const VerticalList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 5,
        itemBuilder: (context, index) {
          return const VerticalListItem();
        });
  }
}

class VerticalListItem extends StatelessWidget {
  const VerticalListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        decoration: BoxDecoration(
            color: Constants.accentColour2.withOpacity(0.5),
            borderRadius: BorderRadius.circular(10)),
        child: Image.asset(
          "assets/images/cream.png",
        ),
      ),
      title: const Text(
        "Scarlet Cream",
        style: TextStyle(color: Colors.black),
      ),
      subtitle: const Text("4 Products"),
      trailing: const Text(
        "\$21.93",
        style: TextStyle(color: Colors.black, fontSize: 16),
      ),
    );
  }
}
