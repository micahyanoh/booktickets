import 'package:booktickets/utils/app_layout.dart';
import 'package:flutter/material.dart';

class AppTicketTabs extends StatelessWidget {
  const AppTicketTabs(
      {super.key, required this.firstTab, required this.secondTab});
  final String firstTab;
  final String secondTab;

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: const EdgeInsets.all(3.5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: const Color(0XFFF4F6FD),
        ),
        child: Row(
          children: [
            /* 
                                                airline tickets
                                                                                   */
            Container(
              padding: const EdgeInsets.symmetric(vertical: 7),
              width: size.width * .44,
              decoration: const BoxDecoration(
                borderRadius:
                    BorderRadius.horizontal(left: Radius.circular(50)),
                color: Colors.white,
              ),
              child: Center(child: Text(firstTab)),
            ),
            /*      
                                                  hotels 
                                                                                 */
            Container(
              padding: const EdgeInsets.symmetric(vertical: 7),
              width: size.width * .44,
              decoration: const BoxDecoration(
                borderRadius:
                    BorderRadius.horizontal(right: Radius.circular(50)),
                color: Colors.transparent,
              ),
              child: Center(child: Text(secondTab)),
            )
          ],
        ),
      ),
    );
  }
}
