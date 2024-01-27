import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skin_care_application/screens/cart_screen.dart';
import 'package:skin_care_application/screens/home_screen.dart';
import 'package:skin_care_application/utlis/constants.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentPageIndex = 0;
  final pages = [
    const HomeScreen(),
    const CartScreen(),
    const CartScreen(),
    const CartScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[currentPageIndex],
        bottomNavigationBar: Container(
          decoration: BoxDecoration(color: Colors.black, boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.35),
              spreadRadius: 15,
              blurRadius: 15,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ]),
          child: BottomAppBar(
            elevation: 0,
            child: SizedBox(
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        currentPageIndex = 0;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: (currentPageIndex == 0)
                            ? Constants.accentColour1
                            : Colors.transparent,
                      ),
                      child: SvgPicture.asset("assets/icons/icon_home.svg",
                          height: 35,
                          colorFilter: ColorFilter.mode(
                              (currentPageIndex == 0)
                                  ? Colors.white
                                  : Colors.grey,
                              BlendMode.srcIn)),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        currentPageIndex = 1;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: (currentPageIndex == 1)
                            ? Constants.accentColour1
                            : Colors.transparent,
                      ),
                      child: SvgPicture.asset("assets/icons/icon_home.svg",
                          height: 35,
                          colorFilter: ColorFilter.mode(
                              (currentPageIndex == 1)
                                  ? Colors.white
                                  : Colors.grey,
                              BlendMode.srcIn)),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        currentPageIndex = 2;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: (currentPageIndex == 2)
                            ? Constants.accentColour1
                            : Colors.transparent,
                      ),
                      child: SvgPicture.asset("assets/icons/icon_home.svg",
                          height: 35,
                          colorFilter: ColorFilter.mode(
                              (currentPageIndex == 2)
                                  ? Colors.white
                                  : Colors.grey,
                              BlendMode.srcIn)),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        currentPageIndex = 3;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: (currentPageIndex == 3)
                            ? Constants.accentColour1
                            : Colors.transparent,
                      ),
                      child: SvgPicture.asset("assets/icons/icon_home.svg",
                          height: 35,
                          colorFilter: ColorFilter.mode(
                              (currentPageIndex == 3)
                                  ? Colors.white
                                  : Colors.grey,
                              BlendMode.srcIn)),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
