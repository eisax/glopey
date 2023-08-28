import 'package:flutter/material.dart';

Widget blueButtonWidget(
    String title, IconData icon, Color color, BuildContext context) {
  return SizedBox(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              icon,
              color: color,
              size: 20,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          title,
          style: TextStyle(
            color: Colors.blueGrey,
            fontSize: 10,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    ),
  );
}
