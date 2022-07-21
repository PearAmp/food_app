import 'package:flutter/material.dart';
import 'package:food_app/screens/ticket_view.dart';
import 'package:food_app/utils/app_info_list.dart';
import 'package:food_app/utils/app_layout.dart';
import 'package:food_app/utils/app_styles.dart';
import 'package:food_app/widgets/ticket.tabs.dart';
import 'package:gap/gap.dart';
import 'package:barcode_widget/barcode_widget.dart';
import '../widgets/thick_container.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            children: [
              Gap(40),
              Text(
                'Tickets',
                style: Styles.headStyle1,
              ),
              Gap(20),
              AddTicketTab(firstTab: 'Upcoming', secondTab: 'Previous'),
              Gap(20),
              Stack(
                children: [
                  Container(
                    width: 400,
                    margin: EdgeInsets.only(left: 12, right: 12),
                    height: 570,
                    padding: EdgeInsets.only(top: 20, right: 12, left: 12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'NYC',
                                style: Styles.headStyle4.copyWith(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                              Gap(10),
                              Text(
                                'New-York',
                                style: Styles.headStyle3.copyWith(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 11,
                                  padding: EdgeInsets.all(3.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        width: 2.5, color: Color(0xFF8ACCF7)),
                                  ),
                                ),
                                Container(
                                  width: 30,
                                  child: SizedBox(
                                    height: 24,
                                    child: LayoutBuilder(
                                      builder: (BuildContext context,
                                          BoxConstraints constraints) {
                                        return Flex(
                                          direction: Axis.horizontal,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          mainAxisSize: MainAxisSize.max,
                                          children: List.generate(
                                              (constraints.constrainWidth() / 6)
                                                  .floor(),
                                              (index) => const SizedBox(
                                                    width: 3,
                                                    height: 1,
                                                    child: DecoratedBox(
                                                        decoration: BoxDecoration(
                                                            color: Color(
                                                                0xFF8ACCF7))),
                                                  )),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Transform.rotate(
                                    angle: 1.5,
                                    child: const Icon(
                                      Icons.local_airport_rounded,
                                      color: Color(0xFF8ACCF7),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 30,
                                  child: SizedBox(
                                    height: 24,
                                    child: LayoutBuilder(
                                      builder: (BuildContext context,
                                          BoxConstraints constraints) {
                                        return Flex(
                                          direction: Axis.horizontal,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          mainAxisSize: MainAxisSize.max,
                                          children: List.generate(
                                              (constraints.constrainWidth() / 6)
                                                  .floor(),
                                              (index) => const SizedBox(
                                                    width: 3,
                                                    height: 1,
                                                    child: DecoratedBox(
                                                        decoration: BoxDecoration(
                                                            color: Color(
                                                                0xFF8ACCF7))),
                                                  )),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 11,
                                  padding: EdgeInsets.all(3.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        width: 2.5, color: Color(0xFF8ACCF7)),
                                  ),
                                ),
                              ],
                            ),
                            Gap(5),
                            Text(
                              '8H 30M',
                              style: Styles.headStyle4.copyWith(fontSize: 18),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'LDN',
                              style: Styles.headStyle4.copyWith(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                            Gap(10),
                            Text('London',
                                style: Styles.headStyle3.copyWith(
                                    fontSize: 16, fontWeight: FontWeight.w500))
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 85, left: 25),
                    child: Row(
                      children: [
                        Container(
                          width: 300,
                          child: SizedBox(
                            height: 24,
                            child: LayoutBuilder(
                              builder: (BuildContext context,
                                  BoxConstraints constraints) {
                                return Flex(
                                  direction: Axis.horizontal,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate(
                                      (constraints.constrainWidth() / 10)
                                          .floor(),
                                      (index) => const SizedBox(
                                            width: 3,
                                            height: 1.5,
                                            child: DecoratedBox(
                                              decoration: BoxDecoration(
                                                  color: Color(0xFFE0E0E0)),
                                            ),
                                          )),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 120, left: 25, right: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '1 May',
                              style: Styles.headStyle4.copyWith(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                            Gap(10),
                            Text(
                              'Date',
                              style: Styles.headStyle3.copyWith(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '08:00 AM',
                              style: Styles.headStyle4.copyWith(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                            Gap(10),
                            Text(
                              'Departure time',
                              style: Styles.headStyle3.copyWith(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '23',
                              style: Styles.headStyle4.copyWith(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                            Gap(10),
                            Text(
                              'Number',
                              style: Styles.headStyle3.copyWith(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 180, left: 15),
                    child: Row(
                      children: [
                        Container(
                          width: 320,
                          child: SizedBox(
                            height: 24,
                            child: LayoutBuilder(
                              builder: (BuildContext context,
                                  BoxConstraints constraints) {
                                return Flex(
                                  direction: Axis.horizontal,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate(
                                      (constraints.constrainWidth() / 3)
                                          .floor(),
                                      (index) => const SizedBox(
                                            width: 3,
                                            height: 1.5,
                                            child: DecoratedBox(
                                              decoration: BoxDecoration(
                                                  color: Color(0xFFEEEEEE)),
                                            ),
                                          )),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 210, left: 25, right: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Flutter Dash',
                              style: Styles.headStyle4.copyWith(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                            Gap(10),
                            Text(
                              'Passenger',
                              style: Styles.headStyle3.copyWith(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '5221 478566',
                              style: Styles.headStyle4.copyWith(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                            Gap(10),
                            Text(
                              'Passport',
                              style: Styles.headStyle3.copyWith(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 270, left: 25),
                    child: Row(
                      children: [
                        Container(
                          width: 300,
                          child: SizedBox(
                            height: 24,
                            child: LayoutBuilder(
                              builder: (BuildContext context,
                                  BoxConstraints constraints) {
                                return Flex(
                                  direction: Axis.horizontal,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate(
                                      (constraints.constrainWidth() / 10)
                                          .floor(),
                                      (index) => const SizedBox(
                                            width: 3,
                                            height: 1.5,
                                            child: DecoratedBox(
                                              decoration: BoxDecoration(
                                                  color: Color(0xFFE0E0E0)),
                                            ),
                                          )),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 300, left: 25, right: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '0055 444 77147',
                              style: Styles.headStyle4.copyWith(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                            Gap(10),
                            Text(
                              'Number of E-ticket',
                              style: Styles.headStyle3.copyWith(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'B2SG28',
                              style: Styles.headStyle4.copyWith(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                            Gap(10),
                            Text(
                              'Booking code',
                              style: Styles.headStyle3.copyWith(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 360, left: 25),
                    child: Row(
                      children: [
                        Container(
                          width: 300,
                          child: SizedBox(
                            height: 24,
                            child: LayoutBuilder(
                              builder: (BuildContext context,
                                  BoxConstraints constraints) {
                                return Flex(
                                  direction: Axis.horizontal,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate(
                                      (constraints.constrainWidth() / 10)
                                          .floor(),
                                      (index) => const SizedBox(
                                            width: 3,
                                            height: 1.5,
                                            child: DecoratedBox(
                                              decoration: BoxDecoration(
                                                  color: Color(0xFFE0E0E0)),
                                            ),
                                          )),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 390, left: 25, right: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/visa.png',
                                  scale: 11,
                                ),
                                Text(
                                  '***2462',
                                  style: Styles.headStyle4.copyWith(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            Gap(10),
                            Text(
                              'Payment method',
                              style: Styles.headStyle3.copyWith(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '\$249.99',
                              style: Styles.headStyle1.copyWith(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                            Gap(10),
                            Text(
                              'Price',
                              style: Styles.headStyle3.copyWith(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 450, left: 15),
                    child: Row(
                      children: [
                        Container(
                          width: 320,
                          child: SizedBox(
                            height: 24,
                            child: LayoutBuilder(
                              builder: (BuildContext context,
                                  BoxConstraints constraints) {
                                return Flex(
                                  direction: Axis.horizontal,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate(
                                      (constraints.constrainWidth() / 3)
                                          .floor(),
                                      (index) => const SizedBox(
                                            width: 3,
                                            height: 1.5,
                                            child: DecoratedBox(
                                              decoration: BoxDecoration(
                                                  color: Color(0xFFEEEEEE)),
                                            ),
                                          )),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 480, left: 25, right: 25),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: BarcodeWidget(
                        barcode: Barcode.code128(),
                        data: 'https://github.com/PearAmp',
                        drawText: false,
                        color: Styles.textColor,
                        width: double.infinity,
                        height: 70,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 580),
                    child: TicketView(ticket: ticketList[0]),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
