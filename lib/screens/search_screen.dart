import 'package:flutter/material.dart';
import 'package:food_app/utils/app_layout.dart';
import 'package:food_app/utils/app_styles.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          Gap(40),
          Text(
            'What are\nyou looking for?',
            style: Styles.headStyle1.copyWith(fontSize: 35),
          ),
          Gap(20),
          FittedBox(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color(0xFFF4F6FD),
              ),
              padding: const EdgeInsets.all(3.5),
              child: Row(
                children: [
                  Container(
                    width: size.width * .44,
                    padding: EdgeInsets.symmetric(vertical: 7),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.horizontal(left: Radius.circular(50)),
                      color: Colors.white,
                    ),
                    child: Center(child: Text('Airline Tickets')),
                  ),
                  Container(
                    width: size.width * .44,
                    padding: EdgeInsets.symmetric(vertical: 7),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.horizontal(right: Radius.circular(50)),
                      color: Colors.transparent,
                    ),
                    child: Center(child: Text('Hotels')),
                  ),
                ],
              ),
            ),
          ),
          Gap(25),
        ],
      ),
    );
  }
}
