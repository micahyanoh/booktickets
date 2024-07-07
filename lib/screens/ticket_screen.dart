import 'package:booktickets/utils/app_info_list.dart';
import 'package:booktickets/widgets/column_layout.dart';
import 'package:booktickets/widgets/layout_builder_widget.dart';
import 'package:booktickets/widgets/ticket_view.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:barcode_widget/barcode_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: Stack(
          children: [
            ListView(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              children: [
                const Gap(40),
                Text(
                  'Tickets',
                  style: Styles.headLinestyle1,
                ),
                const Gap(20),
                const AppTicketTabs(
                    firstTab: 'Upcoming', secondTab: 'Previous'),
                const Gap(20),
                Container(
                  padding: const EdgeInsets.only(left: 15),
                  child: TicketView(
                    ticket: ticketList[0],
                    isColor: true,
                  ),
                ),
                const SizedBox(
                  height: 1,
                ),
                Container(
                  margin: const EdgeInsets.only(right: 16, left: 15),
                  color: Colors.white,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppColumnLayout(
                            firstText: 'Treasonous CM',
                            secondText: 'Passenger',
                            alignment: CrossAxisAlignment.start,
                          ),
                          AppColumnLayout(
                            firstText: '7818 - 99454',
                            secondText: 'Passport',
                            alignment: CrossAxisAlignment.end,
                          ),
                        ],
                      ),
                      const Gap(20),
                      const AppLayoutBuilderWidget(
                        isColor: true,
                        sections: 15,
                        width: 5,
                      ),
                      const Gap(20),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppColumnLayout(
                            firstText: 'JKI - 427A358',
                            secondText: 'Number of E-ticket',
                            alignment: CrossAxisAlignment.start,
                          ),
                          AppColumnLayout(
                            firstText: 'K1A2F7',
                            secondText: 'Booking code',
                            alignment: CrossAxisAlignment.end,
                          ),
                        ],
                      ),
                      const Gap(20),
                      const AppLayoutBuilderWidget(
                        isColor: true,
                        sections: 15,
                        width: 5,
                      ),
                      const Gap(20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/images/visa.png',
                                    scale: 8,
                                  ),
                                  Text(
                                    ' *** 7897',
                                    style: Styles.headLinestyle3,
                                  )
                                ],
                              ),
                              const Gap(5),
                              Text('Payment method',
                                  style: Styles.headLinestyle4)
                            ],
                          ),
                          const AppColumnLayout(
                            firstText: '\$368.99',
                            secondText: 'Price',
                            alignment: CrossAxisAlignment.end,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                /*
                bar code
              */
                const SizedBox(
                  height: 1,
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(21),
                          bottomLeft: Radius.circular(21))),
                  margin: const EdgeInsets.only(left: 15, right: 15),
                  padding: const EdgeInsets.only(top: 15, right: 15),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: BarcodeWidget(
                        barcode: Barcode.code128(),
                        data: 'https://pub.dev/packages/barcode_widget',
                        drawText: false,
                        color: Styles.textColor,
                        width: double.infinity,
                        height: 70,
                      ),
                    ),
                  ),
                ),
                const Gap(20),
                Container(
                  padding: const EdgeInsets.only(left: 15),
                  child: TicketView(
                    ticket: ticketList[0],
                  ),
                ),
              ],
            ),
            Positioned(
              left: 22,
              top: 295,
              child: Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Styles.textColor, width: 2)),
                child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: Styles.textColor,
                ),
              ),
            ),
            Positioned(
              right: 22,
              top: 295,
              child: Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Styles.textColor, width: 2)),
                child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: Styles.textColor,
                ),
              ),
            )
          ],
        ));
  }
}
