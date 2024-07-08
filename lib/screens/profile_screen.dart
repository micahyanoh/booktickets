import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/column_layout.dart';
import 'package:booktickets/widgets/layout_builder_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const Gap(40),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 66,
                  width: 66,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: AssetImage("assets/images/ABNB.png")),
                  )),
              const Gap(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Book Tickets',
                    style: Styles.headLinestyle1,
                  ),
                  Text(
                    'New-York',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade500),
                  ),
                  const Gap(8),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: const Color(0XFFFEF4F3),
                    ),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0XFF526799),
                          ),
                          child: const Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        const Gap(8),
                        const Text(
                          'Premium status',
                          style: TextStyle(
                              color: Color(0XFF526799),
                              fontWeight: FontWeight.w600),
                        ),
                        const Gap(8)
                      ],
                    ),
                  )
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                      onTap: () {
                        print('tappping');
                      },
                      child: Text(
                        'Edit',
                        style: Styles.textStyle.copyWith(
                            color: Styles.primaryColor,
                            fontWeight: FontWeight.w300),
                      )),
                ],
              )
            ],
          ),
          const Gap(8),
          Divider(
            color: Colors.grey.shade300,
          ),
          const Gap(8),
          Stack(
            children: [
              Container(
                height: 90,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
              Positioned(
                right: -45,
                top: -48,
                child: Container(
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                      border: Border.all(
                          width: 18, color: const Color(0XFF264CD2))),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                        maxRadius: 25,
                        backgroundColor: Colors.white,
                        child: Icon(
                          FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                          color: Styles.primaryColor,
                          size: 27,
                        )),
                    const Gap(12),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "You've got a new reward",
                          style: Styles.headLinestyle3.copyWith(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        Text(
                          "     You have 95 flights in a year",
                          style: Styles.headLinestyle3.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 13),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          const Gap(25),
          Text(
            'Accumulated miles',
            style: Styles.headLinestyle2,
          ),
          const Gap(20),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Colors.white.withOpacity(0.6),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 10,
                      spreadRadius: 5)
                ]),
            child: Column(
              children: [
                const Gap(15),
                Text(
                  '569481',
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w600,
                      color: Styles.textColor),
                ),
                const Gap(20),
                Row(
                  children: [
                    Text(
                      'Miles accrued',
                      style: Styles.headLinestyle4.copyWith(fontSize: 16),
                    ),
                    const Spacer(),
                    Text(
                      '08 July 2024',
                      style: Styles.headLinestyle4.copyWith(fontSize: 16),
                    )
                  ],
                ),
                const Gap(4),
                Divider(
                  color: Colors.grey.shade300,
                ),
                const Gap(4),
                const Row(children: [
                  AppColumnLayout(
                    firstText: '23 042',
                    secondText: 'Miles',
                    alignment: CrossAxisAlignment.start,
                  ),
                  Spacer(),
                  AppColumnLayout(
                    firstText: 'Airline CO',
                    secondText: 'Received from',
                    alignment: CrossAxisAlignment.end,
                  )
                ]),
                const Gap(12),
                const AppLayoutBuilderWidget(
                  sections: 15,
                  isColor: true,
                ),
                const Gap(12),
                const Row(children: [
                  AppColumnLayout(
                    firstText: '25',
                    secondText: 'Miles',
                    alignment: CrossAxisAlignment.start,
                  ),
                  Spacer(),
                  AppColumnLayout(
                    firstText: 'Emirates',
                    secondText: 'Received from',
                    alignment: CrossAxisAlignment.end,
                  )
                ]),
                const Gap(12),
                const AppLayoutBuilderWidget(
                  sections: 15,
                  isColor: true,
                ),
                const Gap(12),
                const Row(children: [
                  AppColumnLayout(
                    firstText: '52 142',
                    secondText: 'Miles',
                    alignment: CrossAxisAlignment.start,
                  ),
                  Spacer(),
                  AppColumnLayout(
                    firstText: 'Kenya Airways',
                    secondText: 'Received from',
                    alignment: CrossAxisAlignment.end,
                  )
                ]),
              ],
            ),
          ),
          const Gap(25),
          InkWell(
            onTap: () {
              print('tappped');
            },
            child: Center(
              child: Text(
                'How to get more miles',
                style: Styles.textStyle.copyWith(
                    color: Styles.primaryColor, fontWeight: FontWeight.w500),
              ),
            ),
          )
        ],
      ),
    );
  }
}
