import 'package:flight_card_ui/utils/colors.dart';
import 'package:flutter/material.dart';

class FlightScreen extends StatefulWidget {
  const FlightScreen({super.key});

  @override
  State<FlightScreen> createState() => _FlightScreenState();
}

class _FlightScreenState extends State<FlightScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController = TabController(length: 3, vsync: this);
  List tabs = ['Economy', 'Business', 'Analysis'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPicker.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: ColorPicker.lightColor,
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 20,
                        color: ColorPicker.primaryColor,
                      ),
                    ),
                    Text(
                      'Search Result',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: ColorPicker.primaryColor,
                      ),
                    ),
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: ColorPicker.lightColor,
                      child: Icon(
                        Icons.notifications_outlined,
                        size: 20,
                        color: ColorPicker.primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '251 Flight',
                              style: TextStyle(
                                  fontSize: 27,
                                  fontWeight: FontWeight.bold,
                                  color: ColorPicker.primaryColor),
                            ),
                            Text(
                              'Available',
                              style: TextStyle(
                                  fontSize: 27,
                                  fontWeight: FontWeight.bold,
                                  color: ColorPicker.primaryColor),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Image.asset(
                            'assets/map_img.png',
                            color: const Color.fromARGB(255, 1, 119, 26),
                            height: MediaQuery.of(context).size.height * 0.14,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
