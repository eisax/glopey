import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

Widget transactionWidget(String type, BuildContext context) {
  Color? color;
  String? title;
  IconData? icon;
  String? symbol = "";

  switch (type) {
    case 'spending':
      color = Colors.red;
      title = "Spending";
      symbol = "-";
      icon = FontAwesomeIcons.creditCard;
      break;
    case 'income':
      color = Colors.green;
      title = "income";
      icon = FontAwesomeIcons.moneyBill;
      break;
    case 'bills':
      color = Colors.orange;
      title = "Bills";
      icon = FontAwesomeIcons.fileInvoiceDollar;
    case 'savings':
      color = Colors.blue;
      title = "Savings";
      icon = FontAwesomeIcons.moneyCheck;
      break;
    default:
      color = Colors.pink;
      title = 'error';
  }
  return Container(
    width: Get.width * 0.85,
    padding: const EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: color.withOpacity(0.2),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Icon(
                icon,
                color: color,
                size: 15,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: TextStyle(
                  color: color, fontSize: 15, fontWeight: FontWeight.bold),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "$symbol\$500",
              style: TextStyle(
                  color: color, fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              width: 5,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_forward_ios,
                size: 15,
                color: Colors.grey,
              ),
            )
          ],
        )
      ],
    ),
  );
}
