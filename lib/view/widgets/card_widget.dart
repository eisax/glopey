import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:gloyey/util/app_constants.dart';

Widget creditCardWidget(double height, double width, BuildContext context) {
  return Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
      border: Border.all(
        color: Colors.grey,
        width: 1,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.circular(20.0),
      gradient: const LinearGradient(
        colors: [
          AppConstants.mainColor,
          Colors.blueGrey,
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image.asset(
                'assets/image/chip.png',
                height: 40.0,
                width: 40.0,
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
          child: Text(
            '1234 5678 9012 3456',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
              letterSpacing: 2.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Kudah Ndhlovu',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 16.0,
                  letterSpacing: 1.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '02/23',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 16.0,
                  letterSpacing: 1.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'ZimPay',
                style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 16.0,
                    letterSpacing: 1.0,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
              const Text(
                '\$2000.00',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
