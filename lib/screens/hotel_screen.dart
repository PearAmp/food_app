import 'package:flutter/material.dart';
import 'package:food_app/utils/app_layout.dart';
import 'package:food_app/utils/app_styles.dart';
import 'package:gap/gap.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('hotel price is ${hotel['price']}');
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: 350,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 20,
            spreadRadius: 5,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Styles.primaryColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/${hotel['image']}'),
              ),
            ),
          ),
          Gap(20),
          Text(
            hotel['place'],
            style: Styles.headStyle2.copyWith(color: Styles.kakiColor),
          ),
          Gap(5),
          Text(
            hotel['destination'],
            style: Styles.headStyle4.copyWith(color: Colors.white),
          ),
          Gap(8),
          Text(
            '\$${hotel['price']}/night',
            style: Styles.headStyle1.copyWith(color: Styles.kakiColor),
          ),
        ],
      ),
    );
  }
}
